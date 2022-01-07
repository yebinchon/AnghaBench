; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_makelayer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_makelayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64*, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_23__*, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64, i64, i64, i64 }

@DBL_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opj_tcd_makelayer(%struct.TYPE_20__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %15, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 0, i64* %35, align 8
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %345, %4
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %348

42:                                               ; preds = %36
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i64 %46
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %16, align 8
  store i64 0, i64* %10, align 8
  br label %48

48:                                               ; preds = %341, %42
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %344

54:                                               ; preds = %48
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i64 %58
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %17, align 8
  store i64 0, i64* %11, align 8
  br label %60

60:                                               ; preds = %337, %54
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %340

66:                                               ; preds = %60
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %70
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %18, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %73 = call i64 @opj_tcd_is_band_empty(%struct.TYPE_15__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %337

76:                                               ; preds = %66
  store i64 0, i64* %12, align 8
  br label %77

77:                                               ; preds = %333, %76
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = mul i64 %81, %84
  %86 = icmp ult i64 %78, %85
  br i1 %86, label %87, label %336

87:                                               ; preds = %77
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i64 %91
  store %struct.TYPE_22__* %92, %struct.TYPE_22__** %19, align 8
  store i64 0, i64* %13, align 8
  br label %93

93:                                               ; preds = %329, %87
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = mul i64 %97, %100
  %102 = icmp ult i64 %94, %101
  br i1 %102, label %103, label %332

103:                                              ; preds = %93
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i64 %108
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** %20, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i64 %113
  store %struct.TYPE_24__* %114, %struct.TYPE_24__** %21, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %103
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %103
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %22, align 8
  %124 = load i64, i64* %7, align 8
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %22, align 8
  br label %206

130:                                              ; preds = %120
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %14, align 8
  br label %134

134:                                              ; preds = %202, %130
  %135 = load i64, i64* %14, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %205

140:                                              ; preds = %134
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = load i64, i64* %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i64 %144
  store %struct.TYPE_23__* %145, %struct.TYPE_23__** %25, align 8
  %146 = load i64, i64* %22, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %140
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %23, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %24, align 8
  br label %180

155:                                              ; preds = %140
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %160, align 8
  %162 = load i64, i64* %22, align 8
  %163 = sub i64 %162, 1
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = sub i64 %158, %166
  store i64 %167, i64* %23, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %172, align 8
  %174 = load i64, i64* %22, align 8
  %175 = sub i64 %174, 1
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %170, %178
  store i64 %179, i64* %24, align 8
  br label %180

180:                                              ; preds = %155, %148
  %181 = load i64, i64* %23, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %180
  %184 = load i64, i64* %24, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i64, i64* %14, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %22, align 8
  br label %189

189:                                              ; preds = %186, %183
  br label %202

190:                                              ; preds = %180
  %191 = load i64, i64* %7, align 8
  %192 = load i64, i64* %24, align 8
  %193 = load i64, i64* %23, align 8
  %194 = udiv i64 %192, %193
  %195 = sub i64 %191, %194
  %196 = load i64, i64* @DBL_EPSILON, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load i64, i64* %14, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %22, align 8
  br label %201

201:                                              ; preds = %198, %190
  br label %202

202:                                              ; preds = %201, %189
  %203 = load i64, i64* %14, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %14, align 8
  br label %134

205:                                              ; preds = %134
  br label %206

206:                                              ; preds = %205, %126
  %207 = load i64, i64* %22, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = sub i64 %207, %210
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %206
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 1
  store i64 0, i64* %220, align 8
  br label %329

221:                                              ; preds = %206
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %252

226:                                              ; preds = %221
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %228, align 8
  %230 = load i64, i64* %22, align 8
  %231 = sub i64 %230, 1
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 2
  store i64 %234, i64* %236, align 8
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 3
  store i64 %239, i64* %241, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %243, align 8
  %245 = load i64, i64* %22, align 8
  %246 = sub i64 %245, 1
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 1
  store i64 %249, i64* %251, align 8
  br label %311

252:                                              ; preds = %221
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 3
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %254, align 8
  %256 = load i64, i64* %22, align 8
  %257 = sub i64 %256, 1
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %262, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = sub i64 %266, 1
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = sub i64 %260, %270
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 2
  store i64 %271, i64* %273, align 8
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %278, align 8
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = sub i64 %282, 1
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = add i64 %276, %286
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 3
  store i64 %287, i64* %289, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 3
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %291, align 8
  %293 = load i64, i64* %22, align 8
  %294 = sub i64 %293, 1
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %299, align 8
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = sub i64 %303, 1
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = sub nsw i64 %297, %307
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 1
  store i64 %308, i64* %310, align 8
  br label %311

311:                                              ; preds = %252, %226
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 0
  %317 = load i64*, i64** %316, align 8
  %318 = load i64, i64* %6, align 8
  %319 = getelementptr inbounds i64, i64* %317, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, %314
  store i64 %321, i64* %319, align 8
  %322 = load i64, i64* %8, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %311
  %325 = load i64, i64* %22, align 8
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 0
  store i64 %325, i64* %327, align 8
  br label %328

328:                                              ; preds = %324, %311
  br label %329

329:                                              ; preds = %328, %218
  %330 = load i64, i64* %13, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %13, align 8
  br label %93

332:                                              ; preds = %93
  br label %333

333:                                              ; preds = %332
  %334 = load i64, i64* %12, align 8
  %335 = add i64 %334, 1
  store i64 %335, i64* %12, align 8
  br label %77

336:                                              ; preds = %77
  br label %337

337:                                              ; preds = %336, %75
  %338 = load i64, i64* %11, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %11, align 8
  br label %60

340:                                              ; preds = %60
  br label %341

341:                                              ; preds = %340
  %342 = load i64, i64* %10, align 8
  %343 = add i64 %342, 1
  store i64 %343, i64* %10, align 8
  br label %48

344:                                              ; preds = %48
  br label %345

345:                                              ; preds = %344
  %346 = load i64, i64* %9, align 8
  %347 = add i64 %346, 1
  store i64 %347, i64* %9, align 8
  br label %36

348:                                              ; preds = %36
  ret void
}

declare dso_local i64 @opj_tcd_is_band_empty(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
