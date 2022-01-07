; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_function_stub.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_function_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i8* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }

@client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"struct __frame_%s%s\0A{\0A\00", align 1
@prefix_client = common dso_local global i32 0, align 4
@indent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"__DECL_EXCEPTION_FRAME\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"MIDL_STUB_MESSAGE _StubMsg;\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s %s;\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"RPC_BINDING_HANDLE _Handle;\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"void *_p_%s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"static void __finally_%s%s(\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c" struct __frame_%s%s *__frame )\0A{\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"NdrFreeBuffer(&__frame->_StubMsg);\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"if (__frame->_Handle)\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"%s_unbind(__frame->%s, __frame->_Handle);\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"struct __frame_%s%s __f, * const __frame = &__f;\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"RPC_MESSAGE _RpcMessage;\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"__frame->_Handle = 0;\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"__frame->%s = %s;\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"__frame->_p_%s = &%s;\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"RpcExceptionInit( 0, __finally_%s%s );\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [15 x i8] c"RpcTryFinally\0A\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"NdrClientInitializeNew(&_RpcMessage, &__frame->_StubMsg, &%s_StubDesc, %d);\0A\00", align 1
@ATTR_IDEMPOTENT = common dso_local global i32 0, align 4
@ATTR_BROADCAST = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [48 x i8] c"_RpcMessage.RpcFlags = ( RPC_NCA_FLAGS_DEFAULT \00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"| RPC_NCA_FLAGS_IDEMPOTENT \00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"| RPC_NCA_FLAGS_BROADCAST \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c");\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"__frame->_Handle = %s;\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"__frame->_Handle = %s_bind(%s);\0A\00", align 1
@ATTR_CONTEXTHANDLE = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"if (%s%s != 0)\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"__frame->_Handle = NDRCContextBinding(%s%s);\0A\00", align 1
@ATTR_IN = common dso_local global i32 0, align 4
@ATTR_OUT = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"else\0A\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"RpcRaiseException(RPC_X_SS_IN_NULL_CONTEXT);\0A\00", align 1
@PASS_IN = common dso_local global i32 0, align 4
@PHASE_BUFFERSIZE = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [66 x i8] c"NdrGetBuffer(&__frame->_StubMsg, __frame->_StubMsg.BufferLength, \00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"__frame->_Handle);\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"%s__MIDL_AutoBindHandle);\0A\0A\00", align 1
@PHASE_MARSHAL = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [64 x i8] c"NdrSendReceive(&__frame->_StubMsg, __frame->_StubMsg.Buffer);\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"__frame->_StubMsg.BufferStart = _RpcMessage.Buffer;\0A\00", align 1
@.str.42 = private unnamed_addr constant [89 x i8] c"__frame->_StubMsg.BufferEnd = __frame->_StubMsg.BufferStart + _RpcMessage.BufferLength;\0A\00", align 1
@.str.43 = private unnamed_addr constant [87 x i8] c"if ((_RpcMessage.DataRepresentation & 0x0000FFFFUL) != NDR_LOCAL_DATA_REPRESENTATION)\0A\00", align 1
@.str.44 = private unnamed_addr constant [86 x i8] c"NdrConvert(&__frame->_StubMsg, (PFORMAT_STRING)&__MIDL_ProcFormatString.Format[%u]);\0A\00", align 1
@PASS_OUT = common dso_local global i32 0, align 4
@PHASE_UNMARSHAL = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [34 x i8] c"MIDL_memset(&%s, 0, sizeof(%s));\0A\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"%s = 0;\0A\00", align 1
@PASS_RETURN = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"RpcFinally\0A\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"__finally_%s%s( __frame );\0A\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"RpcEndFinally\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"return %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_24__*, i32, i32)* @write_function_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_function_stub(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %17 = call i32 @is_full_pointer_function(%struct.TYPE_24__* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_24__* @type_function_get_retval(i32 %20)
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %12, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %24 = call %struct.TYPE_24__* @get_func_handle_var(%struct.TYPE_26__* %22, %struct.TYPE_24__* %23, i8* %9, i8* %10)
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %13, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @is_void(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %34 = call i64 @is_interpreted_func(%struct.TYPE_26__* %32, %struct.TYPE_24__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %39 = call i32 @write_client_func_decl(%struct.TYPE_26__* %37, %struct.TYPE_24__* %38)
  %40 = load i32, i32* @client, align 4
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @write_client_call_routine(i32 %40, %struct.TYPE_26__* %41, %struct.TYPE_24__* %42, i8* %45, i32 %46)
  br label %468

48:                                               ; preds = %4
  %49 = load i32, i32* @prefix_client, align 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %51 = call i32 @get_name(%struct.TYPE_24__* %50)
  %52 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51)
  %53 = load i32, i32* @indent, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @indent, align 4
  %55 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %58 = icmp ne %struct.TYPE_24__* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %48
  %60 = load i8, i8* %9, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 129
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %65 = call %struct.TYPE_25__* @get_explicit_generic_handle_type(%struct.TYPE_24__* %64)
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %63, %59
  %73 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %48
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @decl_indirect(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %77, %74
  %89 = load i32, i32* @indent, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* @indent, align 4
  %91 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32, i32* @prefix_client, align 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %94 = call i32 @get_name(%struct.TYPE_24__* %93)
  %95 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %92, i32 %94)
  %96 = load i32, i32* @prefix_client, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %98 = call i32 @get_name(%struct.TYPE_24__* %97)
  %99 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %96, i32 %98)
  %100 = load i32, i32* @indent, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @indent, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %88
  %105 = load i32, i32* @client, align 4
  %106 = load i32, i32* @indent, align 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %108 = call i32 @write_full_pointer_free(i32 %105, i32 %106, %struct.TYPE_24__* %107)
  br label %109

109:                                              ; preds = %104, %88
  %110 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %111 = load i8, i8* %9, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 129
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load i32, i32* @client, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %117 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %118 = load i32, i32* @indent, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @indent, align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %121 = call %struct.TYPE_25__* @get_explicit_generic_handle_type(%struct.TYPE_24__* %120)
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %123, i32 %126)
  %128 = load i32, i32* @indent, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* @indent, align 4
  br label %130

130:                                              ; preds = %114, %109
  %131 = load i32, i32* @indent, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* @indent, align 4
  %133 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %136 = call i32 @write_client_func_decl(%struct.TYPE_26__* %134, %struct.TYPE_24__* %135)
  %137 = load i32, i32* @client, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %139 = load i32, i32* @indent, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* @indent, align 4
  %141 = load i32, i32* @prefix_client, align 4
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = call i32 @get_name(%struct.TYPE_24__* %142)
  %144 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32 %141, i32 %143)
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %130
  %148 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0))
  %149 = load i32, i32* @client, align 4
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @write_type_decl(i32 %149, i32 %152, i32 %155)
  %157 = load i32, i32* @client, align 4
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %159

159:                                              ; preds = %147, %130
  %160 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %162 = icmp ne %struct.TYPE_24__* %161, null
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %165 = load i8, i8* %9, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 129
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %168, %163
  br label %177

177:                                              ; preds = %176, %159
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %177
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @decl_indirect(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %189, i32 %192)
  br label %194

194:                                              ; preds = %186, %180, %177
  %195 = load i32, i32* @client, align 4
  %196 = call i32 (i32, i8*, ...) @fprintf(i32 %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %197 = load i32, i32* @prefix_client, align 4
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %199 = call i32 @get_name(%struct.TYPE_24__* %198)
  %200 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i32 %197, i32 %199)
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %194
  %204 = load i32, i32* @client, align 4
  %205 = load i32, i32* @indent, align 4
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %207 = load i32, i32* @FALSE, align 4
  %208 = call i32 @write_full_pointer_init(i32 %204, i32 %205, %struct.TYPE_24__* %206, i32 %207)
  br label %209

209:                                              ; preds = %203, %194
  %210 = load i32, i32* @client, align 4
  %211 = load i32, i32* @indent, align 4
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %213 = call i32 @write_pointer_checks(i32 %210, i32 %211, %struct.TYPE_24__* %212)
  %214 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %215 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %216 = load i32, i32* @indent, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* @indent, align 4
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.25, i64 0, i64 0), i8* %220, i32 %221)
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @ATTR_IDEMPOTENT, align 4
  %227 = call i64 @is_attr(i32 %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %209
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @ATTR_BROADCAST, align 4
  %234 = call i64 @is_attr(i32 %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %260

236:                                              ; preds = %229, %209
  %237 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.26, i64 0, i64 0))
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @ATTR_IDEMPOTENT, align 4
  %242 = call i64 @is_attr(i32 %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %236
  %245 = load i32, i32* @client, align 4
  %246 = call i32 (i32, i8*, ...) @fprintf(i32 %245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0))
  br label %247

247:                                              ; preds = %244, %236
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @ATTR_BROADCAST, align 4
  %252 = call i64 @is_attr(i32 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %247
  %255 = load i32, i32* @client, align 4
  %256 = call i32 (i32, i8*, ...) @fprintf(i32 %255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %247
  %258 = load i32, i32* @client, align 4
  %259 = call i32 (i32, i8*, ...) @fprintf(i32 %258, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  br label %260

260:                                              ; preds = %257, %229
  %261 = load i8, i8* %9, align 1
  %262 = zext i8 %261 to i32
  switch i32 %262, label %344 [
    i32 128, label %263
    i32 129, label %270
    i32 130, label %281
    i32 0, label %333
  ]

263:                                              ; preds = %260
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* @client, align 4
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %344

270:                                              ; preds = %260
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %272 = call %struct.TYPE_25__* @get_explicit_generic_handle_type(%struct.TYPE_24__* %271)
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0), i32 %274, i32 %277)
  %279 = load i32, i32* @client, align 4
  %280 = call i32 (i32, i8*, ...) @fprintf(i32 %279, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %344

281:                                              ; preds = %260
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @ATTR_CONTEXTHANDLE, align 4
  %286 = call i32 @is_aliaschain_attr(i32 %284, i32 %285)
  %287 = icmp ne i32 %286, 0
  %288 = xor i1 %287, true
  %289 = zext i1 %288 to i32
  store i32 %289, i32* %15, align 4
  %290 = load i32, i32* %15, align 4
  %291 = icmp ne i32 %290, 0
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* %293, i32 %296)
  %298 = load i32, i32* @indent, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* @indent, align 4
  %300 = load i32, i32* %15, align 4
  %301 = icmp ne i32 %300, 0
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i64 0, i64 0), i8* %303, i32 %306)
  %308 = load i32, i32* @indent, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* @indent, align 4
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @ATTR_IN, align 4
  %314 = call i64 @is_attr(i32 %312, i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %330

316:                                              ; preds = %281
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @ATTR_OUT, align 4
  %321 = call i64 @is_attr(i32 %319, i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %330, label %323

323:                                              ; preds = %316
  %324 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  %325 = load i32, i32* @indent, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* @indent, align 4
  %327 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0))
  %328 = load i32, i32* @indent, align 4
  %329 = add nsw i32 %328, -1
  store i32 %329, i32* @indent, align 4
  br label %330

330:                                              ; preds = %323, %316, %281
  %331 = load i32, i32* @client, align 4
  %332 = call i32 (i32, i8*, ...) @fprintf(i32 %331, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %344

333:                                              ; preds = %260
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %335 = icmp ne %struct.TYPE_24__* %334, null
  br i1 %335, label %336, label %343

336:                                              ; preds = %333
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 %339)
  %341 = load i32, i32* @client, align 4
  %342 = call i32 (i32, i8*, ...) @fprintf(i32 %341, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %343

343:                                              ; preds = %336, %333
  br label %344

344:                                              ; preds = %260, %343, %330, %270, %263
  %345 = load i32, i32* @client, align 4
  %346 = load i32, i32* @indent, align 4
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %348 = load i32, i32* @PASS_IN, align 4
  %349 = load i32, i32* @PHASE_BUFFERSIZE, align 4
  %350 = call i32 @write_remoting_arguments(i32 %345, i32 %346, %struct.TYPE_24__* %347, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), i32 %348, i32 %349)
  %351 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.37, i64 0, i64 0))
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %353 = icmp ne %struct.TYPE_24__* %352, null
  br i1 %353, label %354, label %357

354:                                              ; preds = %344
  %355 = load i32, i32* @client, align 4
  %356 = call i32 (i32, i8*, ...) @fprintf(i32 %355, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0))
  br label %363

357:                                              ; preds = %344
  %358 = load i32, i32* @client, align 4
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 (i32, i8*, ...) @fprintf(i32 %358, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i8* %361)
  br label %363

363:                                              ; preds = %357, %354
  %364 = load i32, i32* @client, align 4
  %365 = load i32, i32* @indent, align 4
  %366 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %367 = load i32, i32* @PASS_IN, align 4
  %368 = load i32, i32* @PHASE_MARSHAL, align 4
  %369 = call i32 @write_remoting_arguments(i32 %364, i32 %365, %struct.TYPE_24__* %366, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), i32 %367, i32 %368)
  %370 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.40, i64 0, i64 0))
  %371 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i64 0, i64 0))
  %372 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.42, i64 0, i64 0))
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %374 = call i64 @has_out_arg_or_return(%struct.TYPE_24__* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %386

376:                                              ; preds = %363
  %377 = load i32, i32* @client, align 4
  %378 = call i32 (i32, i8*, ...) @fprintf(i32 %377, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %379 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.43, i64 0, i64 0))
  %380 = load i32, i32* @indent, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* @indent, align 4
  %382 = load i32, i32* %8, align 4
  %383 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.44, i64 0, i64 0), i32 %382)
  %384 = load i32, i32* @indent, align 4
  %385 = add nsw i32 %384, -1
  store i32 %385, i32* @indent, align 4
  br label %386

386:                                              ; preds = %376, %363
  %387 = load i32, i32* @client, align 4
  %388 = call i32 (i32, i8*, ...) @fprintf(i32 %387, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %389 = load i32, i32* @client, align 4
  %390 = load i32, i32* @indent, align 4
  %391 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %392 = load i32, i32* @PASS_OUT, align 4
  %393 = load i32, i32* @PHASE_UNMARSHAL, align 4
  %394 = call i32 @write_remoting_arguments(i32 %389, i32 %390, %struct.TYPE_24__* %391, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), i32 %392, i32 %393)
  %395 = load i32, i32* %14, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %436

397:                                              ; preds = %386
  %398 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = call i64 @decl_indirect(i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %411

403:                                              ; preds = %397
  %404 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %405 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0), i32 %406, i32 %409)
  br label %429

411:                                              ; preds = %397
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = call i64 @is_ptr(i32 %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %423, label %417

417:                                              ; preds = %411
  %418 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %419 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = call i64 @is_array(i32 %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %417, %411
  %424 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %425 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i32 %426)
  br label %428

428:                                              ; preds = %423, %417
  br label %429

429:                                              ; preds = %428, %403
  %430 = load i32, i32* @client, align 4
  %431 = load i32, i32* @indent, align 4
  %432 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %433 = load i32, i32* @PASS_RETURN, align 4
  %434 = load i32, i32* @PHASE_UNMARSHAL, align 4
  %435 = call i32 @write_remoting_arguments(i32 %430, i32 %431, %struct.TYPE_24__* %432, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), i32 %433, i32 %434)
  br label %436

436:                                              ; preds = %429, %386
  %437 = load i32, i32* @indent, align 4
  %438 = add nsw i32 %437, -1
  store i32 %438, i32* @indent, align 4
  %439 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0))
  %440 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0))
  %441 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %442 = load i32, i32* @indent, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* @indent, align 4
  %444 = load i32, i32* @prefix_client, align 4
  %445 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %446 = call i32 @get_name(%struct.TYPE_24__* %445)
  %447 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0), i32 %444, i32 %446)
  %448 = load i32, i32* @indent, align 4
  %449 = add nsw i32 %448, -1
  store i32 %449, i32* @indent, align 4
  %450 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0))
  %451 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0))
  %452 = load i32, i32* %14, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %461

454:                                              ; preds = %436
  %455 = load i32, i32* @client, align 4
  %456 = call i32 (i32, i8*, ...) @fprintf(i32 %455, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %457 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %458 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 %459)
  br label %461

461:                                              ; preds = %454, %436
  %462 = load i32, i32* @indent, align 4
  %463 = add nsw i32 %462, -1
  store i32 %463, i32* @indent, align 4
  %464 = load i32, i32* @client, align 4
  %465 = call i32 (i32, i8*, ...) @fprintf(i32 %464, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0))
  %466 = load i32, i32* @client, align 4
  %467 = call i32 (i32, i8*, ...) @fprintf(i32 %466, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %468

468:                                              ; preds = %461, %36
  ret void
}

declare dso_local i32 @is_full_pointer_function(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @type_function_get_retval(i32) #1

declare dso_local %struct.TYPE_24__* @get_func_handle_var(%struct.TYPE_26__*, %struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @is_void(i32) #1

declare dso_local i64 @is_interpreted_func(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @write_client_func_decl(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @write_client_call_routine(i32, %struct.TYPE_26__*, %struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @print_client(i8*, ...) #1

declare dso_local i32 @get_name(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @get_explicit_generic_handle_type(%struct.TYPE_24__*) #1

declare dso_local i64 @decl_indirect(i32) #1

declare dso_local i32 @write_full_pointer_free(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @write_type_decl(i32, i32, i32) #1

declare dso_local i32 @write_full_pointer_init(i32, i32, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @write_pointer_checks(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local i32 @is_aliaschain_attr(i32, i32) #1

declare dso_local i32 @write_remoting_arguments(i32, i32, %struct.TYPE_24__*, i8*, i32, i32) #1

declare dso_local i64 @has_out_arg_or_return(%struct.TYPE_24__*) #1

declare dso_local i64 @is_ptr(i32) #1

declare dso_local i64 @is_array(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
