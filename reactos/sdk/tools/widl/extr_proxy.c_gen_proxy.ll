; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_proxy.c_gen_proxy.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_proxy.c_gen_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_26__*, i32, i32 }
%struct.TYPE_26__ = type { i32 }

@ATTR_CALLCONV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"STDMETHODCALLTYPE\00", align 1
@indent = common dso_local global i64 0, align 8
@MODE_Oif = common dso_local global i64 0, align 8
@proxy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c" %s %s_%s_Proxy(\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"static void __finally_%s_%s_Proxy( struct __proxy_frame *__frame )\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"NdrProxyFreeBuffer( __frame->This, &__frame->_StubMsg );\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"struct __proxy_frame __f, * const __frame = &__f;\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"RPC_MESSAGE _RpcMessage;\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"void *_p_%s = &%s;\0A\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"RpcExceptionInit( __proxy_filter, __finally_%s_%s_Proxy );\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"__frame->This = This;\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"RpcTryExcept\0A\00", align 1
@.str.18 = private unnamed_addr constant [83 x i8] c"NdrProxyInitialize(This, &_RpcMessage, &__frame->_StubMsg, &Object_StubDesc, %d);\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"RpcTryFinally\0A\00", align 1
@PASS_IN = common dso_local global i32 0, align 4
@PHASE_BUFFERSIZE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [46 x i8] c"NdrProxyGetBuffer(This, &__frame->_StubMsg);\0A\00", align 1
@PHASE_MARSHAL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [48 x i8] c"NdrProxySendReceive(This, &__frame->_StubMsg);\0A\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"__frame->_StubMsg.BufferStart = _RpcMessage.Buffer;\0A\00", align 1
@.str.23 = private unnamed_addr constant [92 x i8] c"__frame->_StubMsg.BufferEnd   = __frame->_StubMsg.BufferStart + _RpcMessage.BufferLength;\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [81 x i8] c"if ((_RpcMessage.DataRepresentation & 0xffff) != NDR_LOCAL_DATA_REPRESENTATION)\0A\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"NdrConvert( &__frame->_StubMsg, &__MIDL_ProcFormatString.Format[%u]);\0A\00", align 1
@PASS_OUT = common dso_local global i32 0, align 4
@PHASE_UNMARSHAL = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [34 x i8] c"MIDL_memset(&%s, 0, sizeof(%s));\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%s = 0;\0A\00", align 1
@PASS_RETURN = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"RpcFinally\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"__finally_%s_%s_Proxy( __frame );\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"RpcEndFinally\0A\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"RpcExcept(__frame->_StubMsg.dwStubPhase != PROXY_SENDRECEIVE)\0A\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"_RetVal = NdrProxyErrorHandler(RpcExceptionCode());\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"RpcEndExcept\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"return _RetVal;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32)* @gen_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_proxy(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %17 = call %struct.TYPE_24__* @type_function_get_retval(%struct.TYPE_26__* %16)
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %9, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %21 = call i32 @is_void(%struct.TYPE_26__* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = call i32 @is_full_pointer_function(%struct.TYPE_24__* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATTR_CALLCONV, align 4
  %33 = call i8* @get_attrp(i32 %31, i32 %32)
  store i8* %33, i8** %12, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %37 = call i32* @type_get_function_args(%struct.TYPE_26__* %36)
  store i32* %37, i32** %13, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %41

41:                                               ; preds = %40, %4
  store i64 0, i64* @indent, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %44 = call i64 @is_interpreted_func(%struct.TYPE_25__* %42, %struct.TYPE_24__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %83

46:                                               ; preds = %41
  %47 = call i64 (...) @get_stub_mode()
  %48 = load i64, i64* @MODE_Oif, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @is_callas(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %322

57:                                               ; preds = %50, %46
  %58 = load i32, i32* @proxy, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %60, align 8
  %62 = call i32 @write_type_decl_left(i32 %58, %struct.TYPE_26__* %61)
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %68 = call i32 @get_name(%struct.TYPE_24__* %67)
  %69 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %66, i32 %68)
  %70 = load i32, i32* @proxy, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TRUE, align 4
  %76 = call i32 @write_args(i32 %70, i32* %71, i32 %74, i32 1, i32 %75)
  %77 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @proxy, align 4
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @write_client_call_routine(i32 %78, %struct.TYPE_25__* %79, %struct.TYPE_24__* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %322

83:                                               ; preds = %41
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %88 = call i32 @get_name(%struct.TYPE_24__* %87)
  %89 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %88)
  %90 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i64, i64* @indent, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* @indent, align 8
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %83
  %96 = load i32, i32* @proxy, align 4
  %97 = load i64, i64* @indent, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %99 = call i32 @write_full_pointer_free(i32 %96, i64 %97, %struct.TYPE_24__* %98)
  br label %100

100:                                              ; preds = %95, %83
  %101 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i64, i64* @indent, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* @indent, align 8
  %104 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %105 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i32, i32* @proxy, align 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %108, align 8
  %110 = call i32 @write_type_decl_left(i32 %106, %struct.TYPE_26__* %109)
  %111 = load i8*, i8** %12, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %116 = call i32 @get_name(%struct.TYPE_24__* %115)
  %117 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %111, i32 %114, i32 %116)
  %118 = load i32, i32* @proxy, align 4
  %119 = load i32*, i32** %13, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TRUE, align 4
  %124 = call i32 @write_args(i32 %118, i32* %119, i32 %122, i32 1, i32 %123)
  %125 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %126 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %127 = load i64, i64* @indent, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* @indent, align 8
  %129 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %100
  %133 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %134 = load i32, i32* @proxy, align 4
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %136, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @write_type_decl(i32 %134, %struct.TYPE_26__* %137, i32 %140)
  %142 = load i32, i32* @proxy, align 4
  %143 = call i32 @fprintf(i32 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %144

144:                                              ; preds = %132, %100
  %145 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = call i64 @decl_indirect(%struct.TYPE_26__* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %148
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %154, %148
  br label %163

163:                                              ; preds = %162, %144
  %164 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %169 = call i32 @get_name(%struct.TYPE_24__* %168)
  %170 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0), i32 %167, i32 %169)
  %171 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %163
  %175 = load i32, i32* @proxy, align 4
  %176 = load i64, i64* @indent, align 8
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %178 = load i32, i32* @FALSE, align 4
  %179 = call i32 @write_full_pointer_init(i32 %175, i64 %176, %struct.TYPE_24__* %177, i32 %178)
  br label %180

180:                                              ; preds = %174, %163
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %182, align 8
  %184 = call i32* @type_get_function_args(%struct.TYPE_26__* %183)
  %185 = call i32 @clear_output_vars(i32* %184)
  %186 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %187 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %188 = load i64, i64* @indent, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* @indent, align 8
  %190 = load i32, i32* %7, align 4
  %191 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.18, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @proxy, align 4
  %193 = load i64, i64* @indent, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %195 = call i32 @write_pointer_checks(i32 %192, i64 %193, %struct.TYPE_24__* %194)
  %196 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %197 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %198 = load i64, i64* @indent, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* @indent, align 8
  %200 = load i32, i32* @proxy, align 4
  %201 = load i64, i64* @indent, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %203 = load i32, i32* @PASS_IN, align 4
  %204 = load i32, i32* @PHASE_BUFFERSIZE, align 4
  %205 = call i32 @write_remoting_arguments(i32 %200, i64 %201, %struct.TYPE_24__* %202, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %203, i32 %204)
  %206 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0))
  %207 = load i32, i32* @proxy, align 4
  %208 = load i64, i64* @indent, align 8
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %210 = load i32, i32* @PASS_IN, align 4
  %211 = load i32, i32* @PHASE_MARSHAL, align 4
  %212 = call i32 @write_remoting_arguments(i32 %207, i64 %208, %struct.TYPE_24__* %209, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %210, i32 %211)
  %213 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0))
  %214 = load i32, i32* @proxy, align 4
  %215 = call i32 @fprintf(i32 %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %216 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i64 0, i64 0))
  %217 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.23, i64 0, i64 0))
  %218 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.24, i64 0, i64 0))
  %219 = load i64, i64* @indent, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* @indent, align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 %221)
  %223 = load i64, i64* @indent, align 8
  %224 = add nsw i64 %223, -1
  store i64 %224, i64* @indent, align 8
  %225 = load i32, i32* @proxy, align 4
  %226 = call i32 @fprintf(i32 %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %227 = load i32, i32* @proxy, align 4
  %228 = load i64, i64* @indent, align 8
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %230 = load i32, i32* @PASS_OUT, align 4
  %231 = load i32, i32* @PHASE_UNMARSHAL, align 4
  %232 = call i32 @write_remoting_arguments(i32 %227, i64 %228, %struct.TYPE_24__* %229, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %230, i32 %231)
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %274

235:                                              ; preds = %180
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %237, align 8
  %239 = call i64 @decl_indirect(%struct.TYPE_26__* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %235
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i32 %244, i32 %247)
  br label %267

249:                                              ; preds = %235
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %251, align 8
  %253 = call i64 @is_ptr(%struct.TYPE_26__* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %249
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %257, align 8
  %259 = call i64 @is_array(%struct.TYPE_26__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %255, %249
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %264)
  br label %266

266:                                              ; preds = %261, %255
  br label %267

267:                                              ; preds = %266, %241
  %268 = load i32, i32* @proxy, align 4
  %269 = load i64, i64* @indent, align 8
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %271 = load i32, i32* @PASS_RETURN, align 4
  %272 = load i32, i32* @PHASE_UNMARSHAL, align 4
  %273 = call i32 @write_remoting_arguments(i32 %268, i64 %269, %struct.TYPE_24__* %270, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %267, %180
  %275 = load i64, i64* @indent, align 8
  %276 = add nsw i64 %275, -1
  store i64 %276, i64* @indent, align 8
  %277 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %278 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0))
  %279 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %280 = load i64, i64* @indent, align 8
  %281 = add nsw i64 %280, 1
  store i64 %281, i64* @indent, align 8
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %286 = call i32 @get_name(%struct.TYPE_24__* %285)
  %287 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i32 %284, i32 %286)
  %288 = load i64, i64* @indent, align 8
  %289 = add nsw i64 %288, -1
  store i64 %289, i64* @indent, align 8
  %290 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %291 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %292 = load i64, i64* @indent, align 8
  %293 = add nsw i64 %292, -1
  store i64 %293, i64* @indent, align 8
  %294 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %295 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.31, i64 0, i64 0))
  %296 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %297 = load i32, i32* %10, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %274
  %300 = load i64, i64* @indent, align 8
  %301 = add nsw i64 %300, 1
  store i64 %301, i64* @indent, align 8
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %303, align 8
  %305 = call i32* @type_get_function_args(%struct.TYPE_26__* %304)
  %306 = call i32 @proxy_free_variables(i32* %305, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %307 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i64 0, i64 0))
  %308 = load i64, i64* @indent, align 8
  %309 = add nsw i64 %308, -1
  store i64 %309, i64* @indent, align 8
  br label %310

310:                                              ; preds = %299, %274
  %311 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %312 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0))
  %313 = load i32, i32* %10, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  br label %317

317:                                              ; preds = %315, %310
  %318 = load i64, i64* @indent, align 8
  %319 = add nsw i64 %318, -1
  store i64 %319, i64* @indent, align 8
  %320 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %321 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %322

322:                                              ; preds = %317, %57, %56
  ret void
}

declare dso_local %struct.TYPE_24__* @type_function_get_retval(%struct.TYPE_26__*) #1

declare dso_local i32 @is_void(%struct.TYPE_26__*) #1

declare dso_local i32 @is_full_pointer_function(%struct.TYPE_24__*) #1

declare dso_local i8* @get_attrp(i32, i32) #1

declare dso_local i32* @type_get_function_args(%struct.TYPE_26__*) #1

declare dso_local i64 @is_interpreted_func(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i64 @get_stub_mode(...) #1

declare dso_local i32 @is_callas(i32) #1

declare dso_local i32 @write_type_decl_left(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @print_proxy(i8*, ...) #1

declare dso_local i32 @get_name(%struct.TYPE_24__*) #1

declare dso_local i32 @write_args(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @write_client_call_routine(i32, %struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @write_full_pointer_free(i32, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @write_type_decl(i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @decl_indirect(%struct.TYPE_26__*) #1

declare dso_local i32 @write_full_pointer_init(i32, i64, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @clear_output_vars(i32*) #1

declare dso_local i32 @write_pointer_checks(i32, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @write_remoting_arguments(i32, i64, %struct.TYPE_24__*, i8*, i32, i32) #1

declare dso_local i64 @is_ptr(%struct.TYPE_26__*) #1

declare dso_local i64 @is_array(%struct.TYPE_26__*) #1

declare dso_local i32 @proxy_free_variables(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
