; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_strtof.c_fz_strtof.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_strtof.c_fz_strtof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"INFINITY\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@INFINITY = common dso_local global float 0.000000e+00, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@NAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fz_strtof(i8* %0, i8** %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %6, align 8
  br label %17

17:                                               ; preds = %49, %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %47, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 12
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 13
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 11
  br label %47

47:                                               ; preds = %42, %37, %32, %27, %22, %17
  %48 = phi i1 [ true, %37 ], [ true, %32 ], [ true, %27 ], [ true, %22 ], [ true, %17 ], [ %46, %42 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %17

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 43
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 45
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i8*, i8** %6, align 8
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %119, %68
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sge i32 %73, 48
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sle i32 %78, 57
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i1 [ false, %70 ], [ %79, %75 ]
  br i1 %81, label %82, label %122

82:                                               ; preds = %80
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 9
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 %91, 10
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = add nsw i32 %92, %95
  %97 = sub nsw i32 %96, 48
  store i32 %97, i32* %7, align 4
  br label %105

98:                                               ; preds = %85
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 1000
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %88
  br label %119

106:                                              ; preds = %82
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sgt i32 %109, 48
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 %114, 48
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %111, %106
  br label %119

119:                                              ; preds = %118, %105
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %6, align 8
  br label %70

122:                                              ; preds = %80
  %123 = load i8*, i8** %6, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 46
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %6, align 8
  br label %130

130:                                              ; preds = %127, %122
  br label %131

131:                                              ; preds = %167, %130
  %132 = load i8*, i8** %6, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp sge i32 %134, 48
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i8*, i8** %6, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp sle i32 %139, 57
  br label %141

141:                                              ; preds = %136, %131
  %142 = phi i1 [ false, %131 ], [ %140, %136 ]
  br i1 %142, label %143, label %170

143:                                              ; preds = %141
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %144, 9
  br i1 %145, label %146, label %167

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %146
  %150 = load i8*, i8** %6, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp sgt i32 %152, 48
  br i1 %153, label %154, label %164

154:                                              ; preds = %149, %146
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %7, align 4
  %158 = mul nsw i32 %157, 10
  %159 = load i8*, i8** %6, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = add nsw i32 %158, %161
  %163 = sub nsw i32 %162, 48
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %154, %149
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %164, %143
  %168 = load i8*, i8** %6, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %6, align 8
  br label %131

170:                                              ; preds = %141
  %171 = load i8*, i8** %6, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = icmp eq i8* %171, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i8*, i8** %11, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 46
  br i1 %179, label %184, label %180

180:                                              ; preds = %175, %170
  %181 = load i8*, i8** %11, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = icmp eq i8* %181, %182
  br i1 %183, label %184, label %218

184:                                              ; preds = %180, %175
  %185 = load i8*, i8** %11, align 8
  store i8* %185, i8** %6, align 8
  %186 = call i64 @starts_with(i8** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = call i64 @starts_with(i8** %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %188, %184
  %192 = load i32, i32* @ERANGE, align 4
  store i32 %192, i32* @errno, align 4
  %193 = load i8**, i8*** %5, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = call i32 @SET_TAILPTR(i8** %193, i8* %194)
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load float, float* @INFINITY, align 4
  %200 = fneg float %199
  br label %203

201:                                              ; preds = %191
  %202 = load float, float* @INFINITY, align 4
  br label %203

203:                                              ; preds = %201, %198
  %204 = phi float [ %200, %198 ], [ %202, %201 ]
  store float %204, float* %3, align 4
  br label %301

205:                                              ; preds = %188
  %206 = call i64 @starts_with(i8** %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load i8**, i8*** %5, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = call i32 @SET_TAILPTR(i8** %209, i8* %210)
  %212 = load i64, i64* @NAN, align 8
  %213 = sitofp i64 %212 to float
  store float %213, float* %3, align 4
  br label %301

214:                                              ; preds = %205
  %215 = load i8**, i8*** %5, align 8
  %216 = load i8*, i8** %4, align 8
  %217 = call i32 @SET_TAILPTR(i8** %215, i8* %216)
  store float 0.000000e+00, float* %3, align 4
  br label %301

218:                                              ; preds = %180
  %219 = load i8*, i8** %6, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 101
  br i1 %222, label %228, label %223

223:                                              ; preds = %218
  %224 = load i8*, i8** %6, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 69
  br i1 %227, label %228, label %293

228:                                              ; preds = %223, %218
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %229 = load i8*, i8** %6, align 8
  store i8* %229, i8** %15, align 8
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %6, align 8
  %232 = load i8*, i8** %6, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 43
  br i1 %235, label %236, label %239

236:                                              ; preds = %228
  %237 = load i8*, i8** %6, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %6, align 8
  br label %248

239:                                              ; preds = %228
  %240 = load i8*, i8** %6, align 8
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 45
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load i8*, i8** %6, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %6, align 8
  store i32 1, i32* %12, align 4
  br label %247

247:                                              ; preds = %244, %239
  br label %248

248:                                              ; preds = %247, %236
  %249 = load i8*, i8** %6, align 8
  store i8* %249, i8** %14, align 8
  br label %250

250:                                              ; preds = %273, %248
  %251 = load i8*, i8** %6, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp sge i32 %253, 48
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i8*, i8** %6, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp sle i32 %258, 57
  br label %260

260:                                              ; preds = %255, %250
  %261 = phi i1 [ false, %250 ], [ %259, %255 ]
  br i1 %261, label %262, label %276

262:                                              ; preds = %260
  %263 = load i32, i32* %13, align 4
  %264 = icmp slt i32 %263, 100
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load i32, i32* %13, align 4
  %267 = mul nsw i32 %266, 10
  %268 = load i8*, i8** %6, align 8
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = add nsw i32 %267, %270
  %272 = sub nsw i32 %271, 48
  store i32 %272, i32* %13, align 4
  br label %273

273:                                              ; preds = %265, %262
  %274 = load i8*, i8** %6, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %6, align 8
  br label %250

276:                                              ; preds = %260
  %277 = load i32, i32* %12, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load i32, i32* %13, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %13, align 4
  br label %282

282:                                              ; preds = %279, %276
  %283 = load i8*, i8** %6, align 8
  %284 = load i8*, i8** %14, align 8
  %285 = icmp eq i8* %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = load i8*, i8** %15, align 8
  store i8* %287, i8** %6, align 8
  br label %292

288:                                              ; preds = %282
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* %8, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %8, align 4
  br label %292

292:                                              ; preds = %288, %286
  br label %293

293:                                              ; preds = %292, %223
  %294 = load i8**, i8*** %5, align 8
  %295 = load i8*, i8** %6, align 8
  %296 = call i32 @SET_TAILPTR(i8** %294, i8* %295)
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* %10, align 4
  %300 = call float @scale_integer_to_float(i32 %297, i32 %298, i32 %299)
  store float %300, float* %3, align 4
  br label %301

301:                                              ; preds = %293, %214, %208, %203
  %302 = load float, float* %3, align 4
  ret float %302
}

declare dso_local i64 @starts_with(i8**, i8*) #1

declare dso_local i32 @SET_TAILPTR(i8**, i8*) #1

declare dso_local float @scale_integer_to_float(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
