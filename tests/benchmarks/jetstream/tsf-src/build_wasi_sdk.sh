#!/bin/sh
/opt/wasi-sdk/bin/clang -O3 -z stack-size=1048576 -Wl,--initial-memory=52428800 \
    -Wl,--export=main \
    -Wl,--export=__heap_base,--export=__data_end \
    -I. -DTSF_BUILD_SYSTEM=1 \
    -Wl,--allow-undefined \
    -o tsf.wasm \
    tsf_asprintf.c\
    tsf_buffer.c\
    tsf_error.c\
    tsf_reflect.c\
    tsf_st.c\
    tsf_type.c\
    tsf_io.c\
    tsf_native.c\
    tsf_generator.c\
    tsf_st_typetable.c\
    tsf_parser.c\
    tsf_buf_writer.c\
    tsf_buf_reader.c\
    tsf_primitive.c\
    tsf_type_table.c\
    tsf_copier.c\
    tsf_destructor.c\
    tsf_gpc_code_gen.c\
    gpc_code_gen_util.c\
    gpc_threaded.c\
    gpc_intable.c\
    gpc_instruction.c\
    gpc_program.c\
    gpc_proto.c\
    gpc_stack_height.c\
    tsf_serial_in_man.c\
    tsf_serial_out_man.c\
    tsf_type_in_map.c\
    tsf_type_out_map.c\
    tsf_stream_file_input.c\
    tsf_stream_file_output.c\
    tsf_sort.c\
    tsf_version.c\
    tsf_named_type.c\
    tsf_io_utils.c\
    tsf_zip_attr.c\
    tsf_zip_reader.c\
    tsf_zip_writer.c\
    tsf_zip_abstract.c\
    tsf_limits.c\
    tsf_ra_type_man.c\
    tsf_adaptive_reader.c\
    tsf_sha1.c\
    tsf_sha1_writer.c\
    tsf_fsdb.c\
    tsf_fsdb_protocol.c\
    tsf_define_helpers.c\
    tsf_ir.c\
    tsf_ir_different.c\
    tsf_ir_speed.c

