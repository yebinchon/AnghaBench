; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_do_authorization.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_do_authorization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.authinfo = type { i32, i8*, i32, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i8*, i8* }
%struct.TYPE_12__ = type { i32 }

@RPC_S_SERVER_UNAVAILABLE = common dso_local global i64 0, align 8
@CP_UTF8 = common dso_local global i32 0, align 4
@RPC_S_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@RPC_S_OK = common dso_local global i64 0, align 8
@do_authorization.ntlmW = internal global [5 x i8] c"NTLM\00", align 1
@do_authorization.negotiateW = internal global [10 x i8] c"Negotiate\00", align 1
@ISC_REQ_CONNECTION = common dso_local global i32 0, align 4
@ISC_REQ_USE_DCE_STYLE = common dso_local global i32 0, align 4
@ISC_REQ_MUTUAL_AUTH = common dso_local global i32 0, align 4
@ISC_REQ_DELEGATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"authentication scheme changed\0A\00", align 1
@SECBUFFER_TOKEN = common dso_local global i8* null, align 8
@SECURITY_NETWORK_DREP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"sending last auth packet\0A\00", align 1
@SEC_I_CONTINUE_NEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"sending next auth packet\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"InitializeSecurityContextW failed with error 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"scheme %u not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, %struct.TYPE_16__*, %struct.authinfo**)* @do_authorization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_authorization(i32 %0, i8* %1, %struct.TYPE_16__* %2, %struct.authinfo** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.authinfo**, align 8
  %10 = alloca %struct.authinfo*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca %struct.TYPE_13__, align 8
  %18 = alloca %struct.TYPE_14__, align 8
  %19 = alloca %struct.TYPE_14__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca [2048 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_12__*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.authinfo** %3, %struct.authinfo*** %9, align 8
  %30 = load %struct.authinfo**, %struct.authinfo*** %9, align 8
  %31 = load %struct.authinfo*, %struct.authinfo** %30, align 8
  store %struct.authinfo* %31, %struct.authinfo** %10, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %11, align 8
  %35 = load i64, i64* @RPC_S_SERVER_UNAVAILABLE, align 8
  store i64 %35, i64* %12, align 8
  %36 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %37 = icmp ne %struct.authinfo* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %4
  %39 = call %struct.authinfo* (...) @alloc_authinfo()
  store %struct.authinfo* %39, %struct.authinfo** %10, align 8
  %40 = icmp ne %struct.authinfo* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* @RPC_S_SERVER_UNAVAILABLE, align 8
  store i64 %42, i64* %5, align 8
  br label %383

43:                                               ; preds = %38, %4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %363 [
    i32 130, label %49
    i32 128, label %123
    i32 129, label %123
  ]

49:                                               ; preds = %43
  %50 = load i32, i32* @CP_UTF8, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @WideCharToMultiByte(i32 %50, i32 0, i32 %53, i32 %56, i8* null, i32 0, i32* null, i32* null)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* @CP_UTF8, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @WideCharToMultiByte(i32 %58, i32 0, i32 %61, i32 %64, i8* null, i32 0, i32* null, i32* null)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %66, %67
  %69 = add nsw i32 %68, 1
  %70 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %71 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = call i32 (...) @GetProcessHeap()
  %73 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %74 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @HeapAlloc(i32 %72, i32 0, i32 %75)
  %77 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %78 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = icmp ne i8* %76, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %49
  %81 = load i64, i64* @RPC_S_OUT_OF_MEMORY, align 8
  store i64 %81, i64* %12, align 8
  br label %370

82:                                               ; preds = %49
  %83 = load i32, i32* @CP_UTF8, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %91 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @WideCharToMultiByte(i32 %83, i32 0, i32 %86, i32 %89, i8* %92, i32 %93, i32* null, i32* null)
  %95 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %96 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 58, i8* %100, align 1
  %101 = load i32, i32* @CP_UTF8, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %109 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @WideCharToMultiByte(i32 %101, i32 0, i32 %104, i32 %107, i8* %114, i32 %115, i32* null, i32* null)
  %117 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %118 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %117, i32 0, i32 2
  store i32 130, i32* %118, align 8
  %119 = load i8*, i8** @TRUE, align 8
  %120 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %121 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load i64, i64* @RPC_S_OK, align 8
  store i64 %122, i64* %12, align 8
  br label %370

123:                                              ; preds = %43, %43
  %124 = load i32, i32* @ISC_REQ_CONNECTION, align 4
  %125 = load i32, i32* @ISC_REQ_USE_DCE_STYLE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @ISC_REQ_MUTUAL_AUTH, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @ISC_REQ_DELEGATE, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %20, align 4
  store i32 2048, i32* %25, align 4
  %131 = load i8*, i8** @FALSE, align 8
  store i8* %131, i8** %26, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 128
  br i1 %137, label %138, label %139

138:                                              ; preds = %123
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @do_authorization.ntlmW, i64 0, i64 0), i8** %21, align 8
  br label %140

139:                                              ; preds = %123
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @do_authorization.negotiateW, i64 0, i64 0), i8** %21, align 8
  br label %140

140:                                              ; preds = %139, %138
  %141 = load i8*, i8** %21, align 8
  %142 = call i32 @strlenW(i8* %141)
  store i32 %142, i32* %22, align 4
  %143 = load %struct.authinfo**, %struct.authinfo*** %9, align 8
  %144 = load %struct.authinfo*, %struct.authinfo** %143, align 8
  %145 = icmp ne %struct.authinfo* %144, null
  br i1 %145, label %173, label %146

146:                                              ; preds = %140
  %147 = load i8*, i8** %21, align 8
  %148 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %150 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %151 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %150, i32 0, i32 8
  %152 = call i32 @AcquireCredentialsHandleW(i32* null, i8* %147, i32 %148, i32* null, %struct.TYPE_15__* %149, i32* null, i32* null, i32* %151, i32* %27)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* @SEC_E_OK, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %370

157:                                              ; preds = %146
  %158 = load i8*, i8** %21, align 8
  %159 = call i32 @QuerySecurityPackageInfoW(i8* %158, %struct.TYPE_12__** %28)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* @SEC_E_OK, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %370

164:                                              ; preds = %157
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %169 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %171 = call i32 @FreeContextBuffer(%struct.TYPE_12__* %170)
  %172 = load i8*, i8** @TRUE, align 8
  store i8* %172, i8** %26, align 8
  br label %200

173:                                              ; preds = %140
  %174 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %175 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %189, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds [2048 x i8], [2048 x i8]* %24, i64 0, i64 0
  %186 = load i32, i32* %25, align 4
  %187 = call i32 @get_authvalue(i32 %179, i32 %184, i8* %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %178, %173
  br label %370

190:                                              ; preds = %178
  %191 = getelementptr inbounds [2048 x i8], [2048 x i8]* %24, i64 0, i64 0
  %192 = call i32 @auth_scheme_from_header(i8* %191)
  %193 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %194 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %192, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %370

199:                                              ; preds = %190
  br label %200

200:                                              ; preds = %199, %164
  %201 = load i8*, i8** @SECBUFFER_TOKEN, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  store i8* %201, i8** %202, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 0, i32* %203, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  store i8* null, i8** %204, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  store i32 0, i32* %205, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32 1, i32* %206, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %207, align 8
  %208 = getelementptr inbounds [2048 x i8], [2048 x i8]* %24, i64 0, i64 0
  %209 = load i32, i32* %22, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  store i8* %211, i8** %23, align 8
  %212 = load i8*, i8** %26, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %240, label %214

214:                                              ; preds = %200
  %215 = load i8*, i8** %23, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 32
  br i1 %218, label %219, label %240

219:                                              ; preds = %214
  %220 = load i8*, i8** %23, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %23, align 8
  %222 = call i32 @strlenW(i8* %221)
  store i32 %222, i32* %29, align 4
  %223 = load i8*, i8** %23, align 8
  %224 = load i32, i32* %29, align 4
  %225 = call i32 @decode_base64(i8* %223, i32 %224, i8* null)
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 %225, i32* %226, align 8
  %227 = call i32 (...) @GetProcessHeap()
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i8* @HeapAlloc(i32 %227, i32 0, i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  store i8* %230, i8** %231, align 8
  %232 = icmp ne i8* %230, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %219
  br label %370

234:                                              ; preds = %219
  %235 = load i8*, i8** %23, align 8
  %236 = load i32, i32* %29, align 4
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @decode_base64(i8* %235, i32 %236, i8* %238)
  br label %240

240:                                              ; preds = %234, %214, %200
  %241 = load i8*, i8** @SECBUFFER_TOKEN, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  store i8* %241, i8** %242, align 8
  %243 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %244 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i32 %245, i32* %246, align 8
  %247 = call i32 (...) @GetProcessHeap()
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i8* @HeapAlloc(i32 %247, i32 0, i32 %249)
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i8* %250, i8** %251, align 8
  %252 = icmp ne i8* %250, null
  br i1 %252, label %258, label %253

253:                                              ; preds = %240
  %254 = call i32 (...) @GetProcessHeap()
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @HeapFree(i32 %254, i32 0, i8* %256)
  br label %370

258:                                              ; preds = %240
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i32 0, i32* %259, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 1, i32* %260, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %261, align 8
  %262 = load i8*, i8** %26, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %266 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %265, i32 0, i32 8
  br label %268

267:                                              ; preds = %258
  br label %268

268:                                              ; preds = %267, %264
  %269 = phi i32* [ %266, %264 ], [ null, %267 ]
  %270 = load i8*, i8** %26, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  br label %276

273:                                              ; preds = %268
  %274 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %275 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %274, i32 0, i32 7
  br label %276

276:                                              ; preds = %273, %272
  %277 = phi i32* [ null, %272 ], [ %275, %273 ]
  %278 = load i8*, i8** %26, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = load i8*, i8** %7, align 8
  br label %283

282:                                              ; preds = %276
  br label %283

283:                                              ; preds = %282, %280
  %284 = phi i8* [ %281, %280 ], [ null, %282 ]
  %285 = load i32, i32* %20, align 4
  %286 = load i32, i32* @SECURITY_NETWORK_DREP, align 4
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %292

291:                                              ; preds = %283
  br label %292

292:                                              ; preds = %291, %290
  %293 = phi %struct.TYPE_13__* [ %17, %290 ], [ null, %291 ]
  %294 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %295 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %294, i32 0, i32 7
  %296 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %297 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %296, i32 0, i32 6
  %298 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %299 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %298, i32 0, i32 5
  %300 = call i32 @InitializeSecurityContextW(i32* %269, i32* %277, i8* %284, i32 %285, i32 0, i32 %286, %struct.TYPE_13__* %293, i32 0, i32* %295, %struct.TYPE_13__* %16, i32* %297, i32* %299)
  store i32 %300, i32* %15, align 4
  %301 = call i32 (...) @GetProcessHeap()
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  %304 = call i32 @HeapFree(i32 %301, i32 0, i8* %303)
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* @SEC_E_OK, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %327

308:                                              ; preds = %292
  %309 = call i32 (...) @GetProcessHeap()
  %310 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %311 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %310, i32 0, i32 1
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @HeapFree(i32 %309, i32 0, i8* %312)
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %315 = load i8*, i8** %314, align 8
  %316 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %317 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %316, i32 0, i32 1
  store i8* %315, i8** %317, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %321 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  %322 = load i8*, i8** @TRUE, align 8
  %323 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %324 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %323, i32 0, i32 4
  store i8* %322, i8** %324, align 8
  %325 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %326 = load i64, i64* @RPC_S_OK, align 8
  store i64 %326, i64* %12, align 8
  br label %355

327:                                              ; preds = %292
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* @SEC_I_CONTINUE_NEEDED, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %347

331:                                              ; preds = %327
  %332 = call i32 (...) @GetProcessHeap()
  %333 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %334 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %333, i32 0, i32 1
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @HeapFree(i32 %332, i32 0, i8* %335)
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %338 = load i8*, i8** %337, align 8
  %339 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %340 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %339, i32 0, i32 1
  store i8* %338, i8** %340, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %344 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 8
  %345 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %346 = load i64, i64* @RPC_S_OK, align 8
  store i64 %346, i64* %12, align 8
  br label %354

347:                                              ; preds = %327
  %348 = load i32, i32* %15, align 4
  %349 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %348)
  %350 = call i32 (...) @GetProcessHeap()
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 @HeapFree(i32 %350, i32 0, i8* %352)
  br label %370

354:                                              ; preds = %331
  br label %355

355:                                              ; preds = %354, %308
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %362 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %361, i32 0, i32 2
  store i32 %360, i32* %362, align 8
  br label %370

363:                                              ; preds = %43
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 0
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %368)
  br label %370

370:                                              ; preds = %363, %355, %347, %253, %233, %197, %189, %163, %156, %82, %80
  %371 = load i64, i64* %12, align 8
  %372 = load i64, i64* @RPC_S_OK, align 8
  %373 = icmp ne i64 %371, %372
  br i1 %373, label %374, label %379

374:                                              ; preds = %370
  %375 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %376 = call i32 @destroy_authinfo(%struct.authinfo* %375)
  %377 = load %struct.authinfo**, %struct.authinfo*** %9, align 8
  store %struct.authinfo* null, %struct.authinfo** %377, align 8
  %378 = load i64, i64* %12, align 8
  store i64 %378, i64* %5, align 8
  br label %383

379:                                              ; preds = %370
  %380 = load %struct.authinfo*, %struct.authinfo** %10, align 8
  %381 = load %struct.authinfo**, %struct.authinfo*** %9, align 8
  store %struct.authinfo* %380, %struct.authinfo** %381, align 8
  %382 = load i64, i64* @RPC_S_OK, align 8
  store i64 %382, i64* %5, align 8
  br label %383

383:                                              ; preds = %379, %374, %41
  %384 = load i64, i64* %5, align 8
  ret i64 %384
}

declare dso_local %struct.authinfo* @alloc_authinfo(...) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @AcquireCredentialsHandleW(i32*, i8*, i32, i32*, %struct.TYPE_15__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @QuerySecurityPackageInfoW(i8*, %struct.TYPE_12__**) #1

declare dso_local i32 @FreeContextBuffer(%struct.TYPE_12__*) #1

declare dso_local i32 @get_authvalue(i32, i32, i8*, i32) #1

declare dso_local i32 @auth_scheme_from_header(i8*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @decode_base64(i8*, i32, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @InitializeSecurityContextW(i32*, i32*, i8*, i32, i32, i32, %struct.TYPE_13__*, i32, i32*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @destroy_authinfo(%struct.authinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
