; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-parse.c_svg_parse_transform.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-parse.c_svg_parse_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_ERROR_SYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"expected keyword in transform attribute\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"expected opening parenthesis in transform attribute\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"expected closing parenthesis in transform attribute\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"wrong number of arguments to matrix(): %d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"wrong number of arguments to translate(): %d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"wrong number of arguments to scale(): %d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"wrong number of arguments to rotate(): %d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"skewX\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"wrong number of arguments to skewX(): %d\00", align 1
@FZ_DEGREE = common dso_local global float 0.000000e+00, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"skewY\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"wrong number of arguments to skewY(): %d\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"unknown transform function: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svg_parse_transform(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca [6 x float], align 16
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %284, %4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %285

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %23, %17
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @svg_is_whitespace_or_comma(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  br label %18

26:                                               ; preds = %18
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %285

32:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @svg_is_alpha(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 19
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi i1 [ false, %33 ], [ %40, %38 ]
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  %46 = load i8, i8* %44, align 1
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 %49
  store i8 %46, i8* %50, align 1
  br label %33

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %60 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %58, i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %67, %61
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @svg_is_whitespace(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  br label %62

70:                                               ; preds = %62
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 40
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %78 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %76, i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %119, %79
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 41
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 6
  br label %95

95:                                               ; preds = %92, %87, %82
  %96 = phi i1 [ false, %87 ], [ false, %82 ], [ %94, %92 ]
  br i1 %96, label %97, label %120

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %103, %97
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @svg_is_whitespace_or_comma(i8 signext %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  br label %98

106:                                              ; preds = %98
  %107 = load i8*, i8** %7, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @svg_is_digit(i8 signext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 %114
  %116 = load i8*, i8** %7, align 8
  %117 = call i8* @svg_lex_number(float* %115, i8* %116)
  store i8* %117, i8** %7, align 8
  br label %119

118:                                              ; preds = %106
  br label %120

119:                                              ; preds = %111
  br label %82

120:                                              ; preds = %118, %95
  %121 = load i8*, i8** %7, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 41
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %128 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %126, i32 %127, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %7, align 8
  %132 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %161, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 6
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %139, i32 %140, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %138, %135
  %144 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  %145 = load float, float* %144, align 16
  %146 = fptosi float %145 to i32
  %147 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 1
  %148 = load float, float* %147, align 4
  %149 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 2
  %150 = load float, float* %149, align 8
  %151 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 3
  %152 = load float, float* %151, align 4
  %153 = fptosi float %152 to i32
  %154 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 4
  %155 = load float, float* %154, align 16
  %156 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 5
  %157 = load float, float* %156, align 4
  %158 = call i32 @fz_make_matrix(i32 %146, float %148, float %150, i32 %153, float %155, float %157)
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @fz_concat(i32 %158, i32 %159)
  store i32 %160, i32* %8, align 4
  br label %284

161:                                              ; preds = %129
  %162 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 2
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %169, i32 %170, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %168, %165
  %174 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  %175 = load float, float* %174, align 16
  %176 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 1
  %177 = load float, float* %176, align 4
  %178 = call i32 @fz_translate(float %175, float %177)
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @fz_concat(i32 %178, i32 %179)
  store i32 %180, i32* %8, align 4
  br label %283

181:                                              ; preds = %161
  %182 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %214, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %12, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  %190 = load float, float* %189, align 16
  %191 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  %192 = load float, float* %191, align 16
  %193 = call i32 @fz_scale(float %190, float %192)
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @fz_concat(i32 %193, i32 %194)
  store i32 %195, i32* %8, align 4
  br label %213

196:                                              ; preds = %185
  %197 = load i32, i32* %12, align 4
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  %201 = load float, float* %200, align 16
  %202 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 1
  %203 = load float, float* %202, align 4
  %204 = call i32 @fz_scale(float %201, float %203)
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @fz_concat(i32 %204, i32 %205)
  store i32 %206, i32* %8, align 4
  br label %212

207:                                              ; preds = %196
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %208, i32 %209, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %207, %199
  br label %213

213:                                              ; preds = %212, %188
  br label %282

214:                                              ; preds = %181
  %215 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %216 = call i32 @strcmp(i8* %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %232, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 1
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %224 = load i32, i32* %12, align 4
  %225 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %222, i32 %223, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %221, %218
  %227 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  %228 = load float, float* %227, align 16
  %229 = call i32 @fz_rotate(float %228)
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @fz_concat(i32 %229, i32 %230)
  store i32 %231, i32* %8, align 4
  br label %281

232:                                              ; preds = %214
  %233 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %234 = call i32 @strcmp(i8* %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %253, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %237, 1
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = load i32*, i32** %5, align 8
  %241 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %242 = load i32, i32* %12, align 4
  %243 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %240, i32 %241, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %239, %236
  %245 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  %246 = load float, float* %245, align 16
  %247 = load float, float* @FZ_DEGREE, align 4
  %248 = fmul float %246, %247
  %249 = call float @tanf(float %248) #3
  %250 = call i32 @fz_make_matrix(i32 1, float 0.000000e+00, float %249, i32 1, float 0.000000e+00, float 0.000000e+00)
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @fz_concat(i32 %250, i32 %251)
  store i32 %252, i32* %8, align 4
  br label %280

253:                                              ; preds = %232
  %254 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %255 = call i32 @strcmp(i8* %254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %274, label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 1
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = load i32*, i32** %5, align 8
  %262 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %263 = load i32, i32* %12, align 4
  %264 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %261, i32 %262, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %260, %257
  %266 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  %267 = load float, float* %266, align 16
  %268 = load float, float* @FZ_DEGREE, align 4
  %269 = fmul float %267, %268
  %270 = call float @tanf(float %269) #3
  %271 = call i32 @fz_make_matrix(i32 1, float %270, float 0.000000e+00, i32 1, float 0.000000e+00, float 0.000000e+00)
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @fz_concat(i32 %271, i32 %272)
  store i32 %273, i32* %8, align 4
  br label %279

274:                                              ; preds = %253
  %275 = load i32*, i32** %5, align 8
  %276 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %277 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %278 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %275, i32 %276, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* %277)
  br label %279

279:                                              ; preds = %274, %265
  br label %280

280:                                              ; preds = %279, %244
  br label %281

281:                                              ; preds = %280, %226
  br label %282

282:                                              ; preds = %281, %213
  br label %283

283:                                              ; preds = %282, %173
  br label %284

284:                                              ; preds = %283, %143
  br label %13

285:                                              ; preds = %31, %13
  %286 = load i32, i32* %8, align 4
  ret i32 %286
}

declare dso_local i64 @svg_is_whitespace_or_comma(i8 signext) #1

declare dso_local i64 @svg_is_alpha(i8 signext) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i64 @svg_is_whitespace(i8 signext) #1

declare dso_local i64 @svg_is_digit(i8 signext) #1

declare dso_local i8* @svg_lex_number(float*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fz_concat(i32, i32) #1

declare dso_local i32 @fz_make_matrix(i32, float, float, i32, float, float) #1

declare dso_local i32 @fz_translate(float, float) #1

declare dso_local i32 @fz_scale(float, float) #1

declare dso_local i32 @fz_rotate(float) #1

; Function Attrs: nounwind
declare dso_local float @tanf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
