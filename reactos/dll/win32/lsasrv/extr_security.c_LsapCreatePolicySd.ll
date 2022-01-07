; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_security.c_LsapCreatePolicySd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_security.c_LsapCreatePolicySd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@SECURITY_DESCRIPTOR_REVISION = common dso_local global i32 0, align 4
@NtAuthority = common dso_local global i32 0, align 4
@SECURITY_ANONYMOUS_LOGON_RID = common dso_local global i32 0, align 4
@SECURITY_BUILTIN_DOMAIN_RID = common dso_local global i32 0, align 4
@DOMAIN_ALIAS_RID_ADMINS = common dso_local global i32 0, align 4
@WorldSidAuthority = common dso_local global i32 0, align 4
@SECURITY_WORLD_RID = common dso_local global i32 0, align 4
@SECURITY_LOCAL_SERVICE_RID = common dso_local global i32 0, align 4
@SECURITY_NETWORK_SERVICE_RID = common dso_local global i32 0, align 4
@SECURITY_LOCAL_SYSTEM_RID = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@ACL_REVISION = common dso_local global i32 0, align 4
@POLICY_LOOKUP_NAMES = common dso_local global i32 0, align 4
@POLICY_ALL_ACCESS = common dso_local global i32 0, align 4
@POLICY_NOTIFICATION = common dso_local global i32 0, align 4
@POLICY_EXECUTE = common dso_local global i32 0, align 4
@POLICY_VIEW_LOCAL_INFORMATION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LsapCreatePolicySd(i32** %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %18 = load i32**, i32*** %4, align 8
  %19 = icmp eq i32** %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %2
  %24 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %24, i64* %3, align 8
  br label %311

25:                                               ; preds = %20
  %26 = load i32**, i32*** %4, align 8
  store i32* null, i32** %26, align 8
  %27 = load i32*, i32** %5, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @SECURITY_DESCRIPTOR_REVISION, align 4
  %29 = call i64 @RtlCreateSecurityDescriptor(i32* %6, i32 %28)
  store i64 %29, i64* %17, align 8
  %30 = load i64, i64* %17, align 8
  %31 = call i32 @NT_SUCCESS(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %17, align 8
  store i64 %34, i64* %3, align 8
  br label %311

35:                                               ; preds = %25
  %36 = load i32, i32* @SECURITY_ANONYMOUS_LOGON_RID, align 4
  %37 = call i64 @RtlAllocateAndInitializeSid(i32* @NtAuthority, i32 1, i32 %36, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %9)
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %17, align 8
  %39 = call i32 @NT_SUCCESS(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %248

42:                                               ; preds = %35
  %43 = load i32, i32* @SECURITY_BUILTIN_DOMAIN_RID, align 4
  %44 = load i32, i32* @DOMAIN_ALIAS_RID_ADMINS, align 4
  %45 = call i64 @RtlAllocateAndInitializeSid(i32* @NtAuthority, i32 2, i32 %43, i32 %44, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %10)
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %17, align 8
  %47 = call i32 @NT_SUCCESS(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %248

50:                                               ; preds = %42
  %51 = load i32, i32* @SECURITY_WORLD_RID, align 4
  %52 = call i64 @RtlAllocateAndInitializeSid(i32* @WorldSidAuthority, i32 1, i32 %51, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %11)
  store i64 %52, i64* %17, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @NT_SUCCESS(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %248

57:                                               ; preds = %50
  %58 = load i32, i32* @SECURITY_LOCAL_SERVICE_RID, align 4
  %59 = call i64 @RtlAllocateAndInitializeSid(i32* @NtAuthority, i32 1, i32 %58, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %12)
  store i64 %59, i64* %17, align 8
  %60 = load i64, i64* %17, align 8
  %61 = call i32 @NT_SUCCESS(i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %248

64:                                               ; preds = %57
  %65 = load i32, i32* @SECURITY_NETWORK_SERVICE_RID, align 4
  %66 = call i64 @RtlAllocateAndInitializeSid(i32* @NtAuthority, i32 1, i32 %65, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %13)
  store i64 %66, i64* %17, align 8
  %67 = load i64, i64* %17, align 8
  %68 = call i32 @NT_SUCCESS(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %248

71:                                               ; preds = %64
  %72 = load i32, i32* @SECURITY_LOCAL_SYSTEM_RID, align 4
  %73 = call i64 @RtlAllocateAndInitializeSid(i32* @NtAuthority, i32 1, i32 %72, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %14)
  store i64 %73, i64* %17, align 8
  %74 = load i64, i64* %17, align 8
  %75 = call i32 @NT_SUCCESS(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %248

78:                                               ; preds = %71
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @RtlLengthSid(i32* %79)
  %81 = sext i32 %80 to i64
  %82 = add i64 4, %81
  %83 = add i64 %82, 4
  %84 = sub i64 %83, 4
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @RtlLengthSid(i32* %85)
  %87 = sext i32 %86 to i64
  %88 = add i64 %84, %87
  %89 = add i64 %88, 4
  %90 = sub i64 %89, 4
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @RtlLengthSid(i32* %91)
  %93 = sext i32 %92 to i64
  %94 = add i64 %90, %93
  %95 = add i64 %94, 4
  %96 = sub i64 %95, 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @RtlLengthSid(i32* %97)
  %99 = sext i32 %98 to i64
  %100 = add i64 %96, %99
  %101 = add i64 %100, 4
  %102 = sub i64 %101, 4
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @RtlLengthSid(i32* %103)
  %105 = sext i32 %104 to i64
  %106 = add i64 %102, %105
  %107 = add i64 %106, 4
  %108 = sub i64 %107, 4
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @RtlLengthSid(i32* %109)
  %111 = sext i32 %110 to i64
  %112 = add i64 %108, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %16, align 4
  %114 = call i32 (...) @RtlGetProcessHeap()
  %115 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32* @RtlAllocateHeap(i32 %114, i32 %115, i32 %116)
  store i32* %117, i32** %15, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %78
  %121 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %121, i64* %17, align 8
  br label %248

122:                                              ; preds = %78
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* @ACL_REVISION, align 4
  %126 = call i64 @RtlCreateAcl(i32* %123, i32 %124, i32 %125)
  store i64 %126, i64* %17, align 8
  %127 = load i64, i64* %17, align 8
  %128 = call i32 @NT_SUCCESS(i64 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  br label %248

131:                                              ; preds = %122
  %132 = load i32*, i32** %15, align 8
  %133 = load i32, i32* @ACL_REVISION, align 4
  %134 = load i32, i32* @POLICY_LOOKUP_NAMES, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = call i64 @RtlAddAccessDeniedAce(i32* %132, i32 %133, i32 %134, i32* %135)
  store i64 %136, i64* %17, align 8
  %137 = load i64, i64* %17, align 8
  %138 = call i32 @NT_SUCCESS(i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %131
  br label %248

141:                                              ; preds = %131
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* @ACL_REVISION, align 4
  %144 = load i32, i32* @POLICY_ALL_ACCESS, align 4
  %145 = load i32, i32* @POLICY_NOTIFICATION, align 4
  %146 = or i32 %144, %145
  %147 = load i32*, i32** %10, align 8
  %148 = call i64 @RtlAddAccessAllowedAce(i32* %142, i32 %143, i32 %146, i32* %147)
  store i64 %148, i64* %17, align 8
  %149 = load i64, i64* %17, align 8
  %150 = call i32 @NT_SUCCESS(i64 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %141
  br label %248

153:                                              ; preds = %141
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* @ACL_REVISION, align 4
  %156 = load i32, i32* @POLICY_EXECUTE, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = call i64 @RtlAddAccessAllowedAce(i32* %154, i32 %155, i32 %156, i32* %157)
  store i64 %158, i64* %17, align 8
  %159 = load i64, i64* %17, align 8
  %160 = call i32 @NT_SUCCESS(i64 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %153
  br label %248

163:                                              ; preds = %153
  %164 = load i32*, i32** %15, align 8
  %165 = load i32, i32* @ACL_REVISION, align 4
  %166 = load i32, i32* @POLICY_LOOKUP_NAMES, align 4
  %167 = load i32, i32* @POLICY_VIEW_LOCAL_INFORMATION, align 4
  %168 = or i32 %166, %167
  %169 = load i32*, i32** %9, align 8
  %170 = call i64 @RtlAddAccessAllowedAce(i32* %164, i32 %165, i32 %168, i32* %169)
  store i64 %170, i64* %17, align 8
  %171 = load i64, i64* %17, align 8
  %172 = call i32 @NT_SUCCESS(i64 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %163
  br label %248

175:                                              ; preds = %163
  %176 = load i32*, i32** %15, align 8
  %177 = load i32, i32* @ACL_REVISION, align 4
  %178 = load i32, i32* @POLICY_NOTIFICATION, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = call i64 @RtlAddAccessAllowedAce(i32* %176, i32 %177, i32 %178, i32* %179)
  store i64 %180, i64* %17, align 8
  %181 = load i64, i64* %17, align 8
  %182 = call i32 @NT_SUCCESS(i64 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %175
  br label %248

185:                                              ; preds = %175
  %186 = load i32*, i32** %15, align 8
  %187 = load i32, i32* @ACL_REVISION, align 4
  %188 = load i32, i32* @POLICY_NOTIFICATION, align 4
  %189 = load i32*, i32** %13, align 8
  %190 = call i64 @RtlAddAccessAllowedAce(i32* %186, i32 %187, i32 %188, i32* %189)
  store i64 %190, i64* %17, align 8
  %191 = load i64, i64* %17, align 8
  %192 = call i32 @NT_SUCCESS(i64 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %185
  br label %248

195:                                              ; preds = %185
  %196 = load i32, i32* @TRUE, align 4
  %197 = load i32*, i32** %15, align 8
  %198 = load i32, i32* @FALSE, align 4
  %199 = call i64 @RtlSetDaclSecurityDescriptor(i32* %6, i32 %196, i32* %197, i32 %198)
  store i64 %199, i64* %17, align 8
  %200 = load i64, i64* %17, align 8
  %201 = call i32 @NT_SUCCESS(i64 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %195
  br label %248

204:                                              ; preds = %195
  %205 = load i32*, i32** %14, align 8
  %206 = load i32, i32* @FALSE, align 4
  %207 = call i64 @RtlSetGroupSecurityDescriptor(i32* %6, i32* %205, i32 %206)
  store i64 %207, i64* %17, align 8
  %208 = load i64, i64* %17, align 8
  %209 = call i32 @NT_SUCCESS(i64 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %204
  br label %248

212:                                              ; preds = %204
  %213 = load i32*, i32** %10, align 8
  %214 = load i32, i32* @FALSE, align 4
  %215 = call i64 @RtlSetOwnerSecurityDescriptor(i32* %6, i32* %213, i32 %214)
  store i64 %215, i64* %17, align 8
  %216 = load i64, i64* %17, align 8
  %217 = call i32 @NT_SUCCESS(i64 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %212
  br label %248

220:                                              ; preds = %212
  %221 = load i32*, i32** %7, align 8
  %222 = call i64 @RtlAbsoluteToSelfRelativeSD(i32* %6, i32* %221, i32* %8)
  store i64 %222, i64* %17, align 8
  %223 = load i64, i64* %17, align 8
  %224 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  br label %248

227:                                              ; preds = %220
  %228 = call i32 (...) @RtlGetProcessHeap()
  %229 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %230 = load i32, i32* %8, align 4
  %231 = call i32* @RtlAllocateHeap(i32 %228, i32 %229, i32 %230)
  store i32* %231, i32** %7, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %235, i64* %17, align 8
  br label %248

236:                                              ; preds = %227
  %237 = load i32*, i32** %7, align 8
  %238 = call i64 @RtlAbsoluteToSelfRelativeSD(i32* %6, i32* %237, i32* %8)
  store i64 %238, i64* %17, align 8
  %239 = load i64, i64* %17, align 8
  %240 = call i32 @NT_SUCCESS(i64 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %236
  br label %248

243:                                              ; preds = %236
  %244 = load i32*, i32** %7, align 8
  %245 = load i32**, i32*** %4, align 8
  store i32* %244, i32** %245, align 8
  %246 = load i32, i32* %8, align 4
  %247 = load i32*, i32** %5, align 8
  store i32 %246, i32* %247, align 4
  br label %248

248:                                              ; preds = %243, %242, %234, %226, %219, %211, %203, %194, %184, %174, %162, %152, %140, %130, %120, %77, %70, %63, %56, %49, %41
  %249 = load i32*, i32** %15, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = call i32 (...) @RtlGetProcessHeap()
  %253 = load i32*, i32** %15, align 8
  %254 = call i32 @RtlFreeHeap(i32 %252, i32 0, i32* %253)
  br label %255

255:                                              ; preds = %251, %248
  %256 = load i32*, i32** %9, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = call i32 (...) @RtlGetProcessHeap()
  %260 = load i32*, i32** %9, align 8
  %261 = call i32 @RtlFreeHeap(i32 %259, i32 0, i32* %260)
  br label %262

262:                                              ; preds = %258, %255
  %263 = load i32*, i32** %10, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = call i32 (...) @RtlGetProcessHeap()
  %267 = load i32*, i32** %10, align 8
  %268 = call i32 @RtlFreeHeap(i32 %266, i32 0, i32* %267)
  br label %269

269:                                              ; preds = %265, %262
  %270 = load i32*, i32** %11, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = call i32 (...) @RtlGetProcessHeap()
  %274 = load i32*, i32** %11, align 8
  %275 = call i32 @RtlFreeHeap(i32 %273, i32 0, i32* %274)
  br label %276

276:                                              ; preds = %272, %269
  %277 = load i32*, i32** %12, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %283

279:                                              ; preds = %276
  %280 = call i32 (...) @RtlGetProcessHeap()
  %281 = load i32*, i32** %12, align 8
  %282 = call i32 @RtlFreeHeap(i32 %280, i32 0, i32* %281)
  br label %283

283:                                              ; preds = %279, %276
  %284 = load i32*, i32** %13, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = call i32 (...) @RtlGetProcessHeap()
  %288 = load i32*, i32** %13, align 8
  %289 = call i32 @RtlFreeHeap(i32 %287, i32 0, i32* %288)
  br label %290

290:                                              ; preds = %286, %283
  %291 = load i32*, i32** %14, align 8
  %292 = icmp ne i32* %291, null
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = call i32 (...) @RtlGetProcessHeap()
  %295 = load i32*, i32** %14, align 8
  %296 = call i32 @RtlFreeHeap(i32 %294, i32 0, i32* %295)
  br label %297

297:                                              ; preds = %293, %290
  %298 = load i64, i64* %17, align 8
  %299 = call i32 @NT_SUCCESS(i64 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %309, label %301

301:                                              ; preds = %297
  %302 = load i32*, i32** %7, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = call i32 (...) @RtlGetProcessHeap()
  %306 = load i32*, i32** %7, align 8
  %307 = call i32 @RtlFreeHeap(i32 %305, i32 0, i32* %306)
  br label %308

308:                                              ; preds = %304, %301
  br label %309

309:                                              ; preds = %308, %297
  %310 = load i64, i64* %17, align 8
  store i64 %310, i64* %3, align 8
  br label %311

311:                                              ; preds = %309, %33, %23
  %312 = load i64, i64* %3, align 8
  ret i64 %312
}

declare dso_local i64 @RtlCreateSecurityDescriptor(i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i64 @RtlAllocateAndInitializeSid(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @RtlLengthSid(i32*) #1

declare dso_local i32* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i64 @RtlCreateAcl(i32*, i32, i32) #1

declare dso_local i64 @RtlAddAccessDeniedAce(i32*, i32, i32, i32*) #1

declare dso_local i64 @RtlAddAccessAllowedAce(i32*, i32, i32, i32*) #1

declare dso_local i64 @RtlSetDaclSecurityDescriptor(i32*, i32, i32*, i32) #1

declare dso_local i64 @RtlSetGroupSecurityDescriptor(i32*, i32*, i32) #1

declare dso_local i64 @RtlSetOwnerSecurityDescriptor(i32*, i32*, i32) #1

declare dso_local i64 @RtlAbsoluteToSelfRelativeSD(i32*, i32*, i32*) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
