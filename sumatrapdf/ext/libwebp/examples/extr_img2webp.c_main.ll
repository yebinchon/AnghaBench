; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_img2webp.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_img2webp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i8*, i8* }
%struct.TYPE_23__ = type { i32, i8*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i8** }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Library version mismatch!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-kmin\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-kmax\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-loop\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Invalid non-positive loop-count (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"-min_size\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"-mixed\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"WebP Encoder version: %d.%d.%d\0AWebP Mux version: %d.%d.%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"No input file(s) for generating animation!\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"-lossy\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"-lossless\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Invalid negative duration (%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Unknown option [%s]\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Invalid configuration.\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Could not create WebPAnimEncoder object.\0A\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"Frame #%d dimension mismatched! Got %d x %d. Was expecting %d x %d.\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Error while adding frame #%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Added frame #%3d at time %4d (file: %s)\0A\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Error during final animation assembly.\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"output file: %s     \00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"[no output file specified]   \00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"[%d frames, %u bytes].\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__, align 8
  %16 = alloca %struct.TYPE_23__, align 8
  %17 = alloca %struct.TYPE_21__, align 4
  %18 = alloca %struct.TYPE_22__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_25__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 100, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @INIT_WARGV(i32 %27, i8** %28)
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = call i32 @ExUtilInitCommandLineArguments(i32 %31, i8** %33, %struct.TYPE_25__* %21)
  store i32 %34, i32* %22, align 4
  %35 = load i32, i32* %22, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  %38 = call i32 @FREE_WARGV_AND_RETURN(i32 1)
  br label %39

39:                                               ; preds = %37, %2
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  store i8** %43, i8*** %5, align 8
  %44 = call i32 @WebPDataInit(%struct.TYPE_22__* %18)
  %45 = call i32 @WebPAnimEncoderOptionsInit(%struct.TYPE_24__* %15)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = call i32 @WebPConfigInit(%struct.TYPE_23__* %16)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = call i32 @WebPPictureInit(%struct.TYPE_21__* %17)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50, %47, %39
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %22, align 4
  br label %581

56:                                               ; preds = %50
  store i32 0, i32* %19, align 4
  br label %57

57:                                               ; preds = %284, %56
  %58 = load i32, i32* %22, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %66, label %287

66:                                               ; preds = %64
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 45
  br i1 %75, label %76, label %280

76:                                               ; preds = %66
  store i32 0, i32* %23, align 4
  %77 = load i8**, i8*** %5, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* null, i8** %93, align 8
  %94 = load i8**, i8*** %5, align 8
  %95 = load i32, i32* %19, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %19, align 4
  %97 = call i64 @GET_WARGV_SHIFTED(i8** %94, i32 %96)
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %6, align 8
  br label %267

99:                                               ; preds = %84, %76
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  store i8* null, i8** %116, align 8
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %19, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @ExUtilGetInt(i8* %122, i32 0, i32* %23)
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 3
  store i8* %123, i8** %124, align 8
  br label %266

125:                                              ; preds = %107, %99
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* %4, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* null, i8** %142, align 8
  %143 = load i8**, i8*** %5, align 8
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %143, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @ExUtilGetInt(i8* %148, i32 0, i32* %23)
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  store i8* %149, i8** %150, align 8
  br label %265

151:                                              ; preds = %133, %125
  %152 = load i8**, i8*** %5, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %184, label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* %4, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %159
  %165 = load i8**, i8*** %5, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  store i8* null, i8** %168, align 8
  %169 = load i8**, i8*** %5, align 8
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %19, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %169, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @ExUtilGetInt(i8* %174, i32 0, i32* %23)
  %176 = ptrtoint i8* %175 to i32
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %164
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  store i32 1, i32* %23, align 4
  br label %183

183:                                              ; preds = %179, %164
  br label %264

184:                                              ; preds = %159, %151
  %185 = load i8**, i8*** %5, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %184
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  store i32 1, i32* %193, align 8
  br label %263

194:                                              ; preds = %184
  %195 = load i8**, i8*** %5, align 8
  %196 = load i32, i32* %19, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  store i32 1, i32* %203, align 4
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  store i32 0, i32* %204, align 8
  br label %262

205:                                              ; preds = %194
  %206 = load i8**, i8*** %5, align 8
  %207 = load i32, i32* %19, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %205
  store i32 1, i32* %8, align 4
  br label %261

214:                                              ; preds = %205
  %215 = load i8**, i8*** %5, align 8
  %216 = load i32, i32* %19, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %214
  %223 = load i8**, i8*** %5, align 8
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %222, %214
  %231 = call i32 (...) @Help()
  br label %581

232:                                              ; preds = %222
  %233 = load i8**, i8*** %5, align 8
  %234 = load i32, i32* %19, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %260, label %240

240:                                              ; preds = %232
  %241 = call i32 (...) @WebPGetEncoderVersion()
  store i32 %241, i32* %24, align 4
  %242 = call i32 (...) @WebPGetMuxVersion()
  store i32 %242, i32* %25, align 4
  %243 = load i32, i32* %24, align 4
  %244 = ashr i32 %243, 16
  %245 = and i32 %244, 255
  %246 = load i32, i32* %24, align 4
  %247 = ashr i32 %246, 8
  %248 = and i32 %247, 255
  %249 = load i32, i32* %24, align 4
  %250 = and i32 %249, 255
  %251 = load i32, i32* %25, align 4
  %252 = ashr i32 %251, 16
  %253 = and i32 %252, 255
  %254 = load i32, i32* %25, align 4
  %255 = ashr i32 %254, 8
  %256 = and i32 %255, 255
  %257 = load i32, i32* %25, align 4
  %258 = and i32 %257, 255
  %259 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i32 %245, i32 %248, i32 %250, i32 %253, i32 %256, i32 %258)
  br label %581

260:                                              ; preds = %232
  br label %284

261:                                              ; preds = %213
  br label %262

262:                                              ; preds = %261, %202
  br label %263

263:                                              ; preds = %262, %192
  br label %264

264:                                              ; preds = %263, %183
  br label %265

265:                                              ; preds = %264, %138
  br label %266

266:                                              ; preds = %265, %112
  br label %267

267:                                              ; preds = %266, %89
  %268 = load i32, i32* %23, align 4
  %269 = icmp ne i32 %268, 0
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i32
  store i32 %271, i32* %22, align 4
  %272 = load i32, i32* %22, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %267
  br label %581

275:                                              ; preds = %267
  %276 = load i8**, i8*** %5, align 8
  %277 = load i32, i32* %19, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  store i8* null, i8** %279, align 8
  br label %283

280:                                              ; preds = %66
  %281 = load i32, i32* %20, align 4
  %282 = or i32 %281, 1
  store i32 %282, i32* %20, align 4
  br label %283

283:                                              ; preds = %280, %275
  br label %284

284:                                              ; preds = %283, %260
  %285 = load i32, i32* %19, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %19, align 4
  br label %57

287:                                              ; preds = %64
  %288 = load i32, i32* %20, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = load i32, i32* @stderr, align 4
  %292 = call i32 (i32, i8*, ...) @fprintf(i32 %291, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  br label %581

293:                                              ; preds = %287
  store i32 0, i32* %9, align 4
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  store i32 1, i32* %294, align 8
  store i32 0, i32* %19, align 4
  br label %295

295:                                              ; preds = %552, %293
  %296 = load i32, i32* %22, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %295
  %299 = load i32, i32* %19, align 4
  %300 = load i32, i32* %4, align 4
  %301 = icmp slt i32 %299, %300
  br label %302

302:                                              ; preds = %298, %295
  %303 = phi i1 [ false, %295 ], [ %301, %298 ]
  br i1 %303, label %304, label %555

304:                                              ; preds = %302
  %305 = load i8**, i8*** %5, align 8
  %306 = load i32, i32* %19, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8*, i8** %305, i64 %307
  %309 = load i8*, i8** %308, align 8
  %310 = icmp eq i8* %309, null
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  br label %552

312:                                              ; preds = %304
  %313 = load i8**, i8*** %5, align 8
  %314 = load i32, i32* %19, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8*, i8** %313, i64 %315
  %317 = load i8*, i8** %316, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 0
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = icmp eq i32 %320, 45
  br i1 %321, label %322, label %446

322:                                              ; preds = %312
  store i32 0, i32* %26, align 4
  %323 = load i8**, i8*** %5, align 8
  %324 = load i32, i32* %19, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8*, i8** %323, i64 %325
  %327 = load i8*, i8** %326, align 8
  %328 = call i32 @strcmp(i8* %327, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %337, label %330

330:                                              ; preds = %322
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %336, label %334

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  store i32 0, i32* %335, align 8
  br label %336

336:                                              ; preds = %334, %330
  br label %437

337:                                              ; preds = %322
  %338 = load i8**, i8*** %5, align 8
  %339 = load i32, i32* %19, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %338, i64 %340
  %342 = load i8*, i8** %341, align 8
  %343 = call i32 @strcmp(i8* %342, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %352, label %345

345:                                              ; preds = %337
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %351, label %349

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  store i32 1, i32* %350, align 8
  br label %351

351:                                              ; preds = %349, %345
  br label %436

352:                                              ; preds = %337
  %353 = load i8**, i8*** %5, align 8
  %354 = load i32, i32* %19, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8*, i8** %353, i64 %355
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 @strcmp(i8* %357, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %374, label %360

360:                                              ; preds = %352
  %361 = load i32, i32* %19, align 4
  %362 = add nsw i32 %361, 1
  %363 = load i32, i32* %4, align 4
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %365, label %374

365:                                              ; preds = %360
  %366 = load i8**, i8*** %5, align 8
  %367 = load i32, i32* %19, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %19, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8*, i8** %366, i64 %369
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @ExUtilGetFloat(i8* %371, i32* %26)
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  store i32 %372, i32* %373, align 8
  br label %435

374:                                              ; preds = %360, %352
  %375 = load i8**, i8*** %5, align 8
  %376 = load i32, i32* %19, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8*, i8** %375, i64 %377
  %379 = load i8*, i8** %378, align 8
  %380 = call i32 @strcmp(i8* %379, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %396, label %382

382:                                              ; preds = %374
  %383 = load i32, i32* %19, align 4
  %384 = add nsw i32 %383, 1
  %385 = load i32, i32* %4, align 4
  %386 = icmp slt i32 %384, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %382
  %388 = load i8**, i8*** %5, align 8
  %389 = load i32, i32* %19, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %19, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8*, i8** %388, i64 %391
  %393 = load i8*, i8** %392, align 8
  %394 = call i8* @ExUtilGetInt(i8* %393, i32 0, i32* %26)
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  store i8* %394, i8** %395, align 8
  br label %434

396:                                              ; preds = %382, %374
  %397 = load i8**, i8*** %5, align 8
  %398 = load i32, i32* %19, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8*, i8** %397, i64 %399
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @strcmp(i8* %401, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %425, label %404

404:                                              ; preds = %396
  %405 = load i32, i32* %19, align 4
  %406 = add nsw i32 %405, 1
  %407 = load i32, i32* %4, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %425

409:                                              ; preds = %404
  %410 = load i8**, i8*** %5, align 8
  %411 = load i32, i32* %19, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %19, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8*, i8** %410, i64 %413
  %415 = load i8*, i8** %414, align 8
  %416 = call i8* @ExUtilGetInt(i8* %415, i32 0, i32* %26)
  %417 = ptrtoint i8* %416 to i32
  store i32 %417, i32* %10, align 4
  %418 = load i32, i32* %10, align 4
  %419 = icmp sle i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %409
  %421 = load i32, i32* @stderr, align 4
  %422 = load i32, i32* %10, align 4
  %423 = call i32 (i32, i8*, ...) @fprintf(i32 %421, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %422)
  store i32 1, i32* %26, align 4
  br label %424

424:                                              ; preds = %420, %409
  br label %433

425:                                              ; preds = %404, %396
  store i32 1, i32* %26, align 4
  %426 = load i32, i32* @stderr, align 4
  %427 = load i8**, i8*** %5, align 8
  %428 = load i32, i32* %19, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8*, i8** %427, i64 %429
  %431 = load i8*, i8** %430, align 8
  %432 = call i32 (i32, i8*, ...) @fprintf(i32 %426, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* %431)
  br label %433

433:                                              ; preds = %425, %424
  br label %434

434:                                              ; preds = %433, %387
  br label %435

435:                                              ; preds = %434, %365
  br label %436

436:                                              ; preds = %435, %351
  br label %437

437:                                              ; preds = %436, %336
  %438 = load i32, i32* %26, align 4
  %439 = icmp ne i32 %438, 0
  %440 = xor i1 %439, true
  %441 = zext i1 %440 to i32
  store i32 %441, i32* %22, align 4
  %442 = load i32, i32* %22, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %445, label %444

444:                                              ; preds = %437
  br label %581

445:                                              ; preds = %437
  br label %552

446:                                              ; preds = %312
  %447 = load i32, i32* %22, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %457

449:                                              ; preds = %446
  %450 = call i32 @WebPValidateConfig(%struct.TYPE_23__* %16)
  store i32 %450, i32* %22, align 4
  %451 = load i32, i32* %22, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %456, label %453

453:                                              ; preds = %449
  %454 = load i32, i32* @stderr, align 4
  %455 = call i32 (i32, i8*, ...) @fprintf(i32 %454, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %581

456:                                              ; preds = %449
  br label %457

457:                                              ; preds = %456, %446
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  store i32 1, i32* %458, align 4
  %459 = load i8**, i8*** %5, align 8
  %460 = load i32, i32* %19, align 4
  %461 = call i64 @GET_WARGV_SHIFTED(i8** %459, i32 %460)
  %462 = inttoptr i64 %461 to i8*
  %463 = call i32 @ReadImage(i8* %462, %struct.TYPE_21__* %17)
  store i32 %463, i32* %22, align 4
  %464 = load i32, i32* %22, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %467, label %466

466:                                              ; preds = %457
  br label %581

467:                                              ; preds = %457
  %468 = load i32*, i32** %7, align 8
  %469 = icmp eq i32* %468, null
  br i1 %469, label %470, label %487

470:                                              ; preds = %467
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  store i32 %472, i32* %13, align 4
  %473 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %474 = load i32, i32* %473, align 4
  store i32 %474, i32* %14, align 4
  %475 = load i32, i32* %13, align 4
  %476 = load i32, i32* %14, align 4
  %477 = call i32* @WebPAnimEncoderNew(i32 %475, i32 %476, %struct.TYPE_24__* %15)
  store i32* %477, i32** %7, align 8
  %478 = load i32*, i32** %7, align 8
  %479 = icmp ne i32* %478, null
  %480 = zext i1 %479 to i32
  store i32 %480, i32* %22, align 4
  %481 = load i32, i32* %22, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %486, label %483

483:                                              ; preds = %470
  %484 = load i32, i32* @stderr, align 4
  %485 = call i32 (i32, i8*, ...) @fprintf(i32 %484, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0))
  br label %486

486:                                              ; preds = %483, %470
  br label %487

487:                                              ; preds = %486, %467
  %488 = load i32, i32* %22, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %516

490:                                              ; preds = %487
  %491 = load i32, i32* %13, align 4
  %492 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = icmp eq i32 %491, %493
  br i1 %494, label %495, label %500

495:                                              ; preds = %490
  %496 = load i32, i32* %14, align 4
  %497 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %498 = load i32, i32* %497, align 4
  %499 = icmp eq i32 %496, %498
  br label %500

500:                                              ; preds = %495, %490
  %501 = phi i1 [ false, %490 ], [ %499, %495 ]
  %502 = zext i1 %501 to i32
  store i32 %502, i32* %22, align 4
  %503 = load i32, i32* %22, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %515, label %505

505:                                              ; preds = %500
  %506 = load i32, i32* @stderr, align 4
  %507 = load i32, i32* %9, align 4
  %508 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %511 = load i32, i32* %510, align 4
  %512 = load i32, i32* %13, align 4
  %513 = load i32, i32* %14, align 4
  %514 = call i32 (i32, i8*, ...) @fprintf(i32 %506, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.23, i64 0, i64 0), i32 %507, i32 %509, i32 %511, i32 %512, i32 %513)
  br label %515

515:                                              ; preds = %505, %500
  br label %516

516:                                              ; preds = %515, %487
  %517 = load i32, i32* %22, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %530

519:                                              ; preds = %516
  %520 = load i32*, i32** %7, align 8
  %521 = load i32, i32* %11, align 4
  %522 = call i32 @WebPAnimEncoderAdd(i32* %520, %struct.TYPE_21__* %17, i32 %521, %struct.TYPE_23__* %16)
  store i32 %522, i32* %22, align 4
  %523 = load i32, i32* %22, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %529, label %525

525:                                              ; preds = %519
  %526 = load i32, i32* @stderr, align 4
  %527 = load i32, i32* %9, align 4
  %528 = call i32 (i32, i8*, ...) @fprintf(i32 %526, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i32 %527)
  br label %529

529:                                              ; preds = %525, %519
  br label %530

530:                                              ; preds = %529, %516
  %531 = call i32 @WebPPictureFree(%struct.TYPE_21__* %17)
  %532 = load i32, i32* %22, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %535, label %534

534:                                              ; preds = %530
  br label %581

535:                                              ; preds = %530
  %536 = load i32, i32* %8, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %546

538:                                              ; preds = %535
  %539 = load i32, i32* @stderr, align 4
  %540 = load i32, i32* %9, align 4
  %541 = load i32, i32* %11, align 4
  %542 = load i8**, i8*** %5, align 8
  %543 = load i32, i32* %19, align 4
  %544 = call i64 @GET_WARGV_SHIFTED(i8** %542, i32 %543)
  %545 = call i32 (i32, i8*, i32, ...) @WFPRINTF(i32 %539, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0), i32 %540, i32 %541, i64 %544)
  br label %546

546:                                              ; preds = %538, %535
  %547 = load i32, i32* %10, align 4
  %548 = load i32, i32* %11, align 4
  %549 = add nsw i32 %548, %547
  store i32 %549, i32* %11, align 4
  %550 = load i32, i32* %9, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %9, align 4
  br label %552

552:                                              ; preds = %546, %445, %311
  %553 = load i32, i32* %19, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %19, align 4
  br label %295

555:                                              ; preds = %302
  %556 = load i32, i32* %22, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %563

558:                                              ; preds = %555
  %559 = load i32*, i32** %7, align 8
  %560 = load i32, i32* %11, align 4
  %561 = call i32 @WebPAnimEncoderAdd(i32* %559, %struct.TYPE_21__* null, i32 %560, %struct.TYPE_23__* null)
  %562 = icmp ne i32 %561, 0
  br label %563

563:                                              ; preds = %558, %555
  %564 = phi i1 [ false, %555 ], [ %562, %558 ]
  %565 = zext i1 %564 to i32
  store i32 %565, i32* %22, align 4
  %566 = load i32, i32* %22, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %572

568:                                              ; preds = %563
  %569 = load i32*, i32** %7, align 8
  %570 = call i64 @WebPAnimEncoderAssemble(i32* %569, %struct.TYPE_22__* %18)
  %571 = icmp ne i64 %570, 0
  br label %572

572:                                              ; preds = %568, %563
  %573 = phi i1 [ false, %563 ], [ %571, %568 ]
  %574 = zext i1 %573 to i32
  store i32 %574, i32* %22, align 4
  %575 = load i32, i32* %22, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %580, label %577

577:                                              ; preds = %572
  %578 = load i32, i32* @stderr, align 4
  %579 = call i32 (i32, i8*, ...) @fprintf(i32 %578, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0))
  br label %580

580:                                              ; preds = %577, %572
  br label %581

581:                                              ; preds = %580, %534, %466, %453, %444, %290, %274, %240, %230, %53
  %582 = load i32*, i32** %7, align 8
  %583 = call i32 @WebPAnimEncoderDelete(i32* %582)
  %584 = load i32, i32* %22, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %592

586:                                              ; preds = %581
  %587 = load i32, i32* %12, align 4
  %588 = icmp sgt i32 %587, 0
  br i1 %588, label %589, label %592

589:                                              ; preds = %586
  %590 = load i32, i32* %12, align 4
  %591 = call i32 @SetLoopCount(i32 %590, %struct.TYPE_22__* %18)
  store i32 %591, i32* %22, align 4
  br label %592

592:                                              ; preds = %589, %586, %581
  %593 = load i32, i32* %22, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %618

595:                                              ; preds = %592
  %596 = load i8*, i8** %6, align 8
  %597 = icmp ne i8* %596, null
  br i1 %597, label %598, label %614

598:                                              ; preds = %595
  %599 = load i8*, i8** %6, align 8
  %600 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %601 = load i32, i32* %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %603 = load i64, i64* %602, align 8
  %604 = call i32 @ImgIoUtilWriteFile(i8* %599, i32 %601, i64 %603)
  store i32 %604, i32* %22, align 4
  %605 = load i32, i32* %22, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %613

607:                                              ; preds = %598
  %608 = load i32, i32* @stderr, align 4
  %609 = load i8*, i8** %6, align 8
  %610 = bitcast i8* %609 to i32*
  %611 = ptrtoint i32* %610 to i32
  %612 = call i32 (i32, i8*, i32, ...) @WFPRINTF(i32 %608, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 %611)
  br label %613

613:                                              ; preds = %607, %598
  br label %617

614:                                              ; preds = %595
  %615 = load i32, i32* @stderr, align 4
  %616 = call i32 (i32, i8*, ...) @fprintf(i32 %615, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0))
  br label %617

617:                                              ; preds = %614, %613
  br label %618

618:                                              ; preds = %617, %592
  %619 = load i32, i32* %22, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %628

621:                                              ; preds = %618
  %622 = load i32, i32* @stderr, align 4
  %623 = load i32, i32* %9, align 4
  %624 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %625 = load i64, i64* %624, align 8
  %626 = trunc i64 %625 to i32
  %627 = call i32 (i32, i8*, ...) @fprintf(i32 %622, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i32 %623, i32 %626)
  br label %628

628:                                              ; preds = %621, %618
  %629 = call i32 @WebPDataClear(%struct.TYPE_22__* %18)
  %630 = call i32 @ExUtilDeleteCommandLineArguments(%struct.TYPE_25__* %21)
  %631 = load i32, i32* %22, align 4
  %632 = icmp ne i32 %631, 0
  %633 = zext i1 %632 to i64
  %634 = select i1 %632, i32 0, i32 1
  %635 = call i32 @FREE_WARGV_AND_RETURN(i32 %634)
  %636 = load i32, i32* %3, align 4
  ret i32 %636
}

declare dso_local i32 @INIT_WARGV(i32, i8**) #1

declare dso_local i32 @ExUtilInitCommandLineArguments(i32, i8**, %struct.TYPE_25__*) #1

declare dso_local i32 @FREE_WARGV_AND_RETURN(i32) #1

declare dso_local i32 @WebPDataInit(%struct.TYPE_22__*) #1

declare dso_local i32 @WebPAnimEncoderOptionsInit(%struct.TYPE_24__*) #1

declare dso_local i32 @WebPConfigInit(%struct.TYPE_23__*) #1

declare dso_local i32 @WebPPictureInit(%struct.TYPE_21__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @GET_WARGV_SHIFTED(i8**, i32) #1

declare dso_local i8* @ExUtilGetInt(i8*, i32, i32*) #1

declare dso_local i32 @Help(...) #1

declare dso_local i32 @WebPGetEncoderVersion(...) #1

declare dso_local i32 @WebPGetMuxVersion(...) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ExUtilGetFloat(i8*, i32*) #1

declare dso_local i32 @WebPValidateConfig(%struct.TYPE_23__*) #1

declare dso_local i32 @ReadImage(i8*, %struct.TYPE_21__*) #1

declare dso_local i32* @WebPAnimEncoderNew(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @WebPAnimEncoderAdd(i32*, %struct.TYPE_21__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @WebPPictureFree(%struct.TYPE_21__*) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i32, ...) #1

declare dso_local i64 @WebPAnimEncoderAssemble(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @WebPAnimEncoderDelete(i32*) #1

declare dso_local i32 @SetLoopCount(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ImgIoUtilWriteFile(i8*, i32, i64) #1

declare dso_local i32 @WebPDataClear(%struct.TYPE_22__*) #1

declare dso_local i32 @ExUtilDeleteCommandLineArguments(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
