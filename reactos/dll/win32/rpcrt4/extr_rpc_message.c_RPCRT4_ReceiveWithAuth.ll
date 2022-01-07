; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_ReceiveWithAuth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_ReceiveWithAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32, i64, i64, i16 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32* }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %p, %p, %p)\0A\00", align 1
@RPC_S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"buffer length = %u\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@RPC_FLG_FIRST = common dso_local global i16 0, align 2
@RPC_S_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"frag_len %d too small for hdr_length %d and auth_len %d\0A\00", align 1
@RPC_S_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"auth_len header field changed from %d to %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid packet flags\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"allocation hint exceeded, new buffer length = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"bad auth verifier length %d\0A\00", align 1
@SECURE_PACKET_RECEIVE = common dso_local global i32 0, align 4
@RPC_FLG_LAST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"next header\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RPCRT4_ReceiveWithAuth(i32* %0, %struct.TYPE_16__** %1, %struct.TYPE_17__* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %16, align 8
  store i8* null, i8** %17, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %18, align 8
  store i8* null, i8** %19, align 8
  %21 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %21, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i8**, i8*** %9, align 8
  store i8* null, i8** %27, align 8
  br label %28

28:                                               ; preds = %26, %5
  %29 = load i64*, i64** %10, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64*, i64** %10, align 8
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = load i8**, i8*** %9, align 8
  %38 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %34, %struct.TYPE_16__** %35, %struct.TYPE_17__* %36, i8** %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @RPCRT4_SetThreadCurrentConnection(i32* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %43 = call i64 @RPCRT4_receive_fragment(i32* %41, %struct.TYPE_16__** %42, i8** %19)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @RPC_S_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %340

48:                                               ; preds = %33
  %49 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = call i64 @RPCRT4_GetHeaderSize(%struct.TYPE_16__* %50)
  store i64 %51, i64* %12, align 8
  %52 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %73 [
    i32 128, label %57
    i32 129, label %65
  ]

57:                                               ; preds = %48
  %58 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %89

65:                                               ; preds = %48
  %66 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %89

73:                                               ; preds = %48
  %74 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = call i32 @RPC_AUTH_VERIFIER_LEN(%struct.TYPE_18__* %83)
  %85 = zext i32 %84 to i64
  %86 = sub nsw i64 %80, %85
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %73, %65, %57
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32* @I_RpcAllocate(i64 %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %89
  %105 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %105, i64* %11, align 8
  br label %340

106:                                              ; preds = %89
  %107 = load i16, i16* @RPC_FLG_FIRST, align 2
  store i16 %107, i16* %13, align 2
  %108 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %16, align 8
  %113 = load i64, i64* %16, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %106
  %116 = call i32 (...) @GetProcessHeap()
  %117 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = call i32 @RPC_AUTH_VERIFIER_LEN(%struct.TYPE_18__* %119)
  %121 = call i8* @HeapAlloc(i32 %116, i32 0, i32 %120)
  store i8* %121, i8** %17, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %115
  %125 = load i64, i64* @RPC_S_OUT_OF_RESOURCES, align 8
  store i64 %125, i64* %11, align 8
  br label %340

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %106
  %128 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  store %struct.TYPE_16__* %129, %struct.TYPE_16__** %18, align 8
  store i64 0, i64* %15, align 8
  br label %130

130:                                              ; preds = %334, %127
  %131 = load i64, i64* @TRUE, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %335

133:                                              ; preds = %130
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = call i32 @RPC_AUTH_VERIFIER_LEN(%struct.TYPE_18__* %135)
  store i32 %136, i32* %20, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %12, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %153, label %143

143:                                              ; preds = %133
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %12, align 8
  %149 = sub nsw i64 %147, %148
  %150 = load i32, i32* %20, align 4
  %151 = zext i32 %150 to i64
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %143, %133
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i64, i64* %12, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %158, i64 %159, i64 %163)
  %165 = load i64, i64* @RPC_S_PROTOCOL_ERROR, align 8
  store i64 %165, i64* %11, align 8
  br label %340

166:                                              ; preds = %143
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %16, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %166
  %174 = load i64, i64* %16, align 8
  %175 = trunc i64 %174 to i32
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %175, i64 %179)
  %181 = load i64, i64* @RPC_S_PROTOCOL_ERROR, align 8
  store i64 %181, i64* %11, align 8
  br label %340

182:                                              ; preds = %166
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 3
  %186 = load i16, i16* %185, align 8
  %187 = zext i16 %186 to i32
  %188 = load i16, i16* @RPC_FLG_FIRST, align 2
  %189 = zext i16 %188 to i32
  %190 = and i32 %187, %189
  %191 = load i16, i16* %13, align 2
  %192 = zext i16 %191 to i32
  %193 = icmp ne i32 %190, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %182
  %195 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %196 = load i64, i64* @RPC_S_PROTOCOL_ERROR, align 8
  store i64 %196, i64* %11, align 8
  br label %340

197:                                              ; preds = %182
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %12, align 8
  %203 = sub nsw i64 %201, %202
  %204 = load i32, i32* %20, align 4
  %205 = zext i32 %204 to i64
  %206 = sub nsw i64 %203, %205
  store i64 %206, i64* %14, align 8
  %207 = load i64, i64* %14, align 8
  %208 = load i64, i64* %15, align 8
  %209 = add nsw i64 %207, %208
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %209, %212
  br i1 %213, label %214, label %231

214:                                              ; preds = %197
  %215 = load i64, i64* %14, align 8
  %216 = load i64, i64* %15, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %217)
  %219 = load i64, i64* %14, align 8
  %220 = load i64, i64* %15, align 8
  %221 = add nsw i64 %219, %220
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %225 = call i64 @I_RpcReAllocateBuffer(%struct.TYPE_17__* %224)
  store i64 %225, i64* %11, align 8
  %226 = load i64, i64* %11, align 8
  %227 = load i64, i64* @RPC_S_OK, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %214
  br label %340

230:                                              ; preds = %214
  br label %231

231:                                              ; preds = %230, %197
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = bitcast i32* %234 to i8*
  %236 = load i64, i64* %15, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  %238 = load i8*, i8** %19, align 8
  %239 = load i64, i64* %14, align 8
  %240 = trunc i64 %239 to i32
  %241 = call i32 @memcpy(i8* %237, i8* %238, i32 %240)
  %242 = load i32, i32* %20, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %301

244:                                              ; preds = %231
  %245 = load i32, i32* %20, align 4
  %246 = zext i32 %245 to i64
  %247 = icmp ult i64 %246, 4
  br i1 %247, label %255, label %248

248:                                              ; preds = %244
  %249 = load i32, i32* %20, align 4
  %250 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = call i32 @RPC_AUTH_VERIFIER_LEN(%struct.TYPE_18__* %252)
  %254 = icmp ugt i32 %249, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %248, %244
  %256 = load i32, i32* %20, align 4
  %257 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %256)
  %258 = load i64, i64* @RPC_S_PROTOCOL_ERROR, align 8
  store i64 %258, i64* %11, align 8
  br label %340

259:                                              ; preds = %248
  %260 = load i8*, i8** %17, align 8
  %261 = load i8*, i8** %19, align 8
  %262 = load i64, i64* %14, align 8
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  %264 = load i32, i32* %20, align 4
  %265 = call i32 @memcpy(i8* %260, i8* %263, i32 %264)
  %266 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = call i32 @packet_does_auth_negotiation(%struct.TYPE_16__* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %300, label %270

270:                                              ; preds = %259
  %271 = load i32*, i32** %6, align 8
  %272 = call i64 @rpcrt4_conn_is_authorized(i32* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %300

274:                                              ; preds = %270
  %275 = load i32*, i32** %6, align 8
  %276 = load i32, i32* @SECURE_PACKET_RECEIVE, align 4
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %278 = load i64, i64* %12, align 8
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = bitcast i32* %281 to i8*
  %283 = load i64, i64* %15, align 8
  %284 = getelementptr inbounds i8, i8* %282, i64 %283
  %285 = load i64, i64* %14, align 8
  %286 = load i8*, i8** %17, align 8
  %287 = bitcast i8* %286 to i32*
  %288 = load i8*, i8** %17, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 4
  %290 = load i32, i32* %20, align 4
  %291 = zext i32 %290 to i64
  %292 = sub i64 %291, 4
  %293 = trunc i64 %292 to i32
  %294 = call i64 @rpcrt4_conn_secure_packet(i32* %275, i32 %276, %struct.TYPE_16__* %277, i64 %278, i8* %284, i64 %285, i32* %287, i8* %289, i32 %293)
  store i64 %294, i64* %11, align 8
  %295 = load i64, i64* %11, align 8
  %296 = load i64, i64* @RPC_S_OK, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %274
  br label %340

299:                                              ; preds = %274
  br label %300

300:                                              ; preds = %299, %270, %259
  br label %301

301:                                              ; preds = %300, %231
  %302 = load i64, i64* %14, align 8
  %303 = load i64, i64* %15, align 8
  %304 = add nsw i64 %303, %302
  store i64 %304, i64* %15, align 8
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 3
  %308 = load i16, i16* %307, align 8
  %309 = zext i16 %308 to i32
  %310 = load i32, i32* @RPC_FLG_LAST, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %333, label %313

313:                                              ; preds = %301
  %314 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %315 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %315, align 8
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %318 = icmp ne %struct.TYPE_16__* %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %313
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %321 = call i32 @RPCRT4_FreeHeader(%struct.TYPE_16__* %320)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %18, align 8
  br label %322

322:                                              ; preds = %319, %313
  %323 = call i32 (...) @GetProcessHeap()
  %324 = load i8*, i8** %19, align 8
  %325 = call i32 @HeapFree(i32 %323, i32 0, i8* %324)
  store i8* null, i8** %19, align 8
  %326 = load i32*, i32** %6, align 8
  %327 = call i64 @RPCRT4_receive_fragment(i32* %326, %struct.TYPE_16__** %18, i8** %19)
  store i64 %327, i64* %11, align 8
  %328 = load i64, i64* %11, align 8
  %329 = load i64, i64* @RPC_S_OK, align 8
  %330 = icmp ne i64 %328, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %322
  br label %340

332:                                              ; preds = %322
  store i16 0, i16* %13, align 2
  br label %334

333:                                              ; preds = %301
  br label %335

334:                                              ; preds = %332
  br label %130

335:                                              ; preds = %333, %130
  %336 = load i64, i64* %15, align 8
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 0
  store i64 %336, i64* %338, align 8
  %339 = load i64, i64* @RPC_S_OK, align 8
  store i64 %339, i64* %11, align 8
  br label %340

340:                                              ; preds = %335, %331, %298, %255, %229, %194, %173, %153, %124, %104, %47
  %341 = call i32 @RPCRT4_SetThreadCurrentConnection(i32* null)
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %343 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %343, align 8
  %345 = icmp ne %struct.TYPE_16__* %342, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %340
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %348 = call i32 @RPCRT4_FreeHeader(%struct.TYPE_16__* %347)
  br label %349

349:                                              ; preds = %346, %340
  %350 = load i64, i64* %11, align 8
  %351 = load i64, i64* @RPC_S_OK, align 8
  %352 = icmp ne i64 %350, %351
  br i1 %352, label %353, label %364

353:                                              ; preds = %349
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 1
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @I_RpcFree(i32* %356)
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 1
  store i32* null, i32** %359, align 8
  %360 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %360, align 8
  %362 = call i32 @RPCRT4_FreeHeader(%struct.TYPE_16__* %361)
  %363 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %363, align 8
  br label %364

364:                                              ; preds = %353, %349
  %365 = load i8**, i8*** %9, align 8
  %366 = icmp ne i8** %365, null
  br i1 %366, label %367, label %376

367:                                              ; preds = %364
  %368 = load i64, i64* %11, align 8
  %369 = load i64, i64* @RPC_S_OK, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %376

371:                                              ; preds = %367
  %372 = load i64, i64* %16, align 8
  %373 = load i64*, i64** %10, align 8
  store i64 %372, i64* %373, align 8
  %374 = load i8*, i8** %17, align 8
  %375 = load i8**, i8*** %9, align 8
  store i8* %374, i8** %375, align 8
  br label %380

376:                                              ; preds = %367, %364
  %377 = call i32 (...) @GetProcessHeap()
  %378 = load i8*, i8** %17, align 8
  %379 = call i32 @HeapFree(i32 %377, i32 0, i8* %378)
  br label %380

380:                                              ; preds = %376, %371
  %381 = call i32 (...) @GetProcessHeap()
  %382 = load i8*, i8** %19, align 8
  %383 = call i32 @HeapFree(i32 %381, i32 0, i8* %382)
  %384 = load i64, i64* %11, align 8
  ret i64 %384
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @RPCRT4_SetThreadCurrentConnection(i32*) #1

declare dso_local i64 @RPCRT4_receive_fragment(i32*, %struct.TYPE_16__**, i8**) #1

declare dso_local i64 @RPCRT4_GetHeaderSize(%struct.TYPE_16__*) #1

declare dso_local i32 @RPC_AUTH_VERIFIER_LEN(%struct.TYPE_18__*) #1

declare dso_local i32* @I_RpcAllocate(i64) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WARN(i8*, i32, ...) #1

declare dso_local i64 @I_RpcReAllocateBuffer(%struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @packet_does_auth_negotiation(%struct.TYPE_16__*) #1

declare dso_local i64 @rpcrt4_conn_is_authorized(i32*) #1

declare dso_local i64 @rpcrt4_conn_secure_packet(i32*, i32, %struct.TYPE_16__*, i64, i8*, i64, i32*, i8*, i32) #1

declare dso_local i32 @RPCRT4_FreeHeader(%struct.TYPE_16__*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @I_RpcFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
