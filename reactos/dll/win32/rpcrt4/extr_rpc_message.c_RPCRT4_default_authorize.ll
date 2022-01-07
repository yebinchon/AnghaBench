; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_default_authorize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_default_authorize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i32, i64, i32*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i8*, i32, i8* }
%struct.TYPE_14__ = type { i32, i32 }

@RPC_S_OK = common dso_local global i32 0, align 4
@SECBUFFER_TOKEN = common dso_local global i8* null, align 8
@ASC_REQ_CONNECTION = common dso_local global i32 0, align 4
@ASC_REQ_USE_DCE_STYLE = common dso_local global i32 0, align 4
@ASC_REQ_DELEGATE = common dso_local global i32 0, align 4
@RPC_C_AUTHN_LEVEL_PKT_INTEGRITY = common dso_local global i64 0, align 8
@ASC_REQ_INTEGRITY = common dso_local global i32 0, align 4
@RPC_C_AUTHN_LEVEL_PKT_PRIVACY = common dso_local global i64 0, align 8
@ASC_REQ_CONFIDENTIALITY = common dso_local global i32 0, align 4
@SECURITY_NETWORK_DREP = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@SEC_I_COMPLETE_NEEDED = common dso_local global i64 0, align 8
@ISC_REQ_CONNECTION = common dso_local global i32 0, align 4
@ISC_REQ_USE_DCE_STYLE = common dso_local global i32 0, align 4
@ISC_REQ_MUTUAL_AUTH = common dso_local global i32 0, align 4
@ISC_REQ_DELEGATE = common dso_local global i32 0, align 4
@ISC_REQ_INTEGRITY = common dso_local global i32 0, align 4
@ISC_REQ_CONFIDENTIALITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"InitializeSecurityContext failed with error 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"r = 0x%08x, attr = 0x%08x\0A\00", align 1
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@SEC_I_COMPLETE_AND_CONTINUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"complete needed\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"CompleteAuthToken failed with error 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"cbBuffer = %d\0A\00", align 1
@SECPKG_ATTR_SIZES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"QueryContextAttributes failed with error 0x%08x\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RPCRT4_default_authorize(%struct.TYPE_17__* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca %struct.TYPE_15__, align 8
  %17 = alloca %struct.TYPE_14__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_16__, align 8
  %21 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %6
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %13, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @RPC_S_OK, align 4
  store i32 %31, i32* %7, align 4
  br label %269

32:                                               ; preds = %6
  %33 = load i8*, i8** @SECBUFFER_TOKEN, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load i8*, i8** @SECBUFFER_TOKEN, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %120

56:                                               ; preds = %32
  %57 = load i32, i32* @ASC_REQ_CONNECTION, align 4
  %58 = load i32, i32* @ASC_REQ_USE_DCE_STYLE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ASC_REQ_DELEGATE, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %19, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RPC_C_AUTHN_LEVEL_PKT_INTEGRITY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load i32, i32* @ASC_REQ_INTEGRITY, align 4
  %71 = load i32, i32* %19, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %19, align 4
  br label %88

73:                                               ; preds = %56
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RPC_C_AUTHN_LEVEL_PKT_PRIVACY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load i32, i32* @ASC_REQ_CONFIDENTIALITY, align 4
  %83 = load i32, i32* @ASC_REQ_INTEGRITY, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %19, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %19, align 4
  br label %87

87:                                               ; preds = %81, %73
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %99

96:                                               ; preds = %88
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 2
  br label %99

99:                                               ; preds = %96, %95
  %100 = phi i32* [ null, %95 ], [ %98, %96 ]
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* @SECURITY_NETWORK_DREP, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 4
  %109 = call i64 @AcceptSecurityContext(i32* %92, i32* %100, %struct.TYPE_15__* %16, i32 %101, i32 %102, i32* %104, %struct.TYPE_15__* %15, i32* %106, i32* %108)
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* @SEC_E_OK, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %99
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* @SEC_I_COMPLETE_NEEDED, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113, %99
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %117, %113
  br label %193

120:                                              ; preds = %32
  %121 = load i32, i32* @ISC_REQ_CONNECTION, align 4
  %122 = load i32, i32* @ISC_REQ_USE_DCE_STYLE, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @ISC_REQ_MUTUAL_AUTH, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @ISC_REQ_DELEGATE, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %19, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @RPC_C_AUTHN_LEVEL_PKT_INTEGRITY, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %120
  %136 = load i32, i32* @ISC_REQ_INTEGRITY, align 4
  %137 = load i32, i32* %19, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %19, align 4
  br label %154

139:                                              ; preds = %120
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @RPC_C_AUTHN_LEVEL_PKT_PRIVACY, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load i32, i32* @ISC_REQ_CONFIDENTIALITY, align 4
  %149 = load i32, i32* @ISC_REQ_INTEGRITY, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %19, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %19, align 4
  br label %153

153:                                              ; preds = %147, %139
  br label %154

154:                                              ; preds = %153, %135
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %165

162:                                              ; preds = %154
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  br label %165

165:                                              ; preds = %162, %161
  %166 = phi i32* [ null, %161 ], [ %164, %162 ]
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  br label %176

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175, %169
  %177 = phi i32* [ %174, %169 ], [ null, %175 ]
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* @SECURITY_NETWORK_DREP, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %184

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183, %182
  %185 = phi %struct.TYPE_15__* [ null, %182 ], [ %16, %183 ]
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 4
  %192 = call i64 @InitializeSecurityContextW(i32* %158, i32* %166, i32* %177, i32 %178, i32 0, i32 %179, %struct.TYPE_15__* %185, i32 0, i32* %187, %struct.TYPE_15__* %15, i32* %189, i32* %191)
  store i64 %192, i64* %14, align 8
  br label %193

193:                                              ; preds = %184, %119
  %194 = load i64, i64* %14, align 8
  %195 = call i64 @FAILED(i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i64, i64* %14, align 8
  %199 = call i32 @WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %198)
  br label %266

200:                                              ; preds = %193
  %201 = load i64, i64* %14, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %201, i32 %204)
  %206 = load i64, i64* %14, align 8
  %207 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %213, label %209

209:                                              ; preds = %200
  %210 = load i64, i64* %14, align 8
  %211 = load i64, i64* @SEC_I_COMPLETE_AND_CONTINUE, align 8
  %212 = icmp eq i64 %210, %211
  br label %213

213:                                              ; preds = %209, %200
  %214 = phi i1 [ true, %200 ], [ %212, %209 ]
  %215 = zext i1 %214 to i32
  store i32 %215, i32* %18, align 4
  %216 = load i64, i64* %14, align 8
  %217 = load i64, i64* @SEC_I_COMPLETE_NEEDED, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %223, label %219

219:                                              ; preds = %213
  %220 = load i64, i64* %14, align 8
  %221 = load i64, i64* @SEC_I_COMPLETE_AND_CONTINUE, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %219, %213
  %224 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 2
  %227 = call i64 @CompleteAuthToken(i32* %226, %struct.TYPE_15__* %15)
  store i64 %227, i64* %14, align 8
  %228 = load i64, i64* %14, align 8
  %229 = call i64 @FAILED(i64 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %223
  %232 = load i64, i64* %14, align 8
  %233 = call i32 @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %232)
  br label %266

234:                                              ; preds = %223
  br label %235

235:                                              ; preds = %234, %219
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %18, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %261, label %241

241:                                              ; preds = %235
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 2
  %244 = load i32, i32* @SECPKG_ATTR_SIZES, align 4
  %245 = call i64 @QueryContextAttributesA(i32* %243, i32 %244, %struct.TYPE_14__* %17)
  store i64 %245, i64* %14, align 8
  %246 = load i64, i64* %14, align 8
  %247 = call i64 @FAILED(i64 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load i64, i64* %14, align 8
  %251 = call i32 @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %250)
  br label %266

252:                                              ; preds = %241
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 4
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 8
  br label %261

261:                                              ; preds = %252, %235
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32*, i32** %13, align 8
  store i32 %263, i32* %264, align 4
  %265 = load i32, i32* @RPC_S_OK, align 4
  store i32 %265, i32* %7, align 4
  br label %269

266:                                              ; preds = %249, %231, %197
  %267 = load i32*, i32** %13, align 8
  store i32 0, i32* %267, align 4
  %268 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  store i32 %268, i32* %7, align 4
  br label %269

269:                                              ; preds = %266, %261, %24
  %270 = load i32, i32* %7, align 4
  ret i32 %270
}

declare dso_local i64 @AcceptSecurityContext(i32*, i32*, %struct.TYPE_15__*, i32, i32, i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i64 @InitializeSecurityContextW(i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_15__*, i32, i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @CompleteAuthToken(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @QueryContextAttributesA(i32*, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
