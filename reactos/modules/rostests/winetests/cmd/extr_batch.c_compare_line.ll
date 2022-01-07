; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/cmd/extr_batch.c_compare_line.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/cmd/extr_batch.c_compare_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@compare_line.pwd_cmd = internal constant [5 x i8] c"@pwd@", align 1
@compare_line.drive_cmd = internal constant [7 x i8] c"@drive@", align 1
@compare_line.path_cmd = internal constant [6 x i8] c"@path@", align 1
@compare_line.shortpath_cmd = internal constant [11 x i8] c"@shortpath@", align 1
@compare_line.space_cmd = internal constant [7 x i8] c"@space@", align 1
@compare_line.spaces_cmd = internal constant [8 x i8] c"@spaces@", align 1
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

15:                                               ; preds = %355, %353, %261, %237, %196, %170, %132, %94, %56, %4
  %16 = load i8*, i8** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %360

19:                                               ; preds = %15
  %20 = load i8*, i8** %11, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %24, label %307

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
  br label %306

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
  br label %305

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
  br label %304

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
  br label %303

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
  br label %302

202:                                              ; preds = %181, %176
  %203 = load i8*, i8** %11, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 8
  %205 = load i8*, i8** %9, align 8
  %206 = icmp ule i8* %204, %205
  br i1 %206, label %207, label %241

207:                                              ; preds = %202
  %208 = load i8*, i8** %11, align 8
  %209 = call i64 @memcmp(i8* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @compare_line.spaces_cmd, i64 0, i64 0), i32 8)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %241, label %211

211:                                              ; preds = %207
  %212 = load i8*, i8** %11, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 8
  store i8* %213, i8** %11, align 8
  %214 = load i8*, i8** %10, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = icmp ult i8* %214, %215
  br i1 %216, label %217, label %238

217:                                              ; preds = %211
  %218 = load i8*, i8** %10, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 32
  br i1 %221, label %222, label %238

222:                                              ; preds = %217
  br label %223

223:                                              ; preds = %234, %222
  %224 = load i8*, i8** %10, align 8
  %225 = load i8*, i8** %7, align 8
  %226 = icmp ult i8* %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load i8*, i8** %10, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 32
  br label %232

232:                                              ; preds = %227, %223
  %233 = phi i1 [ false, %223 ], [ %231, %227 ]
  br i1 %233, label %234, label %237

234:                                              ; preds = %232
  %235 = load i8*, i8** %10, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %10, align 8
  br label %223

237:                                              ; preds = %232
  br label %15

238:                                              ; preds = %217, %211
  %239 = load i8*, i8** %7, align 8
  store i8* %239, i8** %12, align 8
  br label %240

240:                                              ; preds = %238
  br label %301

241:                                              ; preds = %207, %202
  %242 = load i8*, i8** %11, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 5
  %244 = load i8*, i8** %9, align 8
  %245 = icmp ule i8* %243, %244
  br i1 %245, label %246, label %267

246:                                              ; preds = %241
  %247 = load i8*, i8** %11, align 8
  %248 = call i64 @memcmp(i8* %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @compare_line.tab_cmd, i64 0, i64 0), i32 5)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %267, label %250

250:                                              ; preds = %246
  %251 = load i8*, i8** %11, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 5
  store i8* %252, i8** %11, align 8
  %253 = load i8*, i8** %10, align 8
  %254 = load i8*, i8** %7, align 8
  %255 = icmp ult i8* %253, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %250
  %257 = load i8*, i8** %10, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 9
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load i8*, i8** %10, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %10, align 8
  br label %15

264:                                              ; preds = %256, %250
  %265 = load i8*, i8** %7, align 8
  store i8* %265, i8** %12, align 8
  br label %266

266:                                              ; preds = %264
  br label %300

267:                                              ; preds = %246, %241
  %268 = load i8*, i8** %11, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 11
  %270 = load i8*, i8** %9, align 8
  %271 = icmp ule i8* %269, %270
  br i1 %271, label %272, label %284

272:                                              ; preds = %267
  %273 = load i8*, i8** %11, align 8
  %274 = call i64 @memcmp(i8* %273, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @compare_line.or_broken_cmd, i64 0, i64 0), i32 11)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %272
  %277 = load i8*, i8** %10, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = icmp eq i8* %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  store i8* null, i8** %5, align 8
  br label %374

281:                                              ; preds = %276
  %282 = load i8*, i8** %10, align 8
  store i8* %282, i8** %12, align 8
  br label %283

283:                                              ; preds = %281
  br label %299

284:                                              ; preds = %272, %267
  %285 = load i8*, i8** %10, align 8
  %286 = load i8*, i8** %7, align 8
  %287 = icmp eq i8* %285, %286
  br i1 %287, label %296, label %288

288:                                              ; preds = %284
  %289 = load i8*, i8** %10, align 8
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = load i8*, i8** %11, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp ne i32 %291, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %288, %284
  %297 = load i8*, i8** %10, align 8
  store i8* %297, i8** %12, align 8
  br label %298

298:                                              ; preds = %296, %288
  br label %299

299:                                              ; preds = %298, %283
  br label %300

300:                                              ; preds = %299, %266
  br label %301

301:                                              ; preds = %300, %240
  br label %302

302:                                              ; preds = %301, %201
  br label %303

303:                                              ; preds = %302, %175
  br label %304

304:                                              ; preds = %303, %137
  br label %305

305:                                              ; preds = %304, %99
  br label %306

306:                                              ; preds = %305, %61
  br label %322

307:                                              ; preds = %19
  %308 = load i8*, i8** %10, align 8
  %309 = load i8*, i8** %7, align 8
  %310 = icmp eq i8* %308, %309
  br i1 %310, label %319, label %311

311:                                              ; preds = %307
  %312 = load i8*, i8** %10, align 8
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = load i8*, i8** %11, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp ne i32 %314, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %311, %307
  %320 = load i8*, i8** %10, align 8
  store i8* %320, i8** %12, align 8
  br label %321

321:                                              ; preds = %319, %311
  br label %322

322:                                              ; preds = %321, %306
  %323 = load i8*, i8** %12, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %355

325:                                              ; preds = %322
  %326 = call i32 @broken(i32 1)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %325
  %329 = load i8*, i8** %12, align 8
  store i8* %329, i8** %5, align 8
  br label %374

330:                                              ; preds = %325
  br label %331

331:                                              ; preds = %342, %330
  %332 = load i8*, i8** %11, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 11
  %334 = load i8*, i8** %9, align 8
  %335 = icmp ule i8* %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %331
  %337 = load i8*, i8** %11, align 8
  %338 = call i64 @memcmp(i8* %337, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @compare_line.or_broken_cmd, i64 0, i64 0), i32 11)
  %339 = icmp ne i64 %338, 0
  br label %340

340:                                              ; preds = %336, %331
  %341 = phi i1 [ false, %331 ], [ %339, %336 ]
  br i1 %341, label %342, label %345

342:                                              ; preds = %340
  %343 = load i8*, i8** %11, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %11, align 8
  br label %331

345:                                              ; preds = %340
  %346 = load i8*, i8** %11, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 11
  store i8* %347, i8** %11, align 8
  %348 = load i8*, i8** %11, align 8
  %349 = load i8*, i8** %9, align 8
  %350 = icmp ugt i8* %348, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %345
  %352 = load i8*, i8** %12, align 8
  store i8* %352, i8** %5, align 8
  br label %374

353:                                              ; preds = %345
  %354 = load i8*, i8** %6, align 8
  store i8* %354, i8** %10, align 8
  store i8* null, i8** %12, align 8
  br label %15

355:                                              ; preds = %322
  %356 = load i8*, i8** %11, align 8
  %357 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %357, i8** %11, align 8
  %358 = load i8*, i8** %10, align 8
  %359 = getelementptr inbounds i8, i8* %358, i32 1
  store i8* %359, i8** %10, align 8
  br label %15

360:                                              ; preds = %15
  %361 = load i8*, i8** %11, align 8
  %362 = load i8*, i8** %9, align 8
  %363 = icmp ne i8* %361, %362
  br i1 %363, label %364, label %366

364:                                              ; preds = %360
  %365 = load i8*, i8** %10, align 8
  store i8* %365, i8** %5, align 8
  br label %374

366:                                              ; preds = %360
  %367 = load i8*, i8** %10, align 8
  %368 = load i8*, i8** %7, align 8
  %369 = icmp ne i8* %367, %368
  br i1 %369, label %370, label %372

370:                                              ; preds = %366
  %371 = load i8*, i8** %9, align 8
  store i8* %371, i8** %5, align 8
  br label %374

372:                                              ; preds = %366
  br label %373

373:                                              ; preds = %372
  store i8* null, i8** %5, align 8
  br label %374

374:                                              ; preds = %373, %370, %364, %351, %328, %280
  %375 = load i8*, i8** %5, align 8
  ret i8* %375
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
