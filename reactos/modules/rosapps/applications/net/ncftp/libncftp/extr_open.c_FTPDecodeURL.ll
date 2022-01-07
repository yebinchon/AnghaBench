; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_FTPDecodeURL.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_FTPDecodeURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32 }

@kTypeBinary = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"<URL:ftp://\00", align 1
@kMalformedURL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ftp://\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"type=i\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"type=a\00", align 1
@kTypeAscii = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"type=b\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"type=d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@kNoErr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPDecodeURL(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [32 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca [128 x i8], align 16
  %28 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @InitLineList(i32 %29)
  %31 = load i8*, i8** %12, align 8
  store i8 0, i8* %31, align 1
  %32 = load i32*, i32** %15, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %7
  %35 = load i32*, i32** %15, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %7
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @kTypeBinary, align 4
  %41 = load i32*, i32** %14, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  store i8* null, i8** %16, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  store i8* %51, i8** %16, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 62
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @kMalformedURL, align 4
  store i32 %57, i32* %8, align 4
  br label %334

58:                                               ; preds = %46
  %59 = load i8*, i8** %16, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 11
  store i8* %61, i8** %16, align 8
  br label %71

62:                                               ; preds = %42
  %63 = load i8*, i8** %10, align 8
  %64 = call i64 @strncmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 6
  store i8* %68, i8** %16, align 8
  br label %70

69:                                               ; preds = %62
  store i32 -1, i32* %8, align 4
  br label %334

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %58
  store i8* null, i8** %20, align 8
  %72 = load i8*, i8** %16, align 8
  store i8* %72, i8** %17, align 8
  br label %73

73:                                               ; preds = %100, %71
  %74 = load i8*, i8** %16, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 64
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i8*, i8** %20, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i8*, i8** %16, align 8
  store i8* %82, i8** %20, align 8
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @kMalformedURL, align 4
  store i32 %84, i32* %8, align 4
  br label %334

85:                                               ; preds = %81
  br label %99

86:                                               ; preds = %73
  %87 = load i8*, i8** %16, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i8*, i8** %16, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 47
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %86
  %97 = load i8*, i8** %16, align 8
  store i8* %97, i8** %18, align 8
  br label %103

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99
  %101 = load i8*, i8** %16, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %16, align 8
  br label %73

103:                                              ; preds = %96
  %104 = load i8*, i8** %18, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  store i32 %106, i32* %23, align 4
  %107 = load i8*, i8** %18, align 8
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %20, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i8*, i8** %17, align 8
  store i8* %111, i8** %19, align 8
  br label %164

112:                                              ; preds = %103
  %113 = load i8*, i8** %20, align 8
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %17, align 8
  %115 = call i8* @strchr(i8* %114, i8 signext 58)
  store i8* %115, i8** %16, align 8
  %116 = load i8*, i8** %16, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %112
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = load i8*, i8** %20, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = call i32 @URLCopyToken(i8* %121, i64 8, i8* %122, i64 %127)
  br label %160

129:                                              ; preds = %112
  %130 = load i8*, i8** %16, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = call i8* @strchr(i8* %131, i8 signext 58)
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @kMalformedURL, align 4
  store i32 %135, i32* %8, align 4
  br label %334

136:                                              ; preds = %129
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %17, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = call i32 @URLCopyToken(i8* %139, i64 8, i8* %140, i64 %145)
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i8*, i8** %16, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8*, i8** %20, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = ptrtoint i8* %152 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = call i32 @URLCopyToken(i8* %149, i64 8, i8* %151, i64 %157)
  br label %159

159:                                              ; preds = %136
  br label %160

160:                                              ; preds = %159, %118
  %161 = load i8*, i8** %20, align 8
  store i8 64, i8* %161, align 1
  %162 = load i8*, i8** %20, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  store i8* %163, i8** %19, align 8
  br label %164

164:                                              ; preds = %160, %110
  %165 = load i8*, i8** %19, align 8
  %166 = call i8* @strchr(i8* %165, i8 signext 58)
  store i8* %166, i8** %16, align 8
  %167 = load i8*, i8** %16, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** %19, align 8
  %174 = load i8*, i8** %18, align 8
  %175 = load i8*, i8** %19, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = call i32 @URLCopyToken(i8* %172, i64 8, i8* %173, i64 %178)
  br label %218

180:                                              ; preds = %164
  %181 = load i8*, i8** %16, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = call i8* @strchr(i8* %182, i8 signext 58)
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* @kMalformedURL, align 4
  store i32 %186, i32* %8, align 4
  br label %334

187:                                              ; preds = %180
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = load i8*, i8** %19, align 8
  %192 = load i8*, i8** %16, align 8
  %193 = load i8*, i8** %19, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = call i32 @URLCopyToken(i8* %190, i64 8, i8* %191, i64 %196)
  %198 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %199 = load i8*, i8** %16, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8*, i8** %18, align 8
  %202 = load i8*, i8** %16, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = ptrtoint i8* %201 to i64
  %205 = ptrtoint i8* %203 to i64
  %206 = sub i64 %204, %205
  %207 = call i32 @URLCopyToken(i8* %198, i64 32, i8* %200, i64 %206)
  %208 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %209 = call i32 @atoi(i8* %208)
  store i32 %209, i32* %22, align 4
  %210 = load i32, i32* %22, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %187
  %213 = load i32, i32* %22, align 4
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %212, %187
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217, %169
  %219 = load i32, i32* %23, align 4
  %220 = trunc i32 %219 to i8
  %221 = load i8*, i8** %18, align 8
  store i8 %220, i8* %221, align 1
  %222 = load i8*, i8** %18, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %237, label %226

226:                                              ; preds = %218
  %227 = load i8*, i8** %18, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 47
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load i8*, i8** %18, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231, %218
  store i32 0, i32* %8, align 4
  br label %334

238:                                              ; preds = %231, %226
  %239 = load i8*, i8** %18, align 8
  %240 = call i8* @strrchr(i8* %239, i8 signext 47)
  store i8* %240, i8** %24, align 8
  %241 = load i8*, i8** %24, align 8
  %242 = icmp eq i8* %241, null
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  store i32 0, i32* %8, align 4
  br label %334

244:                                              ; preds = %238
  %245 = load i8*, i8** %24, align 8
  store i8 0, i8* %245, align 1
  %246 = load i8*, i8** %24, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  %248 = call i8* @strchr(i8* %247, i8 signext 59)
  store i8* %248, i8** %28, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %307

250:                                              ; preds = %244
  %251 = load i8*, i8** %28, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %28, align 8
  store i8 0, i8* %251, align 1
  %253 = load i8*, i8** %28, align 8
  %254 = call i64 @strcmp(i8* %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %250
  %257 = load i32*, i32** %14, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32, i32* @kTypeBinary, align 4
  %261 = load i32*, i32** %14, align 8
  store i32 %260, i32* %261, align 4
  br label %262

262:                                              ; preds = %259, %256
  br label %306

263:                                              ; preds = %250
  %264 = load i8*, i8** %28, align 8
  %265 = call i64 @strcmp(i8* %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %263
  %268 = load i32*, i32** %14, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32, i32* @kTypeAscii, align 4
  %272 = load i32*, i32** %14, align 8
  store i32 %271, i32* %272, align 4
  br label %273

273:                                              ; preds = %270, %267
  br label %305

274:                                              ; preds = %263
  %275 = load i8*, i8** %28, align 8
  %276 = call i64 @strcmp(i8* %275, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %274
  %279 = load i32*, i32** %14, align 8
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load i32, i32* @kTypeBinary, align 4
  %283 = load i32*, i32** %14, align 8
  store i32 %282, i32* %283, align 4
  br label %284

284:                                              ; preds = %281, %278
  br label %304

285:                                              ; preds = %274
  %286 = load i8*, i8** %28, align 8
  %287 = call i64 @strcmp(i8* %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %303

289:                                              ; preds = %285
  %290 = load i32*, i32** %15, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %300

292:                                              ; preds = %289
  %293 = load i32*, i32** %15, align 8
  store i32 1, i32* %293, align 4
  %294 = load i32*, i32** %14, align 8
  %295 = icmp ne i32* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %292
  %297 = load i32, i32* @kTypeAscii, align 4
  %298 = load i32*, i32** %14, align 8
  store i32 %297, i32* %298, align 4
  br label %299

299:                                              ; preds = %296, %292
  br label %302

300:                                              ; preds = %289
  %301 = load i32, i32* @kMalformedURL, align 4
  store i32 %301, i32* %8, align 4
  br label %334

302:                                              ; preds = %299
  br label %303

303:                                              ; preds = %302, %285
  br label %304

304:                                              ; preds = %303, %284
  br label %305

305:                                              ; preds = %304, %273
  br label %306

306:                                              ; preds = %305, %262
  br label %307

307:                                              ; preds = %306, %244
  %308 = load i8*, i8** %12, align 8
  %309 = load i64, i64* %13, align 8
  %310 = load i8*, i8** %24, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 1
  %312 = load i8*, i8** %24, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 1
  %314 = call i64 @strlen(i8* %313)
  %315 = call i32 @URLCopyToken(i8* %308, i64 %309, i8* %311, i64 %314)
  %316 = load i8*, i8** %18, align 8
  store i8* %316, i8** %25, align 8
  br label %317

317:                                              ; preds = %330, %307
  %318 = load i8*, i8** %25, align 8
  %319 = call i8* @strtok(i8* %318, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %319, i8** %26, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %331

321:                                              ; preds = %317
  %322 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %323 = load i8*, i8** %26, align 8
  %324 = load i8*, i8** %26, align 8
  %325 = call i64 @strlen(i8* %324)
  %326 = call i32 @URLCopyToken(i8* %322, i64 128, i8* %323, i64 %325)
  %327 = load i32, i32* %11, align 4
  %328 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %329 = call i32 @AddLine(i32 %327, i8* %328)
  br label %330

330:                                              ; preds = %321
  store i8* null, i8** %25, align 8
  br label %317

331:                                              ; preds = %317
  %332 = load i8*, i8** %24, align 8
  store i8 47, i8* %332, align 1
  %333 = load i32, i32* @kNoErr, align 4
  store i32 %333, i32* %8, align 4
  br label %334

334:                                              ; preds = %331, %300, %243, %237, %185, %134, %83, %69, %56
  %335 = load i32, i32* %8, align 4
  ret i32 %335
}

declare dso_local i32 @InitLineList(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @URLCopyToken(i8*, i64, i8*, i64) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @AddLine(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
