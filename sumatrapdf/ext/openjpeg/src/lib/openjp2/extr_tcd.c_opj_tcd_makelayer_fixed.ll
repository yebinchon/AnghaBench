; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_makelayer_fixed.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_makelayer_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_33__*, %struct.TYPE_35__*, %struct.TYPE_28__*, %struct.TYPE_27__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { double }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_34__*, i64, i64, %struct.TYPE_24__* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_24__ = type { i64, i64, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opj_tcd_makelayer_fixed(%struct.TYPE_21__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [10 x [10 x [3 x i64]]], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_35__*, align 8
  %20 = alloca %struct.TYPE_36__*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca %struct.TYPE_25__*, align 8
  %25 = alloca %struct.TYPE_24__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %17, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %18, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_35__*, %struct.TYPE_35__** %37, align 8
  store %struct.TYPE_35__* %38, %struct.TYPE_35__** %19, align 8
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %398, %3
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %401

45:                                               ; preds = %39
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_36__*, %struct.TYPE_36__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %48, i64 %49
  store %struct.TYPE_36__* %50, %struct.TYPE_36__** %20, align 8
  store i64 0, i64* %14, align 8
  br label %51

51:                                               ; preds = %115, %45
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %118

57:                                               ; preds = %51
  store i64 0, i64* %15, align 8
  br label %58

58:                                               ; preds = %111, %57
  %59 = load i64, i64* %15, align 8
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %114

64:                                               ; preds = %58
  store i64 0, i64* %16, align 8
  br label %65

65:                                               ; preds = %107, %64
  %66 = load i64, i64* %16, align 8
  %67 = icmp ult i64 %66, 3
  br i1 %67, label %68, label %110

68:                                               ; preds = %65
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = mul i64 %74, %77
  %79 = mul i64 %78, 3
  %80 = load i64, i64* %15, align 8
  %81 = mul i64 %80, 3
  %82 = add i64 %79, %81
  %83 = load i64, i64* %16, align 8
  %84 = add i64 %82, %83
  %85 = getelementptr inbounds i64, i64* %73, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = fdiv double %96, 1.600000e+01
  %98 = fptosi double %97 to i32
  %99 = mul nsw i32 %87, %98
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %14, align 8
  %102 = getelementptr inbounds [10 x [10 x [3 x i64]]], [10 x [10 x [3 x i64]]]* %13, i64 0, i64 %101
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds [10 x [3 x i64]], [10 x [3 x i64]]* %102, i64 0, i64 %103
  %105 = load i64, i64* %16, align 8
  %106 = getelementptr inbounds [3 x i64], [3 x i64]* %104, i64 0, i64 %105
  store i64 %100, i64* %106, align 8
  br label %107

107:                                              ; preds = %68
  %108 = load i64, i64* %16, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %16, align 8
  br label %65

110:                                              ; preds = %65
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %15, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %15, align 8
  br label %58

114:                                              ; preds = %58
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %14, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %14, align 8
  br label %51

118:                                              ; preds = %51
  store i64 0, i64* %8, align 8
  br label %119

119:                                              ; preds = %394, %118
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %397

125:                                              ; preds = %119
  %126 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i64 %129
  store %struct.TYPE_22__* %130, %struct.TYPE_22__** %21, align 8
  store i64 0, i64* %9, align 8
  br label %131

131:                                              ; preds = %390, %125
  %132 = load i64, i64* %9, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ult i64 %132, %135
  br i1 %136, label %137, label %393

137:                                              ; preds = %131
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = load i64, i64* %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i64 %141
  store %struct.TYPE_26__* %142, %struct.TYPE_26__** %22, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %144 = call i64 @opj_tcd_is_band_empty(%struct.TYPE_26__* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %390

147:                                              ; preds = %137
  store i64 0, i64* %10, align 8
  br label %148

148:                                              ; preds = %386, %147
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = mul i64 %152, %155
  %157 = icmp ult i64 %149, %156
  br i1 %157, label %158, label %389

158:                                              ; preds = %148
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i64 %162
  store %struct.TYPE_23__* %163, %struct.TYPE_23__** %23, align 8
  store i64 0, i64* %11, align 8
  br label %164

164:                                              ; preds = %382, %158
  %165 = load i64, i64* %11, align 8
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = mul i64 %168, %171
  %173 = icmp ult i64 %165, %172
  br i1 %173, label %174, label %385

174:                                              ; preds = %164
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %177, align 8
  %179 = load i64, i64* %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i64 %179
  store %struct.TYPE_25__* %180, %struct.TYPE_25__** %24, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %182, align 8
  %184 = load i64, i64* %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i64 %184
  store %struct.TYPE_24__* %185, %struct.TYPE_24__** %25, align 8
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %189, align 8
  %191 = load i64, i64* %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i32 0, i32 0
  %194 = load double, double* %193, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = sitofp i64 %197 to double
  %199 = fsub double %194, %198
  %200 = fptosi double %199 to i64
  store i64 %200, i64* %27, align 8
  %201 = load i64, i64* %5, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %220

203:                                              ; preds = %174
  %204 = load i64, i64* %5, align 8
  %205 = getelementptr inbounds [10 x [10 x [3 x i64]]], [10 x [10 x [3 x i64]]]* %13, i64 0, i64 %204
  %206 = load i64, i64* %8, align 8
  %207 = getelementptr inbounds [10 x [3 x i64]], [10 x [3 x i64]]* %205, i64 0, i64 %206
  %208 = load i64, i64* %9, align 8
  %209 = getelementptr inbounds [3 x i64], [3 x i64]* %207, i64 0, i64 %208
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %12, align 8
  %211 = load i64, i64* %27, align 8
  %212 = load i64, i64* %12, align 8
  %213 = icmp sge i64 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %203
  store i64 0, i64* %12, align 8
  br label %219

215:                                              ; preds = %203
  %216 = load i64, i64* %27, align 8
  %217 = load i64, i64* %12, align 8
  %218 = sub nsw i64 %217, %216
  store i64 %218, i64* %12, align 8
  br label %219

219:                                              ; preds = %215, %214
  br label %265

220:                                              ; preds = %174
  %221 = load i64, i64* %5, align 8
  %222 = getelementptr inbounds [10 x [10 x [3 x i64]]], [10 x [10 x [3 x i64]]]* %13, i64 0, i64 %221
  %223 = load i64, i64* %8, align 8
  %224 = getelementptr inbounds [10 x [3 x i64]], [10 x [3 x i64]]* %222, i64 0, i64 %223
  %225 = load i64, i64* %9, align 8
  %226 = getelementptr inbounds [3 x i64], [3 x i64]* %224, i64 0, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %5, align 8
  %229 = sub i64 %228, 1
  %230 = getelementptr inbounds [10 x [10 x [3 x i64]]], [10 x [10 x [3 x i64]]]* %13, i64 0, i64 %229
  %231 = load i64, i64* %8, align 8
  %232 = getelementptr inbounds [10 x [3 x i64]], [10 x [3 x i64]]* %230, i64 0, i64 %231
  %233 = load i64, i64* %9, align 8
  %234 = getelementptr inbounds [3 x i64], [3 x i64]* %232, i64 0, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = sub nsw i64 %227, %235
  store i64 %236, i64* %12, align 8
  %237 = load i64, i64* %27, align 8
  %238 = load i64, i64* %5, align 8
  %239 = sub i64 %238, 1
  %240 = getelementptr inbounds [10 x [10 x [3 x i64]]], [10 x [10 x [3 x i64]]]* %13, i64 0, i64 %239
  %241 = load i64, i64* %8, align 8
  %242 = getelementptr inbounds [10 x [3 x i64]], [10 x [3 x i64]]* %240, i64 0, i64 %241
  %243 = load i64, i64* %9, align 8
  %244 = getelementptr inbounds [3 x i64], [3 x i64]* %242, i64 0, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = icmp sge i64 %237, %245
  br i1 %246, label %247, label %264

247:                                              ; preds = %220
  %248 = load i64, i64* %27, align 8
  %249 = load i64, i64* %5, align 8
  %250 = sub i64 %249, 1
  %251 = getelementptr inbounds [10 x [10 x [3 x i64]]], [10 x [10 x [3 x i64]]]* %13, i64 0, i64 %250
  %252 = load i64, i64* %8, align 8
  %253 = getelementptr inbounds [10 x [3 x i64]], [10 x [3 x i64]]* %251, i64 0, i64 %252
  %254 = load i64, i64* %9, align 8
  %255 = getelementptr inbounds [3 x i64], [3 x i64]* %253, i64 0, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = sub nsw i64 %248, %256
  %258 = load i64, i64* %12, align 8
  %259 = sub nsw i64 %258, %257
  store i64 %259, i64* %12, align 8
  %260 = load i64, i64* %12, align 8
  %261 = icmp slt i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %247
  store i64 0, i64* %12, align 8
  br label %263

263:                                              ; preds = %262, %247
  br label %264

264:                                              ; preds = %263, %220
  br label %265

265:                                              ; preds = %264, %219
  %266 = load i64, i64* %5, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 0
  store i64 0, i64* %270, align 8
  br label %271

271:                                              ; preds = %268, %265
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %26, align 8
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %295

279:                                              ; preds = %271
  %280 = load i64, i64* %12, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %279
  %283 = load i64, i64* %12, align 8
  %284 = mul i64 3, %283
  %285 = sub i64 %284, 2
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %287 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %285, %288
  store i64 %289, i64* %26, align 8
  br label %294

290:                                              ; preds = %279
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %26, align 8
  br label %294

294:                                              ; preds = %290, %282
  br label %302

295:                                              ; preds = %271
  %296 = load i64, i64* %12, align 8
  %297 = mul i64 3, %296
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = add i64 %297, %300
  store i64 %301, i64* %26, align 8
  br label %302

302:                                              ; preds = %295, %294
  %303 = load i64, i64* %26, align 8
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = sub i64 %303, %306
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 0
  store i64 %307, i64* %309, align 8
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %302
  br label %382

315:                                              ; preds = %302
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %336

320:                                              ; preds = %315
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_34__*, %struct.TYPE_34__** %322, align 8
  %324 = load i64, i64* %26, align 8
  %325 = sub i64 %324, 1
  %326 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %329, i32 0, i32 2
  store i64 %328, i64* %330, align 8
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 1
  store i64 %333, i64* %335, align 8
  br label %374

336:                                              ; preds = %315
  %337 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_34__*, %struct.TYPE_34__** %338, align 8
  %340 = load i64, i64* %26, align 8
  %341 = sub i64 %340, 1
  %342 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %346 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_34__*, %struct.TYPE_34__** %346, align 8
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = sub i64 %350, 1
  %352 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = sub nsw i64 %344, %354
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 2
  store i64 %355, i64* %357, align 8
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_34__*, %struct.TYPE_34__** %362, align 8
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = sub i64 %366, 1
  %368 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %363, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = add nsw i64 %360, %370
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 1
  store i64 %371, i64* %373, align 8
  br label %374

374:                                              ; preds = %336, %320
  %375 = load i64, i64* %6, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %374
  %378 = load i64, i64* %26, align 8
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 0
  store i64 %378, i64* %380, align 8
  br label %381

381:                                              ; preds = %377, %374
  br label %382

382:                                              ; preds = %381, %314
  %383 = load i64, i64* %11, align 8
  %384 = add i64 %383, 1
  store i64 %384, i64* %11, align 8
  br label %164

385:                                              ; preds = %164
  br label %386

386:                                              ; preds = %385
  %387 = load i64, i64* %10, align 8
  %388 = add i64 %387, 1
  store i64 %388, i64* %10, align 8
  br label %148

389:                                              ; preds = %148
  br label %390

390:                                              ; preds = %389, %146
  %391 = load i64, i64* %9, align 8
  %392 = add i64 %391, 1
  store i64 %392, i64* %9, align 8
  br label %131

393:                                              ; preds = %131
  br label %394

394:                                              ; preds = %393
  %395 = load i64, i64* %8, align 8
  %396 = add i64 %395, 1
  store i64 %396, i64* %8, align 8
  br label %119

397:                                              ; preds = %119
  br label %398

398:                                              ; preds = %397
  %399 = load i64, i64* %7, align 8
  %400 = add i64 %399, 1
  store i64 %400, i64* %7, align 8
  br label %39

401:                                              ; preds = %39
  ret void
}

declare dso_local i64 @opj_tcd_is_band_empty(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
