; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/ftrandom/extr_ftrandom.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/ftrandom/extr_ftrandom.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"-all\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"-check-outlines\00", align 1
@check_outlines = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"-dir\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-error-count\00", align 1
@error_fraction = common dso_local global double 0.000000e+00, align 8
@error_count = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Bad value for error-count: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"-error-fraction\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Bad value for error-fraction: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"error-fraction must be in the range [0;1]\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-ext\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"-nohints\00", align 1
@nohints = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"-rasterize\00", align 1
@rasterize = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"-results\00", align 1
@results_dir = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"-size\00", align 1
@font_size = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Bad value for size: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"-test\00", align 1
@default_ext_list = common dso_local global i8** null, align 8
@default_dir_list = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %14, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = call i8** @calloc(i64 %19, i32 8)
  store i8** %20, i8*** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = call i8** @calloc(i64 %23, i32 8)
  store i8** %24, i8*** %7, align 8
  store i32 1, i32* %12, align 4
  br label %25

25:                                               ; preds = %255, %2
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %258

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %15, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load i8*, i8** %15, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %15, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %15, align 8
  br label %49

49:                                               ; preds = %46, %40, %29
  %50 = load i8*, i8** %15, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %11, align 4
  br label %254

54:                                               ; preds = %49
  %55 = load i8*, i8** %15, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* @check_outlines, align 4
  br label %253

59:                                               ; preds = %54
  %60 = load i8*, i8** %15, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load i8**, i8*** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  store i8* %69, i8** %74, align 8
  br label %252

75:                                               ; preds = %59
  %76 = load i8*, i8** %15, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store double 0.000000e+00, double* @error_fraction, align 8
  br label %83

83:                                               ; preds = %82, %79
  store i32 1, i32* %10, align 4
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %84, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strtoul(i8* %89, i8** %16, i32 10)
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* @error_count, align 4
  %92 = load i8*, i8** %16, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %83
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %83
  br label %251

106:                                              ; preds = %75
  %107 = load i8*, i8** %15, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %147

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32 0, i32* @error_count, align 4
  br label %114

114:                                              ; preds = %113, %110
  store i32 1, i32* %10, align 4
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strtod(i8* %120, i8** %16)
  %122 = sitofp i32 %121 to double
  store double %122, double* @error_fraction, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %114
  %128 = load i32, i32* @stderr, align 4
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %133)
  %135 = call i32 @exit(i32 1) #3
  unreachable

136:                                              ; preds = %114
  %137 = load double, double* @error_fraction, align 8
  %138 = fcmp olt double %137, 0.000000e+00
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load double, double* @error_fraction, align 8
  %141 = fcmp ogt double %140, 1.000000e+00
  br i1 %141, label %142, label %146

142:                                              ; preds = %139, %136
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %145 = call i32 @exit(i32 1) #3
  unreachable

146:                                              ; preds = %139
  br label %250

147:                                              ; preds = %106
  %148 = load i8*, i8** %15, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = load i8**, i8*** %5, align 8
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %152, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = load i8**, i8*** %7, align 8
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8*, i8** %158, i64 %161
  store i8* %157, i8** %162, align 8
  br label %249

163:                                              ; preds = %147
  %164 = load i8*, i8** %15, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %163
  %168 = load i32, i32* @stdout, align 4
  %169 = load i8**, i8*** %5, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @usage(i32 %168, i8* %171)
  %173 = call i32 @exit(i32 0) #3
  unreachable

174:                                              ; preds = %163
  %175 = load i8*, i8** %15, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 1, i32* @nohints, align 4
  br label %247

179:                                              ; preds = %174
  %180 = load i8*, i8** %15, align 8
  %181 = call i64 @strcmp(i8* %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  store i32 1, i32* @rasterize, align 4
  br label %246

184:                                              ; preds = %179
  %185 = load i8*, i8** %15, align 8
  %186 = call i64 @strcmp(i8* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load i8**, i8*** %5, align 8
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %189, i64 %192
  %194 = load i8*, i8** %193, align 8
  store i8* %194, i8** @results_dir, align 8
  br label %245

195:                                              ; preds = %184
  %196 = load i8*, i8** %15, align 8
  %197 = call i64 @strcmp(i8* %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %225

199:                                              ; preds = %195
  %200 = load i8**, i8*** %5, align 8
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %200, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @strtod(i8* %205, i8** %16)
  %207 = mul nsw i32 %206, 64
  store i32 %207, i32* @font_size, align 4
  %208 = load i8*, i8** %16, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %199
  %213 = load i32, i32* @font_size, align 4
  %214 = icmp slt i32 %213, 64
  br i1 %214, label %215, label %224

215:                                              ; preds = %212, %199
  %216 = load i32, i32* @stderr, align 4
  %217 = load i8**, i8*** %5, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 (i32, i8*, ...) @fprintf(i32 %216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %221)
  %223 = call i32 @exit(i32 1) #3
  unreachable

224:                                              ; preds = %212
  br label %244

225:                                              ; preds = %195
  %226 = load i8*, i8** %15, align 8
  %227 = call i64 @strcmp(i8* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %225
  %230 = load i8**, i8*** %5, align 8
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %230, i64 %233
  %235 = load i8*, i8** %234, align 8
  store i8* %235, i8** %14, align 8
  br label %243

236:                                              ; preds = %225
  %237 = load i32, i32* @stderr, align 4
  %238 = load i8**, i8*** %5, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @usage(i32 %237, i8* %240)
  %242 = call i32 @exit(i32 1) #3
  unreachable

243:                                              ; preds = %229
  br label %244

244:                                              ; preds = %243, %224
  br label %245

245:                                              ; preds = %244, %188
  br label %246

246:                                              ; preds = %245, %183
  br label %247

247:                                              ; preds = %246, %178
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248, %151
  br label %250

250:                                              ; preds = %249, %146
  br label %251

251:                                              ; preds = %250, %105
  br label %252

252:                                              ; preds = %251, %63
  br label %253

253:                                              ; preds = %252, %58
  br label %254

254:                                              ; preds = %253, %53
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %12, align 4
  br label %25

258:                                              ; preds = %25
  %259 = load i32, i32* %11, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i8**, i8*** %7, align 8
  %263 = call i32 @free(i8** %262)
  store i8** null, i8*** %7, align 8
  br label %272

264:                                              ; preds = %258
  %265 = load i32, i32* %9, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  %268 = load i8**, i8*** %7, align 8
  %269 = call i32 @free(i8** %268)
  %270 = load i8**, i8*** @default_ext_list, align 8
  store i8** %270, i8*** %7, align 8
  br label %271

271:                                              ; preds = %267, %264
  br label %272

272:                                              ; preds = %271, %261
  %273 = load i32, i32* %8, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load i8**, i8*** %6, align 8
  %277 = call i32 @free(i8** %276)
  %278 = load i8**, i8*** @default_dir_list, align 8
  store i8** %278, i8*** %6, align 8
  br label %279

279:                                              ; preds = %275, %272
  %280 = load i8*, i8** %14, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i8*, i8** %14, align 8
  %284 = call i32 @ExecuteTest(i8* %283)
  br label %285

285:                                              ; preds = %282, %279
  %286 = call i32 @time(i64* %13)
  %287 = load i64, i64* %13, align 8
  %288 = trunc i64 %287 to i32
  %289 = call i32 @srandom(i32 %288)
  %290 = load i8**, i8*** %6, align 8
  %291 = load i8**, i8*** %7, align 8
  %292 = call i32 @FindFonts(i8** %290, i8** %291)
  %293 = load i8*, i8** @results_dir, align 8
  %294 = call i32 @mkdir(i8* %293, i32 493)
  ret i32 0
}

declare dso_local i8** @calloc(i64, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strtod(i8*, i8**) #1

declare dso_local i32 @usage(i32, i8*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @ExecuteTest(i8*) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @srandom(i32) #1

declare dso_local i32 @FindFonts(i8**, i8**) #1

declare dso_local i32 @mkdir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
