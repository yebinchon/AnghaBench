#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

void FUNC1( FILE *file )
{
    FUNC0( file, "#ifndef USE_COMPILER_EXCEPTIONS\n");
    FUNC0( file, "\n");
    FUNC0( file, "#include \"wine/exception.h\"\n");
    FUNC0( file, "#undef RpcTryExcept\n");
    FUNC0( file, "#undef RpcExcept\n");
    FUNC0( file, "#undef RpcEndExcept\n");
    FUNC0( file, "#undef RpcTryFinally\n");
    FUNC0( file, "#undef RpcFinally\n");
    FUNC0( file, "#undef RpcEndFinally\n");
    FUNC0( file, "#undef RpcExceptionCode\n");
    FUNC0( file, "#undef RpcAbnormalTermination\n");
    FUNC0( file, "\n");
    FUNC0( file, "struct __exception_frame;\n");
    FUNC0( file, "typedef int (*__filter_func)(struct __exception_frame *);\n");
    FUNC0( file, "typedef void (*__finally_func)(struct __exception_frame *);\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define __DECL_EXCEPTION_FRAME \\\n");
    FUNC0( file, "    EXCEPTION_REGISTRATION_RECORD frame; \\\n");
    FUNC0( file, "    __filter_func                 filter; \\\n");
    FUNC0( file, "    __finally_func                finally; \\\n");
    FUNC0( file, "    sigjmp_buf                    jmp; \\\n");
    FUNC0( file, "    DWORD                         code; \\\n");
    FUNC0( file, "    unsigned char                 abnormal_termination; \\\n");
    FUNC0( file, "    unsigned char                 filter_level; \\\n");
    FUNC0( file, "    unsigned char                 finally_level;\n");
    FUNC0( file, "\n");
    FUNC0( file, "struct __exception_frame\n{\n");
    FUNC0( file, "    __DECL_EXCEPTION_FRAME\n");
    FUNC0( file, "};\n");
    FUNC0( file, "\n");
    FUNC0( file, "static inline void __widl_unwind_target(void)\n" );
    FUNC0( file, "{\n");
    FUNC0( file, "    struct __exception_frame *exc_frame = (struct __exception_frame *)__wine_get_frame();\n" );
    FUNC0( file, "    if (exc_frame->finally_level > exc_frame->filter_level)\n" );
    FUNC0( file, "    {\n");
    FUNC0( file, "        exc_frame->abnormal_termination = 1;\n");
    FUNC0( file, "        exc_frame->finally( exc_frame );\n");
    FUNC0( file, "        __wine_pop_frame( &exc_frame->frame );\n");
    FUNC0( file, "    }\n");
    FUNC0( file, "    exc_frame->filter_level = 0;\n");
    FUNC0( file, "    siglongjmp( exc_frame->jmp, 1 );\n");
    FUNC0( file, "}\n");
    FUNC0( file, "\n");
    FUNC0( file, "static DWORD __widl_exception_handler( EXCEPTION_RECORD *record,\n");
    FUNC0( file, "                                       EXCEPTION_REGISTRATION_RECORD *frame,\n");
    FUNC0( file, "                                       CONTEXT *context,\n");
    FUNC0( file, "                                       EXCEPTION_REGISTRATION_RECORD **pdispatcher )\n");
    FUNC0( file, "{\n");
    FUNC0( file, "    struct __exception_frame *exc_frame = (struct __exception_frame *)frame;\n");
    FUNC0( file, "\n");
    FUNC0( file, "    if (record->ExceptionFlags & (EH_UNWINDING | EH_EXIT_UNWIND | EH_NESTED_CALL))\n");
    FUNC0( file, "    {\n" );
    FUNC0( file, "        if (exc_frame->finally_level && (record->ExceptionFlags & (EH_UNWINDING | EH_EXIT_UNWIND)))\n");
    FUNC0( file, "        {\n" );
    FUNC0( file, "            exc_frame->abnormal_termination = 1;\n");
    FUNC0( file, "            exc_frame->finally( exc_frame );\n");
    FUNC0( file, "        }\n" );
    FUNC0( file, "        return ExceptionContinueSearch;\n");
    FUNC0( file, "    }\n" );
    FUNC0( file, "    exc_frame->code = record->ExceptionCode;\n");
    FUNC0( file, "    if (exc_frame->filter_level && exc_frame->filter( exc_frame ) == EXCEPTION_EXECUTE_HANDLER)\n" );
    FUNC0( file, "        __wine_rtl_unwind( frame, record, __widl_unwind_target );\n");
    FUNC0( file, "    return ExceptionContinueSearch;\n");
    FUNC0( file, "}\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define RpcTryExcept \\\n");
    FUNC0( file, "    if (!sigsetjmp( __frame->jmp, 0 )) \\\n");
    FUNC0( file, "    { \\\n");
    FUNC0( file, "        if (!__frame->finally_level) \\\n" );
    FUNC0( file, "            __wine_push_frame( &__frame->frame ); \\\n");
    FUNC0( file, "        __frame->filter_level = __frame->finally_level + 1;\n" );
    FUNC0( file, "\n");
    FUNC0( file, "#define RpcExcept(expr) \\\n");
    FUNC0( file, "        if (!__frame->finally_level) \\\n" );
    FUNC0( file, "            __wine_pop_frame( &__frame->frame ); \\\n");
    FUNC0( file, "        __frame->filter_level = 0; \\\n" );
    FUNC0( file, "    } \\\n");
    FUNC0( file, "    else \\\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define RpcEndExcept\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define RpcExceptionCode() (__frame->code)\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define RpcTryFinally \\\n");
    FUNC0( file, "    if (!__frame->filter_level) \\\n");
    FUNC0( file, "        __wine_push_frame( &__frame->frame ); \\\n");
    FUNC0( file, "    __frame->finally_level = __frame->filter_level + 1;\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define RpcFinally \\\n");
    FUNC0( file, "    if (!__frame->filter_level) \\\n");
    FUNC0( file, "        __wine_pop_frame( &__frame->frame ); \\\n");
    FUNC0( file, "    __frame->finally_level = 0;\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define RpcEndFinally\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define RpcAbnormalTermination() (__frame->abnormal_termination)\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define RpcExceptionInit(filter_func,finally_func) \\\n");
    FUNC0( file, "    do { \\\n");
    FUNC0( file, "        __frame->frame.Handler = __widl_exception_handler; \\\n");
    FUNC0( file, "        __frame->filter = (__filter_func)(filter_func); \\\n" );
    FUNC0( file, "        __frame->finally = (__finally_func)(finally_func); \\\n");
    FUNC0( file, "        __frame->abnormal_termination = 0; \\\n");
    FUNC0( file, "        __frame->filter_level = 0; \\\n");
    FUNC0( file, "        __frame->finally_level = 0; \\\n");
    FUNC0( file, "    } while (0)\n");
    FUNC0( file, "\n");
    FUNC0( file, "#else /* USE_COMPILER_EXCEPTIONS */\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define RpcExceptionInit(filter_func,finally_func) \\\n");
    FUNC0( file, "    do { (void)(filter_func); } while(0)\n");
    FUNC0( file, "\n");
    FUNC0( file, "#define __DECL_EXCEPTION_FRAME \\\n");
    FUNC0( file, "    DWORD code;\n");
    FUNC0( file, "\n");
    FUNC0( file, "#endif /* USE_COMPILER_EXCEPTIONS */\n");
}