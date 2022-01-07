; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_ImportMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_ImportMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { float, i32* }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Channel\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Transponder\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%u %u %u\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%u:%02u\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Duration\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Frame Rate\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Lifetime\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ImportMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ImportMeta(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [50 x i8], align 16
  %18 = alloca %struct.tm, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = call i32* @OpenRelativeFile(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %300

32:                                               ; preds = %1
  %33 = call i32* (...) @vlc_meta_New()
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fclose(i32* %40)
  br label %300

42:                                               ; preds = %32
  store i8* null, i8** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  br label %43

43:                                               ; preds = %206, %59, %42
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @ReadLine(i8** %6, i64* %7, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %207

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @isalpha(i8 zeroext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 32
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %47
  br label %43

60:                                               ; preds = %53
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %11, align 1
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %12, align 8
  %66 = load i8, i8* %11, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 67
  br i1 %68, label %69, label %84

69:                                               ; preds = %60
  %70 = load i8*, i8** %12, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 32)
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i8*, i8** %13, align 8
  store i8 0, i8* %75, align 1
  %76 = load i32*, i32** %5, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = call i32 @vlc_meta_AddExtra(i32* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32*, i32** %5, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @vlc_meta_AddExtra(i32* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  br label %206

84:                                               ; preds = %60
  %85 = load i8, i8* %11, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 69
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @sscanf(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %14, i32* %15, i32* %16)
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %116

92:                                               ; preds = %88
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %19, align 4
  %94 = call i32 @localtime_r(i32* %19, %struct.tm* %18)
  %95 = getelementptr inbounds [50 x i8], [50 x i8]* %17, i64 0, i64 0
  %96 = call i32 @strftime(i8* %95, i32 50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %18)
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds [50 x i8], [50 x i8]* %17, i64 0, i64 0
  %99 = call i32 @vlc_meta_AddExtra(i32* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @free(i8* %100)
  %102 = getelementptr inbounds [50 x i8], [50 x i8]* %17, i64 0, i64 0
  %103 = call i8* @strdup(i8* %102)
  store i8* %103, i8** %10, align 8
  %104 = load i32, i32* %16, align 4
  %105 = add i32 %104, 59
  %106 = udiv i32 %105, 60
  store i32 %106, i32* %16, align 4
  %107 = getelementptr inbounds [50 x i8], [50 x i8]* %17, i64 0, i64 0
  %108 = load i32, i32* %16, align 4
  %109 = udiv i32 %108, 60
  %110 = load i32, i32* %16, align 4
  %111 = urem i32 %110, 60
  %112 = call i32 @snprintf(i8* %107, i32 50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %109, i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds [50 x i8], [50 x i8]* %17, i64 0, i64 0
  %115 = call i32 @vlc_meta_AddExtra(i32* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %92, %88
  br label %205

117:                                              ; preds = %84
  %118 = load i8, i8* %11, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 84
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i8*, i8** %12, align 8
  %125 = call i8* @strdup(i8* %124)
  store i8* %125, i8** %8, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @vlc_meta_AddExtra(i32* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %127)
  br label %204

129:                                              ; preds = %117
  %130 = load i8, i8* %11, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 83
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i8*, i8** %12, align 8
  %137 = call i8* @strdup(i8* %136)
  store i8* %137, i8** %9, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @vlc_meta_AddExtra(i32* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %139)
  br label %203

141:                                              ; preds = %129
  %142 = load i8, i8* %11, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 68
  br i1 %144, label %145, label %166

145:                                              ; preds = %141
  %146 = load i8*, i8** %12, align 8
  store i8* %146, i8** %20, align 8
  br label %147

147:                                              ; preds = %159, %145
  %148 = load i8*, i8** %20, align 8
  %149 = load i8, i8* %148, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i8*, i8** %20, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 124
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i8*, i8** %20, align 8
  store i8 10, i8* %157, align 1
  br label %158

158:                                              ; preds = %156, %151
  br label %159

159:                                              ; preds = %158
  %160 = load i8*, i8** %20, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %20, align 8
  br label %147

162:                                              ; preds = %147
  %163 = load i32*, i32** %5, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = call i32 @vlc_meta_SetDescription(i32* %163, i8* %164)
  br label %202

166:                                              ; preds = %141
  %167 = load i8, i8* %11, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 70
  br i1 %169, label %170, label %183

170:                                              ; preds = %166
  %171 = load i8*, i8** %12, align 8
  %172 = call float @atof(i8* %171)
  store float %172, float* %21, align 4
  %173 = load float, float* %21, align 4
  %174 = fcmp oge float %173, 1.000000e+00
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load float, float* %21, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store float %176, float* %178, align 8
  br label %179

179:                                              ; preds = %175, %170
  %180 = load i32*, i32** %5, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = call i32 @vlc_meta_AddExtra(i32* %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %181)
  br label %201

183:                                              ; preds = %166
  %184 = load i8, i8* %11, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 80
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i32*, i32** %5, align 8
  %189 = load i8*, i8** %12, align 8
  %190 = call i32 @vlc_meta_AddExtra(i32* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %189)
  br label %200

191:                                              ; preds = %183
  %192 = load i8, i8* %11, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 76
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load i32*, i32** %5, align 8
  %197 = load i8*, i8** %12, align 8
  %198 = call i32 @vlc_meta_AddExtra(i32* %196, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %195, %191
  br label %200

200:                                              ; preds = %199, %187
  br label %201

201:                                              ; preds = %200, %179
  br label %202

202:                                              ; preds = %201, %162
  br label %203

203:                                              ; preds = %202, %133
  br label %204

204:                                              ; preds = %203, %121
  br label %205

205:                                              ; preds = %204, %116
  br label %206

206:                                              ; preds = %205, %80
  br label %43

207:                                              ; preds = %43
  %208 = load i8*, i8** %8, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i8*, i8** %8, align 8
  %212 = call i32 @strlen(i8* %211)
  br label %214

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213, %210
  %215 = phi i32 [ %212, %210 ], [ 0, %213 ]
  %216 = add nsw i32 10, %215
  %217 = load i8*, i8** %9, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load i8*, i8** %9, align 8
  %221 = call i32 @strlen(i8* %220)
  br label %223

222:                                              ; preds = %214
  br label %223

223:                                              ; preds = %222, %219
  %224 = phi i32 [ %221, %219 ], [ 0, %222 ]
  %225 = add nsw i32 %216, %224
  %226 = load i8*, i8** %10, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load i8*, i8** %10, align 8
  %230 = call i32 @strlen(i8* %229)
  br label %232

231:                                              ; preds = %223
  br label %232

232:                                              ; preds = %231, %228
  %233 = phi i32 [ %230, %228 ], [ 0, %231 ]
  %234 = add nsw i32 %225, %233
  store i32 %234, i32* %22, align 4
  %235 = load i32, i32* %22, align 4
  %236 = call i8* @malloc(i32 %235)
  store i8* %236, i8** %23, align 8
  %237 = load i8*, i8** %23, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %289

239:                                              ; preds = %232
  %240 = load i8*, i8** %23, align 8
  store i8 0, i8* %240, align 1
  %241 = load i8*, i8** %8, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = load i8*, i8** %23, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = call i32 @strcat(i8* %244, i8* %245)
  br label %247

247:                                              ; preds = %243, %239
  %248 = load i8*, i8** %8, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load i8*, i8** %9, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i8*, i8** %23, align 8
  %255 = call i32 @strcat(i8* %254, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %256

256:                                              ; preds = %253, %250, %247
  %257 = load i8*, i8** %9, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %263

259:                                              ; preds = %256
  %260 = load i8*, i8** %23, align 8
  %261 = load i8*, i8** %9, align 8
  %262 = call i32 @strcat(i8* %260, i8* %261)
  br label %263

263:                                              ; preds = %259, %256
  %264 = load i8*, i8** %8, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = load i8*, i8** %9, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %280

269:                                              ; preds = %266, %263
  %270 = load i8*, i8** %10, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %280

272:                                              ; preds = %269
  %273 = load i8*, i8** %23, align 8
  %274 = call i32 @strcat(i8* %273, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %275 = load i8*, i8** %23, align 8
  %276 = load i8*, i8** %10, align 8
  %277 = call i32 @strcat(i8* %275, i8* %276)
  %278 = load i8*, i8** %23, align 8
  %279 = call i32 @strcat(i8* %278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %280

280:                                              ; preds = %272, %269, %266
  %281 = load i8*, i8** %23, align 8
  %282 = load i8, i8* %281, align 1
  %283 = icmp ne i8 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = load i32*, i32** %5, align 8
  %286 = load i8*, i8** %23, align 8
  %287 = call i32 @vlc_meta_SetTitle(i32* %285, i8* %286)
  br label %288

288:                                              ; preds = %284, %280
  br label %289

289:                                              ; preds = %288, %232
  %290 = load i8*, i8** %23, align 8
  %291 = call i32 @free(i8* %290)
  %292 = load i8*, i8** %8, align 8
  %293 = call i32 @free(i8* %292)
  %294 = load i8*, i8** %9, align 8
  %295 = call i32 @free(i8* %294)
  %296 = load i8*, i8** %10, align 8
  %297 = call i32 @free(i8* %296)
  %298 = load i32*, i32** %4, align 8
  %299 = call i32 @fclose(i32* %298)
  br label %300

300:                                              ; preds = %289, %39, %31
  ret void
}

declare dso_local i32* @OpenRelativeFile(%struct.TYPE_5__*, i8*) #1

declare dso_local i32* @vlc_meta_New(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ReadLine(i8**, i64*, i32*) #1

declare dso_local i32 @isalpha(i8 zeroext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @vlc_meta_AddExtra(i32*, i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @vlc_meta_SetDescription(i32*, i8*) #1

declare dso_local float @atof(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @vlc_meta_SetTitle(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
