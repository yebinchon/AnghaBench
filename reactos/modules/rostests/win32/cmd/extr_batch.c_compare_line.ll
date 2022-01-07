; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/cmd/extr_batch.c_compare_line.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/cmd/extr_batch.c_compare_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@compare_line.pwd_cmd = internal constant [5 x i8] c"@pwd@", align 1
@compare_line.drive_cmd = internal constant [7 x i8] c"@drive@", align 1
@compare_line.path_cmd = internal constant [6 x i8] c"@path@", align 1
@compare_line.shortpath_cmd = internal constant [11 x i8] c"@shortpath@", align 1
@compare_line.space_cmd = internal constant [7 x i8] c"@space@", align 1
@compare_line.tab_cmd = internal constant [5 x i8] c"@tab@", align 1
@compare_line.or_broken_cmd = internal constant [11 x i8] c"@or_broken@", align 1
@workdir_len = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@workdir = common dso_local global i32 0, align 4
@CSTR_EQUAL = common dso_local global i64 0, align 8
@drive_len = common dso_local global i32 0, align 4
@drive = common dso_local global i32 0, align 4
@path_len = common dso_local global i32 0, align 4
@path = common dso_local global i32 0, align 4
@shortpath_len = common dso_local global i32 0, align 4
@shortpath = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i8*)* @compare_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compare_line(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %11, align 8
  store i8* null, i8** %12, align 8
  br label %15

15:                                               ; preds = %314, %310, %222, %196, %170, %132, %94, %56, %4
  %16 = load i8*, i8** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %319

19:                                               ; preds = %15
  %20 = load i8*, i8** %11, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %24, label %267

24:                                               ; preds = %19
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 5
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ule i8* %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @memcmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @compare_line.pwd_cmd, i64 0, i64 0), i32 5)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = load i32, i32* @workdir_len, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %46 = load i32, i32* @NORM_IGNORECASE, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* @workdir_len, align 4
  %49 = load i32, i32* @workdir, align 4
  %50 = load i32, i32* @workdir_len, align 4
  %51 = call i64 @CompareStringA(i32 %45, i32 %46, i8* %47, i32 %48, i32 %49, i32 %50)
  %52 = load i64, i64* @CSTR_EQUAL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44, %33
  %55 = load i8*, i8** %10, align 8
  store i8* %55, i8** %12, align 8
  br label %61

56:                                               ; preds = %44
  %57 = load i32, i32* @workdir_len, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %10, align 8
  br label %15

61:                                               ; preds = %54
  br label %266

62:                                               ; preds = %29, %24
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 7
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ule i8* %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %62
  %68 = load i8*, i8** %11, align 8
  %69 = call i64 @memcmp(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @compare_line.drive_cmd, i64 0, i64 0), i32 7)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 7
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = load i32, i32* @drive_len, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %78, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %71
  %83 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %84 = load i32, i32* @NORM_IGNORECASE, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* @drive_len, align 4
  %87 = load i32, i32* @drive, align 4
  %88 = load i32, i32* @drive_len, align 4
  %89 = call i64 @CompareStringA(i32 %83, i32 %84, i8* %85, i32 %86, i32 %87, i32 %88)
  %90 = load i64, i64* @CSTR_EQUAL, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %82, %71
  %93 = load i8*, i8** %10, align 8
  store i8* %93, i8** %12, align 8
  br label %99

94:                                               ; preds = %82
  %95 = load i32, i32* @drive_len, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %10, align 8
  br label %15

99:                                               ; preds = %92
  br label %265

100:                                              ; preds = %67, %62
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 6
  %103 = load i8*, i8** %9, align 8
  %104 = icmp ule i8* %102, %103
  br i1 %104, label %105, label %138

105:                                              ; preds = %100
  %106 = load i8*, i8** %11, align 8
  %107 = call i64 @memcmp(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @compare_line.path_cmd, i64 0, i64 0), i32 6)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %138, label %109

109:                                              ; preds = %105
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 6
  store i8* %111, i8** %11, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = load i32, i32* @path_len, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %116, %118
  br i1 %119, label %130, label %120

120:                                              ; preds = %109
  %121 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %122 = load i32, i32* @NORM_IGNORECASE, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* @path_len, align 4
  %125 = load i32, i32* @path, align 4
  %126 = load i32, i32* @path_len, align 4
  %127 = call i64 @CompareStringA(i32 %121, i32 %122, i8* %123, i32 %124, i32 %125, i32 %126)
  %128 = load i64, i64* @CSTR_EQUAL, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %120, %109
  %131 = load i8*, i8** %10, align 8
  store i8* %131, i8** %12, align 8
  br label %137

132:                                              ; preds = %120
  %133 = load i32, i32* @path_len, align 4
  %134 = load i8*, i8** %10, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %10, align 8
  br label %15

137:                                              ; preds = %130
  br label %264

138:                                              ; preds = %105, %100
  %139 = load i8*, i8** %11, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 11
  %141 = load i8*, i8** %9, align 8
  %142 = icmp ule i8* %140, %141
  br i1 %142, label %143, label %176

143:                                              ; preds = %138
  %144 = load i8*, i8** %11, align 8
  %145 = call i64 @memcmp(i8* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @compare_line.shortpath_cmd, i64 0, i64 0), i32 11)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %176, label %147

147:                                              ; preds = %143
  %148 = load i8*, i8** %11, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 11
  store i8* %149, i8** %11, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = load i32, i32* @shortpath_len, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %154, %156
  br i1 %157, label %168, label %158

158:                                              ; preds = %147
  %159 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %160 = load i32, i32* @NORM_IGNORECASE, align 4
  %161 = load i8*, i8** %10, align 8
  %162 = load i32, i32* @shortpath_len, align 4
  %163 = load i32, i32* @shortpath, align 4
  %164 = load i32, i32* @shortpath_len, align 4
  %165 = call i64 @CompareStringA(i32 %159, i32 %160, i8* %161, i32 %162, i32 %163, i32 %164)
  %166 = load i64, i64* @CSTR_EQUAL, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %158, %147
  %169 = load i8*, i8** %10, align 8
  store i8* %169, i8** %12, align 8
  br label %175

170:                                              ; preds = %158
  %171 = load i32, i32* @shortpath_len, align 4
  %172 = load i8*, i8** %10, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %10, align 8
  br label %15

175:                                              ; preds = %168
  br label %263

176:                                              ; preds = %143, %138
  %177 = load i8*, i8** %11, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 7
  %179 = load i8*, i8** %9, align 8
  %180 = icmp ule i8* %178, %179
  br i1 %180, label %181, label %202

181:                                              ; preds = %176
  %182 = load i8*, i8** %11, align 8
  %183 = call i64 @memcmp(i8* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @compare_line.space_cmd, i64 0, i64 0), i32 7)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %202, label %185

185:                                              ; preds = %181
  %186 = load i8*, i8** %11, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 7
  store i8* %187, i8** %11, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = icmp ult i8* %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %185
  %192 = load i8*, i8** %10, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 32
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i8*, i8** %10, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %10, align 8
  br label %15

199:                                              ; preds = %191, %185
  %200 = load i8*, i8** %7, align 8
  store i8* %200, i8** %12, align 8
  br label %201

201:                                              ; preds = %199
  br label %262

202:                                              ; preds = %181, %176
  %203 = load i8*, i8** %11, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 5
  %205 = load i8*, i8** %9, align 8
  %206 = icmp ule i8* %204, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %202
  %208 = load i8*, i8** %11, align 8
  %209 = call i64 @memcmp(i8* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @compare_line.tab_cmd, i64 0, i64 0), i32 5)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %228, label %211

211:                                              ; preds = %207
  %212 = load i8*, i8** %11, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 5
  store i8* %213, i8** %11, align 8
  %214 = load i8*, i8** %10, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = icmp ult i8* %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %211
  %218 = load i8*, i8** %10, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 9
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i8*, i8** %10, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %10, align 8
  br label %15

225:                                              ; preds = %217, %211
  %226 = load i8*, i8** %7, align 8
  store i8* %226, i8** %12, align 8
  br label %227

227:                                              ; preds = %225
  br label %261

228:                                              ; preds = %207, %202
  %229 = load i8*, i8** %11, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 11
  %231 = load i8*, i8** %9, align 8
  %232 = icmp ule i8* %230, %231
  br i1 %232, label %233, label %245

233:                                              ; preds = %228
  %234 = load i8*, i8** %11, align 8
  %235 = call i64 @memcmp(i8* %234, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @compare_line.or_broken_cmd, i64 0, i64 0), i32 11)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %233
  %238 = load i8*, i8** %10, align 8
  %239 = load i8*, i8** %7, align 8
  %240 = icmp eq i8* %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  store i8* null, i8** %5, align 8
  br label %333

242:                                              ; preds = %237
  %243 = load i8*, i8** %10, align 8
  store i8* %243, i8** %12, align 8
  br label %244

244:                                              ; preds = %242
  br label %260

245:                                              ; preds = %233, %228
  %246 = load i8*, i8** %10, align 8
  %247 = load i8*, i8** %7, align 8
  %248 = icmp eq i8* %246, %247
  br i1 %248, label %257, label %249

249:                                              ; preds = %245
  %250 = load i8*, i8** %10, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = load i8*, i8** %11, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %252, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %249, %245
  %258 = load i8*, i8** %10, align 8
  store i8* %258, i8** %12, align 8
  br label %259

259:                                              ; preds = %257, %249
  br label %260

260:                                              ; preds = %259, %244
  br label %261

261:                                              ; preds = %260, %227
  br label %262

262:                                              ; preds = %261, %201
  br label %263

263:                                              ; preds = %262, %175
  br label %264

264:                                              ; preds = %263, %137
  br label %265

265:                                              ; preds = %264, %99
  br label %266

266:                                              ; preds = %265, %61
  br label %282

267:                                              ; preds = %19
  %268 = load i8*, i8** %10, align 8
  %269 = load i8*, i8** %7, align 8
  %270 = icmp eq i8* %268, %269
  br i1 %270, label %279, label %271

271:                                              ; preds = %267
  %272 = load i8*, i8** %10, align 8
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = load i8*, i8** %11, align 8
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp ne i32 %274, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %271, %267
  %280 = load i8*, i8** %10, align 8
  store i8* %280, i8** %12, align 8
  br label %281

281:                                              ; preds = %279, %271
  br label %282

282:                                              ; preds = %281, %266
  %283 = load i8*, i8** %12, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %314

285:                                              ; preds = %282
  %286 = call i32 @broken(i32 1)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %285
  %289 = load i8*, i8** %12, align 8
  store i8* %289, i8** %5, align 8
  br label %333

290:                                              ; preds = %285
  br label %291

291:                                              ; preds = %302, %290
  %292 = load i8*, i8** %11, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 11
  %294 = load i8*, i8** %9, align 8
  %295 = icmp ule i8* %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %291
  %297 = load i8*, i8** %11, align 8
  %298 = call i64 @memcmp(i8* %297, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @compare_line.or_broken_cmd, i64 0, i64 0), i32 11)
  %299 = icmp ne i64 %298, 0
  br label %300

300:                                              ; preds = %296, %291
  %301 = phi i1 [ false, %291 ], [ %299, %296 ]
  br i1 %301, label %302, label %305

302:                                              ; preds = %300
  %303 = load i8*, i8** %11, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %11, align 8
  br label %291

305:                                              ; preds = %300
  %306 = load i8*, i8** %11, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %310, label %308

308:                                              ; preds = %305
  %309 = load i8*, i8** %12, align 8
  store i8* %309, i8** %5, align 8
  br label %333

310:                                              ; preds = %305
  %311 = load i8*, i8** %11, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 11
  store i8* %312, i8** %11, align 8
  %313 = load i8*, i8** %6, align 8
  store i8* %313, i8** %10, align 8
  store i8* null, i8** %12, align 8
  br label %15

314:                                              ; preds = %282
  %315 = load i8*, i8** %11, align 8
  %316 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %316, i8** %11, align 8
  %317 = load i8*, i8** %10, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %10, align 8
  br label %15

319:                                              ; preds = %15
  %320 = load i8*, i8** %11, align 8
  %321 = load i8*, i8** %9, align 8
  %322 = icmp ne i8* %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %319
  %324 = load i8*, i8** %10, align 8
  store i8* %324, i8** %5, align 8
  br label %333

325:                                              ; preds = %319
  %326 = load i8*, i8** %10, align 8
  %327 = load i8*, i8** %7, align 8
  %328 = icmp ne i8* %326, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %325
  %330 = load i8*, i8** %9, align 8
  store i8* %330, i8** %5, align 8
  br label %333

331:                                              ; preds = %325
  br label %332

332:                                              ; preds = %331
  store i8* null, i8** %5, align 8
  br label %333

333:                                              ; preds = %332, %329, %323, %308, %288, %241
  %334 = load i8*, i8** %5, align 8
  ret i8* %334
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @CompareStringA(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
