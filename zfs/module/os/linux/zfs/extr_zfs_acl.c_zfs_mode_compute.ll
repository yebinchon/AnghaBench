; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_mode_compute.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_mode_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i64 0, align 8
@S_ISUID = common dso_local global i64 0, align 8
@S_ISGID = common dso_local global i64 0, align 8
@S_ISVTX = common dso_local global i64 0, align 8
@ACE_TYPE_FLAGS = common dso_local global i64 0, align 8
@ACE_INHERIT_ONLY_ACE = common dso_local global i64 0, align 8
@ACE_OWNER = common dso_local global i32 0, align 4
@ACE_EVERYONE = common dso_local global i32 0, align 4
@OWNING_GROUP = common dso_local global i32 0, align 4
@ACE_READ_DATA = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i64 0, align 8
@ALLOW = common dso_local global i64 0, align 8
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i64 0, align 8
@ACE_EXECUTE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i64 0, align 8
@ACE_IDENTIFIER_GROUP = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i64 0, align 8
@S_IWGRP = common dso_local global i64 0, align 8
@S_IXGRP = common dso_local global i64 0, align 8
@S_IROTH = common dso_local global i64 0, align 8
@S_IWOTH = common dso_local global i64 0, align 8
@S_IXOTH = common dso_local global i64 0, align 8
@DENY = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@ALL_MODE_EXECS = common dso_local global i64 0, align 8
@ZFS_NO_EXECS_DENIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfs_mode_compute(i64 %0, i32* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %20 = load i64, i64* @B_FALSE, align 8
  store i64 %20, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @S_IFMT, align 8
  %23 = load i64, i64* @S_ISUID, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @S_ISGID, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @S_ISVTX, align 8
  %28 = or i64 %26, %27
  %29 = and i64 %21, %28
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %410, %62, %40, %5
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32* @zfs_acl_next_ace(i32* %31, i32* %32, i64* %15, i32* %18, i64* %16, i64* %17)
  store i32* %33, i32** %14, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %411

35:                                               ; preds = %30
  %36 = load i64, i64* %17, align 8
  %37 = load i64, i64* %16, align 8
  %38 = call i32 @zfs_acl_valid_ace_type(i64 %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %30

41:                                               ; preds = %35
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* @ACE_TYPE_FLAGS, align 8
  %44 = and i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* @ACE_INHERIT_ONLY_ACE, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ACE_OWNER, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @ACE_EVERYONE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @OWNING_GROUP, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54, %50
  br label %30

63:                                               ; preds = %58, %41
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @ACE_OWNER, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %141

70:                                               ; preds = %67
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %141

74:                                               ; preds = %70, %63
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* @ACE_READ_DATA, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %74
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @S_IRUSR, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %79
  %85 = load i64, i64* @S_IRUSR, align 8
  %86 = load i64, i64* %13, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %13, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* @ALLOW, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i64, i64* @S_IRUSR, align 8
  %93 = load i64, i64* %12, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %12, align 8
  br label %95

95:                                               ; preds = %91, %84
  br label %96

96:                                               ; preds = %95, %79, %74
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @ACE_WRITE_DATA, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* @S_IWUSR, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %101
  %107 = load i64, i64* @S_IWUSR, align 8
  %108 = load i64, i64* %13, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* @ALLOW, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i64, i64* @S_IWUSR, align 8
  %115 = load i64, i64* %12, align 8
  %116 = or i64 %115, %114
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %113, %106
  br label %118

118:                                              ; preds = %117, %101, %96
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @ACE_EXECUTE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %118
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* @S_IXUSR, align 8
  %126 = and i64 %124, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %123
  %129 = load i64, i64* @S_IXUSR, align 8
  %130 = load i64, i64* %13, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* @ALLOW, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i64, i64* @S_IXUSR, align 8
  %137 = load i64, i64* %12, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %12, align 8
  br label %139

139:                                              ; preds = %135, %128
  br label %140

140:                                              ; preds = %139, %123, %118
  br label %410

141:                                              ; preds = %70, %67
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @OWNING_GROUP, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @ACE_IDENTIFIER_GROUP, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %220

149:                                              ; preds = %145
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %10, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %220

153:                                              ; preds = %149, %141
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* @ACE_READ_DATA, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %153
  %159 = load i64, i64* %13, align 8
  %160 = load i64, i64* @S_IRGRP, align 8
  %161 = and i64 %159, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %158
  %164 = load i64, i64* @S_IRGRP, align 8
  %165 = load i64, i64* %13, align 8
  %166 = or i64 %165, %164
  store i64 %166, i64* %13, align 8
  %167 = load i64, i64* %17, align 8
  %168 = load i64, i64* @ALLOW, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load i64, i64* @S_IRGRP, align 8
  %172 = load i64, i64* %12, align 8
  %173 = or i64 %172, %171
  store i64 %173, i64* %12, align 8
  br label %174

174:                                              ; preds = %170, %163
  br label %175

175:                                              ; preds = %174, %158, %153
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* @ACE_WRITE_DATA, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %175
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* @S_IWGRP, align 8
  %183 = and i64 %181, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %197, label %185

185:                                              ; preds = %180
  %186 = load i64, i64* @S_IWGRP, align 8
  %187 = load i64, i64* %13, align 8
  %188 = or i64 %187, %186
  store i64 %188, i64* %13, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load i64, i64* @ALLOW, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load i64, i64* @S_IWGRP, align 8
  %194 = load i64, i64* %12, align 8
  %195 = or i64 %194, %193
  store i64 %195, i64* %12, align 8
  br label %196

196:                                              ; preds = %192, %185
  br label %197

197:                                              ; preds = %196, %180, %175
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* @ACE_EXECUTE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %197
  %203 = load i64, i64* %13, align 8
  %204 = load i64, i64* @S_IXGRP, align 8
  %205 = and i64 %203, %204
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %202
  %208 = load i64, i64* @S_IXGRP, align 8
  %209 = load i64, i64* %13, align 8
  %210 = or i64 %209, %208
  store i64 %210, i64* %13, align 8
  %211 = load i64, i64* %17, align 8
  %212 = load i64, i64* @ALLOW, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %207
  %215 = load i64, i64* @S_IXGRP, align 8
  %216 = load i64, i64* %12, align 8
  %217 = or i64 %216, %215
  store i64 %217, i64* %12, align 8
  br label %218

218:                                              ; preds = %214, %207
  br label %219

219:                                              ; preds = %218, %202, %197
  br label %409

220:                                              ; preds = %149, %145
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @ACE_EVERYONE, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %396

224:                                              ; preds = %220
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* @ACE_READ_DATA, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %281

229:                                              ; preds = %224
  %230 = load i64, i64* %13, align 8
  %231 = load i64, i64* @S_IRUSR, align 8
  %232 = and i64 %230, %231
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %229
  %235 = load i64, i64* @S_IRUSR, align 8
  %236 = load i64, i64* %13, align 8
  %237 = or i64 %236, %235
  store i64 %237, i64* %13, align 8
  %238 = load i64, i64* %17, align 8
  %239 = load i64, i64* @ALLOW, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %234
  %242 = load i64, i64* @S_IRUSR, align 8
  %243 = load i64, i64* %12, align 8
  %244 = or i64 %243, %242
  store i64 %244, i64* %12, align 8
  br label %245

245:                                              ; preds = %241, %234
  br label %246

246:                                              ; preds = %245, %229
  %247 = load i64, i64* %13, align 8
  %248 = load i64, i64* @S_IRGRP, align 8
  %249 = and i64 %247, %248
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %263, label %251

251:                                              ; preds = %246
  %252 = load i64, i64* @S_IRGRP, align 8
  %253 = load i64, i64* %13, align 8
  %254 = or i64 %253, %252
  store i64 %254, i64* %13, align 8
  %255 = load i64, i64* %17, align 8
  %256 = load i64, i64* @ALLOW, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %251
  %259 = load i64, i64* @S_IRGRP, align 8
  %260 = load i64, i64* %12, align 8
  %261 = or i64 %260, %259
  store i64 %261, i64* %12, align 8
  br label %262

262:                                              ; preds = %258, %251
  br label %263

263:                                              ; preds = %262, %246
  %264 = load i64, i64* %13, align 8
  %265 = load i64, i64* @S_IROTH, align 8
  %266 = and i64 %264, %265
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %280, label %268

268:                                              ; preds = %263
  %269 = load i64, i64* @S_IROTH, align 8
  %270 = load i64, i64* %13, align 8
  %271 = or i64 %270, %269
  store i64 %271, i64* %13, align 8
  %272 = load i64, i64* %17, align 8
  %273 = load i64, i64* @ALLOW, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %268
  %276 = load i64, i64* @S_IROTH, align 8
  %277 = load i64, i64* %12, align 8
  %278 = or i64 %277, %276
  store i64 %278, i64* %12, align 8
  br label %279

279:                                              ; preds = %275, %268
  br label %280

280:                                              ; preds = %279, %263
  br label %281

281:                                              ; preds = %280, %224
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* @ACE_WRITE_DATA, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %338

286:                                              ; preds = %281
  %287 = load i64, i64* %13, align 8
  %288 = load i64, i64* @S_IWUSR, align 8
  %289 = and i64 %287, %288
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %303, label %291

291:                                              ; preds = %286
  %292 = load i64, i64* @S_IWUSR, align 8
  %293 = load i64, i64* %13, align 8
  %294 = or i64 %293, %292
  store i64 %294, i64* %13, align 8
  %295 = load i64, i64* %17, align 8
  %296 = load i64, i64* @ALLOW, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %291
  %299 = load i64, i64* @S_IWUSR, align 8
  %300 = load i64, i64* %12, align 8
  %301 = or i64 %300, %299
  store i64 %301, i64* %12, align 8
  br label %302

302:                                              ; preds = %298, %291
  br label %303

303:                                              ; preds = %302, %286
  %304 = load i64, i64* %13, align 8
  %305 = load i64, i64* @S_IWGRP, align 8
  %306 = and i64 %304, %305
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %320, label %308

308:                                              ; preds = %303
  %309 = load i64, i64* @S_IWGRP, align 8
  %310 = load i64, i64* %13, align 8
  %311 = or i64 %310, %309
  store i64 %311, i64* %13, align 8
  %312 = load i64, i64* %17, align 8
  %313 = load i64, i64* @ALLOW, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %308
  %316 = load i64, i64* @S_IWGRP, align 8
  %317 = load i64, i64* %12, align 8
  %318 = or i64 %317, %316
  store i64 %318, i64* %12, align 8
  br label %319

319:                                              ; preds = %315, %308
  br label %320

320:                                              ; preds = %319, %303
  %321 = load i64, i64* %13, align 8
  %322 = load i64, i64* @S_IWOTH, align 8
  %323 = and i64 %321, %322
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %337, label %325

325:                                              ; preds = %320
  %326 = load i64, i64* @S_IWOTH, align 8
  %327 = load i64, i64* %13, align 8
  %328 = or i64 %327, %326
  store i64 %328, i64* %13, align 8
  %329 = load i64, i64* %17, align 8
  %330 = load i64, i64* @ALLOW, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %325
  %333 = load i64, i64* @S_IWOTH, align 8
  %334 = load i64, i64* %12, align 8
  %335 = or i64 %334, %333
  store i64 %335, i64* %12, align 8
  br label %336

336:                                              ; preds = %332, %325
  br label %337

337:                                              ; preds = %336, %320
  br label %338

338:                                              ; preds = %337, %281
  %339 = load i32, i32* %18, align 4
  %340 = load i32, i32* @ACE_EXECUTE, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %395

343:                                              ; preds = %338
  %344 = load i64, i64* %13, align 8
  %345 = load i64, i64* @S_IXUSR, align 8
  %346 = and i64 %344, %345
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %360, label %348

348:                                              ; preds = %343
  %349 = load i64, i64* @S_IXUSR, align 8
  %350 = load i64, i64* %13, align 8
  %351 = or i64 %350, %349
  store i64 %351, i64* %13, align 8
  %352 = load i64, i64* %17, align 8
  %353 = load i64, i64* @ALLOW, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %359

355:                                              ; preds = %348
  %356 = load i64, i64* @S_IXUSR, align 8
  %357 = load i64, i64* %12, align 8
  %358 = or i64 %357, %356
  store i64 %358, i64* %12, align 8
  br label %359

359:                                              ; preds = %355, %348
  br label %360

360:                                              ; preds = %359, %343
  %361 = load i64, i64* %13, align 8
  %362 = load i64, i64* @S_IXGRP, align 8
  %363 = and i64 %361, %362
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %377, label %365

365:                                              ; preds = %360
  %366 = load i64, i64* @S_IXGRP, align 8
  %367 = load i64, i64* %13, align 8
  %368 = or i64 %367, %366
  store i64 %368, i64* %13, align 8
  %369 = load i64, i64* %17, align 8
  %370 = load i64, i64* @ALLOW, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %376

372:                                              ; preds = %365
  %373 = load i64, i64* @S_IXGRP, align 8
  %374 = load i64, i64* %12, align 8
  %375 = or i64 %374, %373
  store i64 %375, i64* %12, align 8
  br label %376

376:                                              ; preds = %372, %365
  br label %377

377:                                              ; preds = %376, %360
  %378 = load i64, i64* %13, align 8
  %379 = load i64, i64* @S_IXOTH, align 8
  %380 = and i64 %378, %379
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %394, label %382

382:                                              ; preds = %377
  %383 = load i64, i64* @S_IXOTH, align 8
  %384 = load i64, i64* %13, align 8
  %385 = or i64 %384, %383
  store i64 %385, i64* %13, align 8
  %386 = load i64, i64* %17, align 8
  %387 = load i64, i64* @ALLOW, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %393

389:                                              ; preds = %382
  %390 = load i64, i64* @S_IXOTH, align 8
  %391 = load i64, i64* %12, align 8
  %392 = or i64 %391, %390
  store i64 %392, i64* %12, align 8
  br label %393

393:                                              ; preds = %389, %382
  br label %394

394:                                              ; preds = %393, %377
  br label %395

395:                                              ; preds = %394, %338
  br label %408

396:                                              ; preds = %220
  %397 = load i32, i32* %18, align 4
  %398 = load i32, i32* @ACE_EXECUTE, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %396
  %402 = load i64, i64* %17, align 8
  %403 = load i64, i64* @DENY, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %401
  %406 = load i64, i64* @B_TRUE, align 8
  store i64 %406, i64* %19, align 8
  br label %407

407:                                              ; preds = %405, %401, %396
  br label %408

408:                                              ; preds = %407, %395
  br label %409

409:                                              ; preds = %408, %219
  br label %410

410:                                              ; preds = %409, %140
  br label %30

411:                                              ; preds = %30
  %412 = load i64, i64* %19, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %428, label %414

414:                                              ; preds = %411
  %415 = load i64, i64* %13, align 8
  %416 = load i64, i64* @ALL_MODE_EXECS, align 8
  %417 = and i64 %415, %416
  %418 = load i64, i64* @ALL_MODE_EXECS, align 8
  %419 = icmp ne i64 %417, %418
  br i1 %419, label %426, label %420

420:                                              ; preds = %414
  %421 = load i64, i64* %12, align 8
  %422 = load i64, i64* @ALL_MODE_EXECS, align 8
  %423 = and i64 %421, %422
  %424 = load i64, i64* @ALL_MODE_EXECS, align 8
  %425 = icmp ne i64 %423, %424
  br i1 %425, label %426, label %428

426:                                              ; preds = %420, %414
  %427 = load i64, i64* @B_TRUE, align 8
  store i64 %427, i64* %19, align 8
  br label %428

428:                                              ; preds = %426, %420, %411
  %429 = load i64, i64* %19, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %428
  %432 = load i64, i64* @ZFS_NO_EXECS_DENIED, align 8
  %433 = xor i64 %432, -1
  %434 = load i64*, i64** %8, align 8
  %435 = load i64, i64* %434, align 8
  %436 = and i64 %435, %433
  store i64 %436, i64* %434, align 8
  br label %442

437:                                              ; preds = %428
  %438 = load i64, i64* @ZFS_NO_EXECS_DENIED, align 8
  %439 = load i64*, i64** %8, align 8
  %440 = load i64, i64* %439, align 8
  %441 = or i64 %440, %438
  store i64 %441, i64* %439, align 8
  br label %442

442:                                              ; preds = %437, %431
  %443 = load i64, i64* %12, align 8
  ret i64 %443
}

declare dso_local i32* @zfs_acl_next_ace(i32*, i32*, i64*, i32*, i64*, i64*) #1

declare dso_local i32 @zfs_acl_valid_ace_type(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
