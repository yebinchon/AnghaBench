; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_diff.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_diff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"-dump_frames\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"-min_psnr\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"-raw_comparison\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-max_diff\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"WebP Decoder version: %d.%d.%d\0AWebP Demux version: %d.%d.%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Dumping decoded frames in: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Decoding file: %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Error decoding file: %s\0A Aborting.\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\0AFiles %s and %s differ.\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"\0AFiles %s and %s are identical.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i8*], align 16
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = bitcast [2 x i8*]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 16, i1 false)
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @INIT_WARGV(i32 %22, i8** %23)
  store i32 1, i32* %15, align 4
  br label %25

25:                                               ; preds = %187, %2
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %190

29:                                               ; preds = %25
  store i32 0, i32* %18, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  %46 = call i64 @GET_WARGV(i8** %43, i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %8, align 8
  br label %49

48:                                               ; preds = %37
  store i32 1, i32* %18, align 4
  br label %49

49:                                               ; preds = %48, %42
  br label %180

50:                                               ; preds = %29
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call double @ExUtilGetFloat(i8* %69, i32* %18)
  store double %70, double* %9, align 8
  br label %72

71:                                               ; preds = %58
  store i32 1, i32* %18, align 4
  br label %72

72:                                               ; preds = %71, %63
  br label %179

73:                                               ; preds = %50
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  store i32 0, i32* %12, align 4
  br label %178

82:                                               ; preds = %73
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %4, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @ExUtilGetInt(i8* %101, i32 0, i32* %18)
  store i32 %102, i32* %13, align 4
  br label %104

103:                                              ; preds = %90
  store i32 1, i32* %18, align 4
  br label %104

104:                                              ; preds = %103, %95
  br label %177

105:                                              ; preds = %82
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %113, %105
  %122 = call i32 (...) @Help()
  %123 = call i32 @FREE_WARGV_AND_RETURN(i32 0)
  br label %176

124:                                              ; preds = %113
  %125 = load i8**, i8*** %5, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %154, label %132

132:                                              ; preds = %124
  %133 = call i32 @GetAnimatedImageVersions(i32* %19, i32* %20)
  %134 = load i32, i32* %19, align 4
  %135 = ashr i32 %134, 16
  %136 = and i32 %135, 255
  %137 = load i32, i32* %19, align 4
  %138 = ashr i32 %137, 8
  %139 = and i32 %138, 255
  %140 = load i32, i32* %19, align 4
  %141 = ashr i32 %140, 0
  %142 = and i32 %141, 255
  %143 = load i32, i32* %20, align 4
  %144 = ashr i32 %143, 16
  %145 = and i32 %144, 255
  %146 = load i32, i32* %20, align 4
  %147 = ashr i32 %146, 8
  %148 = and i32 %147, 255
  %149 = load i32, i32* %20, align 4
  %150 = ashr i32 %149, 0
  %151 = and i32 %150, 255
  %152 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %136, i32 %139, i32 %142, i32 %145, i32 %148, i32 %151)
  %153 = call i32 @FREE_WARGV_AND_RETURN(i32 0)
  br label %175

154:                                              ; preds = %124
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = load i8**, i8*** %5, align 8
  %159 = load i32, i32* %15, align 4
  %160 = call i64 @GET_WARGV(i8** %158, i32 %159)
  %161 = inttoptr i64 %160 to i8*
  %162 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  store i8* %161, i8** %162, align 16
  store i32 1, i32* %10, align 4
  br label %174

163:                                              ; preds = %154
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %163
  %167 = load i8**, i8*** %5, align 8
  %168 = load i32, i32* %15, align 4
  %169 = call i64 @GET_WARGV(i8** %167, i32 %168)
  %170 = inttoptr i64 %169 to i8*
  %171 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 1
  store i8* %170, i8** %171, align 8
  store i32 1, i32* %11, align 4
  br label %173

172:                                              ; preds = %163
  store i32 1, i32* %18, align 4
  br label %173

173:                                              ; preds = %172, %166
  br label %174

174:                                              ; preds = %173, %157
  br label %175

175:                                              ; preds = %174, %132
  br label %176

176:                                              ; preds = %175, %121
  br label %177

177:                                              ; preds = %176, %104
  br label %178

178:                                              ; preds = %177, %81
  br label %179

179:                                              ; preds = %178, %72
  br label %180

180:                                              ; preds = %179, %49
  %181 = load i32, i32* %18, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = call i32 (...) @Help()
  %185 = call i32 @FREE_WARGV_AND_RETURN(i32 -1)
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %25

190:                                              ; preds = %25
  %191 = load i32, i32* %4, align 4
  %192 = icmp slt i32 %191, 3
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = call i32 (...) @Help()
  %195 = call i32 @FREE_WARGV_AND_RETURN(i32 -1)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = call i32 (...) @Help()
  %201 = call i32 @FREE_WARGV_AND_RETURN(i32 -1)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i8*, i8** %8, align 8
  %207 = bitcast i8* %206 to i32*
  %208 = call i32 (i8*, i32*, ...) @WPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32* %207)
  br label %209

209:                                              ; preds = %205, %202
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %211 = call i32 @memset(i32* %210, i32 0, i32 8)
  store i32 0, i32* %14, align 4
  br label %212

212:                                              ; preds = %248, %209
  %213 = load i32, i32* %14, align 4
  %214 = icmp slt i32 %213, 2
  br i1 %214, label %215, label %251

215:                                              ; preds = %212
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = bitcast i8* %219 to i32*
  %221 = call i32 (i8*, i32*, ...) @WPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32* %220)
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %227
  %229 = load i32, i32* %7, align 4
  %230 = load i8*, i8** %8, align 8
  %231 = call i32 @ReadAnimatedImage(i8* %225, i32* %228, i32 %229, i8* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %215
  %234 = load i32, i32* @stderr, align 4
  %235 = load i32, i32* %14, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = bitcast i8* %238 to i32*
  %240 = call i32 (i32, i8*, i32*, ...) @WFPRINTF(i32 %234, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32* %239)
  store i32 -2, i32* %6, align 4
  br label %276

241:                                              ; preds = %215
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %243
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @MinimizeAnimationFrames(i32* %244, i32 %245)
  br label %247

247:                                              ; preds = %241
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %14, align 4
  br label %212

251:                                              ; preds = %212
  %252 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %254 = load i32, i32* %12, align 4
  %255 = load double, double* %9, align 8
  %256 = call i32 @CompareAnimatedImagePair(i32* %252, i32* %253, i32 %254, double %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %251
  %259 = load i32, i32* @stderr, align 4
  %260 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  %261 = load i8*, i8** %260, align 16
  %262 = bitcast i8* %261 to i32*
  %263 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 1
  %264 = load i8*, i8** %263, align 8
  %265 = bitcast i8* %264 to i32*
  %266 = call i32 (i32, i8*, i32*, ...) @WFPRINTF(i32 %259, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32* %262, i32* %265)
  store i32 -3, i32* %6, align 4
  br label %275

267:                                              ; preds = %251
  %268 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  %269 = load i8*, i8** %268, align 16
  %270 = bitcast i8* %269 to i32*
  %271 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 1
  %272 = load i8*, i8** %271, align 8
  %273 = bitcast i8* %272 to i32*
  %274 = call i32 (i8*, i32*, ...) @WPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32* %270, i32* %273)
  store i32 0, i32* %6, align 4
  br label %275

275:                                              ; preds = %267, %258
  br label %276

276:                                              ; preds = %275, %233
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %278 = call i32 @ClearAnimatedImage(i32* %277)
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %280 = call i32 @ClearAnimatedImage(i32* %279)
  %281 = load i32, i32* %6, align 4
  %282 = call i32 @FREE_WARGV_AND_RETURN(i32 %281)
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @INIT_WARGV(i32, i8**) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @GET_WARGV(i8**, i32) #2

declare dso_local double @ExUtilGetFloat(i8*, i32*) #2

declare dso_local i32 @ExUtilGetInt(i8*, i32, i32*) #2

declare dso_local i32 @Help(...) #2

declare dso_local i32 @FREE_WARGV_AND_RETURN(i32) #2

declare dso_local i32 @GetAnimatedImageVersions(i32*, i32*) #2

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @WPRINTF(i8*, i32*, ...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ReadAnimatedImage(i8*, i32*, i32, i8*) #2

declare dso_local i32 @WFPRINTF(i32, i8*, i32*, ...) #2

declare dso_local i32 @MinimizeAnimationFrames(i32*, i32) #2

declare dso_local i32 @CompareAnimatedImagePair(i32*, i32*, i32, double) #2

declare dso_local i32 @ClearAnimatedImage(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
