; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_get_disto.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_get_disto.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float, float, i64, i32, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Can't init pictures\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-ssim\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-psnr\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-alpha\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-scale\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"-gray\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"missing file name after %s option.\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Error: missing arguments.\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Error while computing the distortion.\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"%u %.2f    %.2f %.2f %.2f %.2f [ %.2f bpp ]\0A\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"Pictures are not in the same argb format. Can't save the difference map.\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"max differences per channel: \00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\0AError computing diff map\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"Can only compute the difference map in ARGB format.\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Error during lossless encoding.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [5 x float], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @INIT_WARGV(i32 %25, i8** %26)
  %28 = call i32 @WebPPictureInit(%struct.TYPE_9__* %6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = call i32 @WebPPictureInit(%struct.TYPE_9__* %7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %2
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @FREE_WARGV_AND_RETURN(i32 1)
  br label %37

37:                                               ; preds = %33, %30
  store i32 1, i32* %13, align 4
  br label %38

38:                                               ; preds = %144, %37
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %147

42:                                               ; preds = %38
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i32 1, i32* %12, align 4
  br label %143

51:                                               ; preds = %42
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  br label %142

60:                                               ; preds = %51
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  store i32 1, i32* %15, align 4
  br label %141

69:                                               ; preds = %60
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  store i32 1, i32* %16, align 4
  br label %140

78:                                               ; preds = %69
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  store i32 1, i32* %17, align 4
  br label %139

87:                                               ; preds = %78
  %88 = load i8**, i8*** %5, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  store i32 1, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %138

96:                                               ; preds = %87
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load i32, i32* @stderr, align 4
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %116)
  br label %343

118:                                              ; preds = %104
  %119 = load i8**, i8*** %5, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i64 @GET_WARGV(i8** %119, i32 %120)
  %122 = inttoptr i64 %121 to i8*
  store i8* %122, i8** %20, align 8
  br label %137

123:                                              ; preds = %96
  %124 = load i8*, i8** %18, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i64 @GET_WARGV(i8** %127, i32 %128)
  %130 = inttoptr i64 %129 to i8*
  store i8* %130, i8** %18, align 8
  br label %136

131:                                              ; preds = %123
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* %13, align 4
  %134 = call i64 @GET_WARGV(i8** %132, i32 %133)
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** %19, align 8
  br label %136

136:                                              ; preds = %131, %126
  br label %137

137:                                              ; preds = %136, %118
  br label %138

138:                                              ; preds = %137, %95
  br label %139

139:                                              ; preds = %138, %86
  br label %140

140:                                              ; preds = %139, %77
  br label %141

141:                                              ; preds = %140, %68
  br label %142

142:                                              ; preds = %141, %59
  br label %143

143:                                              ; preds = %142, %50
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %38

147:                                              ; preds = %38
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** %18, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i8*, i8** %19, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %153, %150, %147
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @stderr, align 4
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %156
  %163 = call i32 (...) @Help()
  br label %343

164:                                              ; preds = %153
  %165 = load i8*, i8** %18, align 8
  %166 = call i64 @ReadPicture(i8* %165, %struct.TYPE_9__* %6, i32 1)
  store i64 %166, i64* %8, align 8
  %167 = load i8*, i8** %19, align 8
  %168 = call i64 @ReadPicture(i8* %167, %struct.TYPE_9__* %7, i32 1)
  store i64 %168, i64* %9, align 8
  %169 = load i64, i64* %8, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %164
  %172 = load i64, i64* %9, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171, %164
  br label %343

175:                                              ; preds = %171
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = call i32 @WebPBlendAlpha(%struct.TYPE_9__* %6, i32 0)
  %180 = call i32 @WebPBlendAlpha(%struct.TYPE_9__* %7, i32 0)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %12, align 4
  %183 = getelementptr inbounds [5 x float], [5 x float]* %11, i64 0, i64 0
  %184 = call i32 @WebPPictureDistortion(%struct.TYPE_9__* %6, %struct.TYPE_9__* %7, i32 %182, float* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* @stderr, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %343

189:                                              ; preds = %181
  %190 = load i64, i64* %8, align 8
  %191 = trunc i64 %190 to i32
  %192 = getelementptr inbounds [5 x float], [5 x float]* %11, i64 0, i64 4
  %193 = load float, float* %192, align 16
  %194 = getelementptr inbounds [5 x float], [5 x float]* %11, i64 0, i64 0
  %195 = load float, float* %194, align 16
  %196 = getelementptr inbounds [5 x float], [5 x float]* %11, i64 0, i64 1
  %197 = load float, float* %196, align 4
  %198 = getelementptr inbounds [5 x float], [5 x float]* %11, i64 0, i64 2
  %199 = load float, float* %198, align 8
  %200 = getelementptr inbounds [5 x float], [5 x float]* %11, i64 0, i64 3
  %201 = load float, float* %200, align 4
  %202 = load i64, i64* %8, align 8
  %203 = uitofp i64 %202 to float
  %204 = fmul float 8.000000e+00, %203
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %206 = load float, float* %205, align 8
  %207 = fdiv float %204, %206
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %209 = load float, float* %208, align 4
  %210 = fdiv float %207, %209
  %211 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %191, float %193, float %195, float %197, float %199, float %201, float %210)
  %212 = load i8*, i8** %20, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %342

214:                                              ; preds = %189
  store i32* null, i32** %21, align 8
  store i64 0, i64* %22, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %216, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = load i32, i32* @stderr, align 4
  %222 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0))
  br label %343

223:                                              ; preds = %214
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %308

227:                                              ; preds = %223
  %228 = load i32, i32* @stderr, align 4
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %23, align 4
  br label %230

230:                                              ; preds = %297, %227
  %231 = load i32, i32* %23, align 4
  %232 = icmp slt i32 %231, 3
  br i1 %232, label %233, label %300

233:                                              ; preds = %230
  %234 = load i32, i32* %12, align 4
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %261

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to i32*
  %240 = load i32, i32* %23, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = mul nsw i32 %244, 4
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = inttoptr i64 %247 to i32*
  %249 = load i32, i32* %23, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = mul nsw i32 %253, 4
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %256 = load float, float* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %258 = load float, float* %257, align 4
  %259 = load i32, i32* %16, align 4
  %260 = call i32 @SSIMScaleChannel(i32* %242, i32 %245, i32* %251, i32 %254, i32 4, float %256, float %258, i32 %259)
  br label %286

261:                                              ; preds = %233
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = inttoptr i64 %263 to i32*
  %265 = load i32, i32* %23, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = mul nsw i32 %269, 4
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %272 = load i64, i64* %271, align 8
  %273 = inttoptr i64 %272 to i32*
  %274 = load i32, i32* %23, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = mul nsw i32 %278, 4
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %281 = load float, float* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %283 = load float, float* %282, align 4
  %284 = load i32, i32* %16, align 4
  %285 = call i32 @DiffScaleChannel(i32* %267, i32 %270, i32* %276, i32 %279, i32 4, float %281, float %283, i32 %284)
  br label %286

286:                                              ; preds = %261, %236
  %287 = phi i32 [ %260, %236 ], [ %285, %261 ]
  store i32 %287, i32* %24, align 4
  %288 = load i32, i32* %24, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load i32, i32* @stderr, align 4
  %292 = call i32 (i32, i8*, ...) @fprintf(i32 %291, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %286
  %294 = load i32, i32* @stderr, align 4
  %295 = load i32, i32* %24, align 4
  %296 = call i32 (i32, i8*, ...) @fprintf(i32 %294, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %293
  %298 = load i32, i32* %23, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %23, align 4
  br label %230

300:                                              ; preds = %230
  %301 = load i32, i32* @stderr, align 4
  %302 = call i32 (i32, i8*, ...) @fprintf(i32 %301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %303 = load i32, i32* %17, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = call i32 @ConvertToGray(%struct.TYPE_9__* %6)
  br label %307

307:                                              ; preds = %305, %300
  br label %311

308:                                              ; preds = %223
  %309 = load i32, i32* @stderr, align 4
  %310 = call i32 (i32, i8*, ...) @fprintf(i32 %309, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0))
  br label %343

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %313 = load i64, i64* %312, align 8
  %314 = inttoptr i64 %313 to i32*
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %316 = load float, float* %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %318 = load float, float* %317, align 4
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = mul nsw i32 %320, 4
  %322 = call i64 @WebPEncodeLosslessBGRA(i32* %314, float %316, float %318, i32 %321, i32** %21)
  store i64 %322, i64* %22, align 8
  %323 = load i64, i64* %22, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %311
  %326 = load i32, i32* @stderr, align 4
  %327 = call i32 (i32, i8*, ...) @fprintf(i32 %326, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  br label %343

328:                                              ; preds = %311
  %329 = load i8*, i8** %20, align 8
  %330 = load i32*, i32** %21, align 8
  %331 = load i64, i64* %22, align 8
  %332 = call i64 @ImgIoUtilWriteFile(i8* %329, i32* %330, i64 %331)
  %333 = icmp ne i64 %332, 0
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i32 0, i32 1
  store i32 %335, i32* %10, align 4
  %336 = load i32*, i32** %21, align 8
  %337 = call i32 @WebPFree(i32* %336)
  %338 = load i32, i32* %10, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %328
  br label %343

341:                                              ; preds = %328
  br label %342

342:                                              ; preds = %341, %189
  store i32 0, i32* %10, align 4
  br label %343

343:                                              ; preds = %342, %340, %325, %308, %220, %186, %174, %162, %109
  %344 = call i32 @WebPPictureFree(%struct.TYPE_9__* %6)
  %345 = call i32 @WebPPictureFree(%struct.TYPE_9__* %7)
  %346 = load i32, i32* %10, align 4
  %347 = call i32 @FREE_WARGV_AND_RETURN(i32 %346)
  %348 = load i32, i32* %3, align 4
  ret i32 %348
}

declare dso_local i32 @INIT_WARGV(i32, i8**) #1

declare dso_local i32 @WebPPictureInit(%struct.TYPE_9__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @FREE_WARGV_AND_RETURN(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @GET_WARGV(i8**, i32) #1

declare dso_local i32 @Help(...) #1

declare dso_local i64 @ReadPicture(i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @WebPBlendAlpha(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @WebPPictureDistortion(%struct.TYPE_9__*, %struct.TYPE_9__*, i32, float*) #1

declare dso_local i32 @printf(i8*, i32, float, float, float, float, float, float) #1

declare dso_local i32 @SSIMScaleChannel(i32*, i32, i32*, i32, i32, float, float, i32) #1

declare dso_local i32 @DiffScaleChannel(i32*, i32, i32*, i32, i32, float, float, i32) #1

declare dso_local i32 @ConvertToGray(%struct.TYPE_9__*) #1

declare dso_local i64 @WebPEncodeLosslessBGRA(i32*, float, float, i32, i32**) #1

declare dso_local i64 @ImgIoUtilWriteFile(i8*, i32*, i64) #1

declare dso_local i32 @WebPFree(i32*) #1

declare dso_local i32 @WebPPictureFree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
