; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/common/extr_opj_getopt.c_opj_getopt_long.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/common/extr_opj_getopt.c_opj_getopt_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@opj_getopt_long.lastidx = internal global i32 0, align 4
@opj_getopt_long.lastofs = internal global i32 0, align 4
@opj_optind = common dso_local global i32 0, align 4
@BADCH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: option does not require an argument. Ignoring %s\0A\00", align 1
@opj_optarg = common dso_local global i8* null, align 8
@opj_opterr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: option requires an argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: option requires an argument \0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid option %s\0A\00", align 1
@opj_optopt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Invalid option\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_getopt_long(i32 %0, i8** %1, i8* %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8 1, i8* %15, align 1
  br label %18

18:                                               ; preds = %289, %5
  %19 = load i32, i32* @opj_optind, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = load i8**, i8*** %8, align 8
  %24 = load i32, i32* @opj_optind, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i8**, i8*** %8, align 8
  %31 = load i32, i32* @opj_optind, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 45
  br i1 %37, label %38, label %39

38:                                               ; preds = %29, %22, %18
  store i32 -1, i32* %6, align 4
  br label %397

39:                                               ; preds = %29
  %40 = load i8**, i8*** %8, align 8
  %41 = load i32, i32* @opj_optind, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %80

49:                                               ; preds = %39
  %50 = load i8**, i8*** %8, align 8
  %51 = load i32, i32* @opj_optind, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %49
  %60 = load i32, i32* @opj_optind, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp sge i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i8 0, i8* %15, align 1
  br label %79

65:                                               ; preds = %59
  %66 = load i8**, i8*** %8, align 8
  %67 = load i32, i32* @opj_optind, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 45
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i8 0, i8* %15, align 1
  br label %78

77:                                               ; preds = %65
  store i8 2, i8* %15, align 1
  br label %78

78:                                               ; preds = %77, %76
  br label %79

79:                                               ; preds = %78, %64
  br label %80

80:                                               ; preds = %79, %49, %39
  %81 = load i8, i8* %15, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @opj_optind, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @opj_optind, align 4
  %87 = load i32, i32* @BADCH, align 4
  store i32 %87, i32* %6, align 4
  br label %397

88:                                               ; preds = %80
  %89 = load i8**, i8*** %8, align 8
  %90 = load i32, i32* @opj_optind, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 45
  br i1 %97, label %98, label %391

98:                                               ; preds = %88
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %99, %struct.TYPE_3__** %17, align 8
  store i32 24, i32* %14, align 4
  %100 = load i8, i8* %15, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load i32, i32* @opj_optind, align 4
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %7, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 -1, i32* %6, align 4
  br label %397

109:                                              ; preds = %103
  %110 = load i8**, i8*** %8, align 8
  %111 = load i32, i32* @opj_optind, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %16, align 8
  %116 = load i32, i32* @opj_optind, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @opj_optind, align 4
  br label %125

118:                                              ; preds = %98
  %119 = load i8**, i8*** %8, align 8
  %120 = load i32, i32* @opj_optind, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %124, i8** %16, align 8
  br label %125

125:                                              ; preds = %118, %109
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @strlen(i8* %126)
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %256

129:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %243, %129
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %249

134:                                              ; preds = %130
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %16, align 8
  %139 = call i32 @strcmp(i32 %137, i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %242, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %178

146:                                              ; preds = %141
  %147 = load i8**, i8*** %8, align 8
  %148 = load i32, i32* @opj_optind, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %147, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %177

154:                                              ; preds = %146
  %155 = load i8**, i8*** %8, align 8
  %156 = load i32, i32* @opj_optind, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 45
  br i1 %164, label %177, label %165

165:                                              ; preds = %154
  %166 = load i32, i32* @stderr, align 4
  %167 = load i8*, i8** %16, align 8
  %168 = load i8**, i8*** %8, align 8
  %169 = load i32, i32* @opj_optind, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %168, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %167, i8* %173)
  %175 = load i32, i32* @opj_optind, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* @opj_optind, align 4
  br label %177

177:                                              ; preds = %165, %154, %146
  br label %223

178:                                              ; preds = %141
  %179 = load i8**, i8*** %8, align 8
  %180 = load i32, i32* @opj_optind, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %179, i64 %182
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** @opj_optarg, align 8
  %185 = load i8*, i8** @opj_optarg, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %203

187:                                              ; preds = %178
  %188 = load i8*, i8** @opj_optarg, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 45
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  %194 = load i64, i64* @opj_opterr, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load i32, i32* @stderr, align 4
  %198 = load i8*, i8** %16, align 8
  %199 = call i32 (i32, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %198)
  %200 = load i32, i32* @BADCH, align 4
  store i32 %200, i32* %6, align 4
  br label %397

201:                                              ; preds = %193
  br label %202

202:                                              ; preds = %201, %187
  br label %203

203:                                              ; preds = %202, %178
  %204 = load i8*, i8** @opj_optarg, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %220, label %206

206:                                              ; preds = %203
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %220

211:                                              ; preds = %206
  %212 = load i64, i64* @opj_opterr, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, i32* @stderr, align 4
  %216 = load i8*, i8** %16, align 8
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %215, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %216)
  %218 = load i32, i32* @BADCH, align 4
  store i32 %218, i32* %6, align 4
  br label %397

219:                                              ; preds = %211
  br label %220

220:                                              ; preds = %219, %206, %203
  %221 = load i32, i32* @opj_optind, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* @opj_optind, align 4
  br label %223

223:                                              ; preds = %220, %177
  %224 = load i32, i32* @opj_optind, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* @opj_optind, align 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %237

230:                                              ; preds = %223
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  store i32 %233, i32* %236, align 4
  br label %241

237:                                              ; preds = %223
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  store i32 %240, i32* %6, align 4
  br label %397

241:                                              ; preds = %230
  store i32 0, i32* %6, align 4
  br label %397

242:                                              ; preds = %134
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %244, %245
  store i32 %246, i32* %13, align 4
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 1
  store %struct.TYPE_3__* %248, %struct.TYPE_3__** %17, align 8
  br label %130

249:                                              ; preds = %130
  %250 = load i32, i32* @stderr, align 4
  %251 = load i8*, i8** %16, align 8
  %252 = call i32 (i32, i8*, ...) @fprintf(i32 %250, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %251)
  %253 = load i32, i32* @opj_optind, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* @opj_optind, align 4
  %255 = load i32, i32* @BADCH, align 4
  store i32 %255, i32* %6, align 4
  br label %397

256:                                              ; preds = %125
  %257 = load i8*, i8** %9, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 58
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  store i32 58, i32* %6, align 4
  br label %397

262:                                              ; preds = %256
  %263 = load i32, i32* @opj_getopt_long.lastidx, align 4
  %264 = load i32, i32* @opj_optind, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = load i32, i32* @opj_optind, align 4
  store i32 %267, i32* @opj_getopt_long.lastidx, align 4
  store i32 0, i32* @opj_getopt_long.lastofs, align 4
  br label %268

268:                                              ; preds = %266, %262
  %269 = load i8**, i8*** %8, align 8
  %270 = load i32, i32* @opj_optind, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8*, i8** %269, i64 %271
  %273 = load i8*, i8** %272, align 8
  %274 = load i32, i32* @opj_getopt_long.lastofs, align 4
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %273, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  store i32 %279, i32* @opj_optopt, align 4
  %280 = load i8*, i8** %9, align 8
  %281 = load i32, i32* @opj_optopt, align 4
  %282 = call i8* @strchr(i8* %280, i32 %281)
  store i8* %282, i8** %12, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %384

284:                                              ; preds = %268
  %285 = load i8*, i8** %12, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load i32, i32* @opj_optind, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* @opj_optind, align 4
  br label %18

292:                                              ; preds = %284
  %293 = load i8*, i8** %12, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 58
  br i1 %297, label %298, label %375

298:                                              ; preds = %292
  %299 = load i8*, i8** %12, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 2
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp eq i32 %302, 58
  br i1 %303, label %317, label %304

304:                                              ; preds = %298
  %305 = load i8**, i8*** %8, align 8
  %306 = load i32, i32* @opj_optind, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8*, i8** %305, i64 %307
  %309 = load i8*, i8** %308, align 8
  %310 = load i32, i32* @opj_getopt_long.lastofs, align 4
  %311 = add nsw i32 %310, 2
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %309, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %331

317:                                              ; preds = %304, %298
  %318 = load i8**, i8*** %8, align 8
  %319 = load i32, i32* @opj_optind, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8*, i8** %318, i64 %320
  %322 = load i8*, i8** %321, align 8
  %323 = load i32, i32* @opj_getopt_long.lastofs, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %322, i64 %324
  %326 = getelementptr inbounds i8, i8* %325, i64 2
  store i8* %326, i8** @opj_optarg, align 8
  %327 = load i8, i8* %326, align 1
  %328 = icmp ne i8 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %317
  store i8* null, i8** @opj_optarg, align 8
  br label %330

330:                                              ; preds = %329, %317
  br label %380

331:                                              ; preds = %304
  %332 = load i8**, i8*** %8, align 8
  %333 = load i32, i32* @opj_optind, align 4
  %334 = add nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8*, i8** %332, i64 %335
  %337 = load i8*, i8** %336, align 8
  store i8* %337, i8** @opj_optarg, align 8
  %338 = load i8*, i8** @opj_optarg, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %358

340:                                              ; preds = %331
  %341 = load i8*, i8** @opj_optarg, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 0
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp eq i32 %344, 45
  br i1 %345, label %346, label %357

346:                                              ; preds = %340
  %347 = load i64, i64* @opj_opterr, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %356

349:                                              ; preds = %346
  %350 = load i32, i32* @stderr, align 4
  %351 = load i8*, i8** %16, align 8
  %352 = call i32 (i32, i8*, ...) @fprintf(i32 %350, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %351)
  %353 = load i32, i32* @opj_optind, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* @opj_optind, align 4
  %355 = load i32, i32* @BADCH, align 4
  store i32 %355, i32* %6, align 4
  br label %397

356:                                              ; preds = %346
  br label %357

357:                                              ; preds = %356, %340
  br label %358

358:                                              ; preds = %357, %331
  %359 = load i8*, i8** @opj_optarg, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %372, label %361

361:                                              ; preds = %358
  %362 = load i64, i64* @opj_opterr, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  %365 = load i32, i32* @stderr, align 4
  %366 = load i8*, i8** %16, align 8
  %367 = call i32 (i32, i8*, ...) @fprintf(i32 %365, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %366)
  %368 = load i32, i32* @opj_optind, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* @opj_optind, align 4
  %370 = load i32, i32* @BADCH, align 4
  store i32 %370, i32* %6, align 4
  br label %397

371:                                              ; preds = %361
  br label %372

372:                                              ; preds = %371, %358
  %373 = load i32, i32* @opj_optind, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* @opj_optind, align 4
  br label %379

375:                                              ; preds = %292
  %376 = load i32, i32* @opj_getopt_long.lastofs, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* @opj_getopt_long.lastofs, align 4
  %378 = load i32, i32* @opj_optopt, align 4
  store i32 %378, i32* %6, align 4
  br label %397

379:                                              ; preds = %372
  br label %380

380:                                              ; preds = %379, %330
  %381 = load i32, i32* @opj_optind, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* @opj_optind, align 4
  %383 = load i32, i32* @opj_optopt, align 4
  store i32 %383, i32* %6, align 4
  br label %397

384:                                              ; preds = %268
  %385 = load i32, i32* @stderr, align 4
  %386 = load i8*, i8** %16, align 8
  %387 = call i32 (i32, i8*, ...) @fprintf(i32 %385, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %386)
  %388 = load i32, i32* @opj_optind, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* @opj_optind, align 4
  %390 = load i32, i32* @BADCH, align 4
  store i32 %390, i32* %6, align 4
  br label %397

391:                                              ; preds = %88
  %392 = load i32, i32* @stderr, align 4
  %393 = call i32 (i32, i8*, ...) @fprintf(i32 %392, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %394 = load i32, i32* @opj_optind, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* @opj_optind, align 4
  %396 = load i32, i32* @BADCH, align 4
  store i32 %396, i32* %6, align 4
  br label %397

397:                                              ; preds = %391, %384, %380, %375, %364, %349, %261, %249, %241, %237, %214, %196, %108, %84, %38
  %398 = load i32, i32* %6, align 4
  ret i32 %398
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
