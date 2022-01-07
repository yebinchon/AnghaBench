; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_server.c_process_bind_packet_no_send.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_server.c_process_bind_packet_no_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_19__, i32* }
%struct.TYPE_21__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [65 x i8] c"inconsistent data in packet - packet length %d, num elements %d\0A\00", align 1
@RPC_S_INVALID_BOUND = common dso_local global i64 0, align 8
@RPC_MIN_PACKET_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"packet size less than min size, or active interface syntax guid non-null\0A\00", align 1
@RPC_S_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"accepting bind request on connection %p for %s\0A\00", align 1
@RESULT_ACCEPT = common dso_local global i8* null, align 8
@REASON_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [85 x i8] c"not accepting bind request on connection %p for %s - no transfer syntaxes supported\0A\00", align 1
@RESULT_PROVIDER_REJECTION = common dso_local global i8* null, align 8
@REASON_TRANSFER_SYNTAXES_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [84 x i8] c"not accepting bind request on connection %p for %s - abstract syntax not supported\0A\00", align 1
@REASON_ABSTRACT_SYNTAX_NOT_SUPPORTED = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@NDR_LOCAL_DATA_REPRESENTATION = common dso_local global i32 0, align 4
@RPC_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_25__*, i8*, i64, i32**, i8**, i64*)* @process_bind_packet_no_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @process_bind_packet_no_send(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1, %struct.TYPE_25__* %2, i8* %3, i64 %4, i32** %5, i8** %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32** %5, i32*** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i64* %7, i64** %17, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %19, align 8
  br label %27

27:                                               ; preds = %79, %8
  %28 = load i32, i32* %20, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %27
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %35 = bitcast %struct.TYPE_23__* %34 to i8*
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = bitcast %struct.TYPE_23__* %38 to i8*
  %40 = ptrtoint i8* %35 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp sgt i64 %42, %46
  br i1 %47, label %69, label %48

48:                                               ; preds = %33
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = bitcast i32* %55 to i8*
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = bitcast %struct.TYPE_23__* %59 to i8*
  %61 = ptrtoint i8* %56 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = icmp sgt i64 %63, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %48, %33
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load i64, i64* @RPC_S_INVALID_BOUND, align 8
  store i64 %77, i64* %9, align 8
  br label %375

78:                                               ; preds = %48
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %20, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %20, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = bitcast i32* %88 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %89, %struct.TYPE_23__** %19, align 8
  br label %27

90:                                               ; preds = %27
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RPC_MIN_PACKET_SIZE, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = call i32 @UuidIsNil(i32* %99, i64* %18)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = icmp ne %struct.TYPE_20__* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %96, %90
  %108 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i64, i64* @RPC_S_INVALID_BOUND, align 8
  store i64 %109, i64* %9, align 8
  br label %375

110:                                              ; preds = %102
  %111 = call i32 (...) @GetProcessHeap()
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = zext i32 %114 to i64
  %116 = mul i64 %115, 16
  %117 = trunc i64 %116 to i32
  %118 = call %struct.TYPE_21__* @HeapAlloc(i32 %111, i32 0, i32 %117)
  store %struct.TYPE_21__* %118, %struct.TYPE_21__** %21, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %120 = icmp ne %struct.TYPE_21__* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %110
  %122 = load i64, i64* @RPC_S_OUT_OF_RESOURCES, align 8
  store i64 %122, i64* %9, align 8
  br label %375

123:                                              ; preds = %110
  store i32 0, i32* %20, align 4
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %125, align 8
  store %struct.TYPE_23__* %126, %struct.TYPE_23__** %19, align 8
  br label %127

127:                                              ; preds = %266, %123
  %128 = load i32, i32* %20, align 4
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ult i32 %128, %131
  br i1 %132, label %133, label %277

133:                                              ; preds = %127
  store i32* null, i32** %22, align 8
  store i32 0, i32* %23, align 4
  br label %134

134:                                              ; preds = %161, %133
  %135 = load i32*, i32** %22, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %23, align 4
  %139 = zext i32 %138 to i64
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ult i64 %139, %142
  br label %144

144:                                              ; preds = %137, %134
  %145 = phi i1 [ false, %134 ], [ %143, %137 ]
  br i1 %145, label %146, label %164

146:                                              ; preds = %144
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %23, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* @FALSE, align 4
  %156 = call i32* @RPCRT4_find_interface(i32* null, %struct.TYPE_19__* %148, i32* %154, i32 %155)
  store i32* %156, i32** %22, align 8
  %157 = load i32*, i32** %22, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %146
  br label %164

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %23, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %23, align 4
  br label %134

164:                                              ; preds = %159, %144
  %165 = load i32*, i32** %22, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %206

167:                                              ; preds = %164
  %168 = load i32*, i32** %22, align 8
  %169 = call i32 @RPCRT4_release_server_interface(i32* %168)
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = call i32 @debugstr_guid(i32* %173)
  %175 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_24__* %170, i32 %174)
  %176 = load i8*, i8** @RESULT_ACCEPT, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %178 = load i32, i32* %20, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 2
  store i8* %176, i8** %181, align 8
  %182 = load i32, i32* @REASON_NONE, align 4
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %184 = load i32, i32* %20, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  store i32 %182, i32* %187, align 4
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %23, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %196 = load i32, i32* %20, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  store i32 %194, i32* %199, align 8
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 5
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 1
  %204 = bitcast %struct.TYPE_19__* %201 to i8*
  %205 = bitcast %struct.TYPE_19__* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 4, i1 false)
  br label %265

206:                                              ; preds = %164
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  %209 = load i32, i32* @FALSE, align 4
  %210 = call i32* @RPCRT4_find_interface(i32* null, %struct.TYPE_19__* %208, i32* null, i32 %209)
  store i32* %210, i32** %22, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %239

212:                                              ; preds = %206
  %213 = load i32*, i32** %22, align 8
  %214 = call i32 @RPCRT4_release_server_interface(i32* %213)
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = call i32 @debugstr_guid(i32* %218)
  %220 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_24__* %215, i32 %219)
  %221 = load i8*, i8** @RESULT_PROVIDER_REJECTION, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %223 = load i32, i32* %20, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 2
  store i8* %221, i8** %226, align 8
  %227 = load i32, i32* @REASON_TRANSFER_SYNTAXES_NOT_SUPPORTED, align 4
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %229 = load i32, i32* %20, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  store i32 %227, i32* %232, align 4
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %234 = load i32, i32* %20, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = call i32 @memset(i32* %237, i32 0, i32 4)
  br label %264

239:                                              ; preds = %206
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 0
  %244 = call i32 @debugstr_guid(i32* %243)
  %245 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_24__* %240, i32 %244)
  %246 = load i8*, i8** @RESULT_PROVIDER_REJECTION, align 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %248 = load i32, i32* %20, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 2
  store i8* %246, i8** %251, align 8
  %252 = load i32, i32* @REASON_ABSTRACT_SYNTAX_NOT_SUPPORTED, align 4
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %254 = load i32, i32* %20, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 1
  store i32 %252, i32* %257, align 4
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %259 = load i32, i32* %20, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 0
  %263 = call i32 @memset(i32* %262, i32 0, i32 4)
  br label %264

264:                                              ; preds = %239, %212
  br label %265

265:                                              ; preds = %264, %167
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %20, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %20, align 4
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = bitcast i32* %275 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %276, %struct.TYPE_23__** %19, align 8
  br label %127

277:                                              ; preds = %127
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %281 = call i64 @RPCRT4_MakeBinding(%struct.TYPE_20__** %279, %struct.TYPE_24__* %280)
  store i64 %281, i64* %18, align 8
  %282 = load i64, i64* %18, align 8
  %283 = load i64, i64* @RPC_S_OK, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %277
  %286 = call i32 (...) @GetProcessHeap()
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %288 = call i32 @HeapFree(i32 %286, i32 0, %struct.TYPE_21__* %287)
  %289 = load i64, i64* %18, align 8
  store i64 %289, i64* %9, align 8
  br label %375

290:                                              ; preds = %277
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %292 = call i32 @rpcrt4_conn_get_name(%struct.TYPE_24__* %291)
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 0
  %309 = call i64 @RpcServerAssoc_GetAssociation(i32 %292, i32 %295, i32 %298, i32 %301, i32 %304, %struct.TYPE_18__** %308)
  store i64 %309, i64* %18, align 8
  %310 = load i64, i64* %18, align 8
  %311 = load i64, i64* @RPC_S_OK, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %318

313:                                              ; preds = %290
  %314 = call i32 (...) @GetProcessHeap()
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %316 = call i32 @HeapFree(i32 %314, i32 0, %struct.TYPE_21__* %315)
  %317 = load i64, i64* %18, align 8
  store i64 %317, i64* %9, align 8
  br label %375

318:                                              ; preds = %290
  %319 = load i64, i64* %14, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %339

321:                                              ; preds = %318
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %323 = load i32, i32* @TRUE, align 4
  %324 = load i8*, i8** %13, align 8
  %325 = bitcast i8* %324 to i32*
  %326 = load i64, i64* %14, align 8
  %327 = load i8**, i8*** %16, align 8
  %328 = load i64*, i64** %17, align 8
  %329 = call i64 @RPCRT4_ServerConnectionAuth(%struct.TYPE_24__* %322, i32 %323, i32* %325, i64 %326, i8** %327, i64* %328)
  store i64 %329, i64* %18, align 8
  %330 = load i64, i64* %18, align 8
  %331 = load i64, i64* @RPC_S_OK, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %338

333:                                              ; preds = %321
  %334 = call i32 (...) @GetProcessHeap()
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %336 = call i32 @HeapFree(i32 %334, i32 0, %struct.TYPE_21__* %335)
  %337 = load i64, i64* %18, align 8
  store i64 %337, i64* %9, align 8
  br label %375

338:                                              ; preds = %321
  br label %339

339:                                              ; preds = %338, %318
  %340 = load i32, i32* @NDR_LOCAL_DATA_REPRESENTATION, align 4
  %341 = load i32, i32* @RPC_MAX_PACKET_SIZE, align 4
  %342 = load i32, i32* @RPC_MAX_PACKET_SIZE, align 4
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %343, i32 0, i32 2
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %357 = call i32* @RPCRT4_BuildBindAckHeader(i32 %340, i32 %341, i32 %342, i32 %349, i32 %352, i32 %355, %struct.TYPE_21__* %356)
  %358 = load i32**, i32*** %15, align 8
  store i32* %357, i32** %358, align 8
  %359 = call i32 (...) @GetProcessHeap()
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %361 = call i32 @HeapFree(i32 %359, i32 0, %struct.TYPE_21__* %360)
  %362 = load i32**, i32*** %15, align 8
  %363 = load i32*, i32** %362, align 8
  %364 = icmp ne i32* %363, null
  br i1 %364, label %365, label %371

365:                                              ; preds = %339
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i32 0, i32 0
  store i64 %368, i64* %370, align 8
  br label %373

371:                                              ; preds = %339
  %372 = load i64, i64* @RPC_S_OUT_OF_RESOURCES, align 8
  store i64 %372, i64* %18, align 8
  br label %373

373:                                              ; preds = %371, %365
  %374 = load i64, i64* %18, align 8
  store i64 %374, i64* %9, align 8
  br label %375

375:                                              ; preds = %373, %333, %313, %285, %121, %107, %69
  %376 = load i64, i64* %9, align 8
  ret i64 %376
}

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @UuidIsNil(i32*, i64*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_21__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @RPCRT4_find_interface(i32*, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @RPCRT4_release_server_interface(i32*) #1

declare dso_local i32 @debugstr_guid(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @RPCRT4_MakeBinding(%struct.TYPE_20__**, %struct.TYPE_24__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i64 @RpcServerAssoc_GetAssociation(i32, i32, i32, i32, i32, %struct.TYPE_18__**) #1

declare dso_local i32 @rpcrt4_conn_get_name(%struct.TYPE_24__*) #1

declare dso_local i64 @RPCRT4_ServerConnectionAuth(%struct.TYPE_24__*, i32, i32*, i64, i8**, i64*) #1

declare dso_local i32* @RPCRT4_BuildBindAckHeader(i32, i32, i32, i32, i32, i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
