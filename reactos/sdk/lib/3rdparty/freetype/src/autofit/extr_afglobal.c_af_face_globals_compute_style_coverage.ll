; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/autofit/extr_afglobal.c_af_face_globals_compute_style_coverage.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/autofit/extr_afglobal.c_af_face_globals_compute_style_coverage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32*, i64, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }

@AF_STYLE_UNASSIGNED = common dso_local global i32 0, align 4
@FT_ENCODING_UNICODE = common dso_local global i32 0, align 4
@FT_Err_Ok = common dso_local global i64 0, align 8
@AF_STYLE_CLASSES_GET = common dso_local global %struct.TYPE_18__** null, align 8
@AF_SCRIPT_CLASSES_GET = common dso_local global %struct.TYPE_20__** null, align 8
@AF_COVERAGE_DEFAULT = common dso_local global i64 0, align 8
@AF_STYLE_MASK = common dso_local global i32 0, align 4
@AF_NONBASE = common dso_local global i32 0, align 4
@AF_DIGIT = common dso_local global i32 0, align 4
@af_style_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*)* @af_face_globals_compute_style_coverage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @af_face_globals_compute_style_coverage(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %4, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %6, align 8
  store i64 4294967295, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %40, %1
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* @AF_STYLE_UNASSIGNED, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %29

43:                                               ; preds = %29
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = load i32, i32* @FT_ENCODING_UNICODE, align 4
  %46 = call i64 @FT_Select_Charmap(%struct.TYPE_17__* %44, i32 %45)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %50, i64* %3, align 8
  br label %325

51:                                               ; preds = %43
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %261, %51
  %53 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @AF_STYLE_CLASSES_GET, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %53, i64 %54
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = icmp ne %struct.TYPE_18__* %56, null
  br i1 %57, label %58, label %264

58:                                               ; preds = %52
  %59 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @AF_STYLE_CLASSES_GET, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %59, i64 %60
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %10, align 8
  %63 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @AF_SCRIPT_CLASSES_GET, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %63, i64 %66
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %11, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = icmp ne %struct.TYPE_19__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %58
  br label %261

74:                                               ; preds = %58
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AF_COVERAGE_DEFAULT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %255

80:                                               ; preds = %74
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %83, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i64, i64* %7, align 8
  store i64 %91, i64* %9, align 8
  br label %92

92:                                               ; preds = %90, %80
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  store %struct.TYPE_19__* %95, %struct.TYPE_19__** %12, align 8
  br label %96

96:                                               ; preds = %168, %92
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %171

101:                                              ; preds = %96
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %13, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i64 @FT_Get_Char_Index(%struct.TYPE_17__* %105, i64 %106)
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %101
  %111 = load i64, i64* %14, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %110
  %117 = load i32*, i32** %6, align 8
  %118 = load i64, i64* %14, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @AF_STYLE_MASK, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @AF_STYLE_UNASSIGNED, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load i64, i64* %7, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32*, i32** %6, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %127, i32* %130, align 4
  br label %131

131:                                              ; preds = %125, %116, %110, %101
  br label %132

132:                                              ; preds = %166, %131
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %134 = load i64, i64* %13, align 8
  %135 = call i64 @FT_Get_Next_Char(%struct.TYPE_17__* %133, i64 %134, i64* %14)
  store i64 %135, i64* %13, align 8
  %136 = load i64, i64* %14, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ugt i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138, %132
  br label %167

145:                                              ; preds = %138
  %146 = load i64, i64* %14, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ult i64 %146, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %145
  %152 = load i32*, i32** %6, align 8
  %153 = load i64, i64* %14, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @AF_STYLE_MASK, align 4
  %157 = and i32 %155, %156
  %158 = load i32, i32* @AF_STYLE_UNASSIGNED, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = load i64, i64* %7, align 8
  %162 = trunc i64 %161 to i32
  %163 = load i32*, i32** %6, align 8
  %164 = load i64, i64* %14, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 %162, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %151, %145
  br label %132

167:                                              ; preds = %144
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 1
  store %struct.TYPE_19__* %170, %struct.TYPE_19__** %12, align 8
  br label %96

171:                                              ; preds = %96
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %173, align 8
  store %struct.TYPE_19__* %174, %struct.TYPE_19__** %12, align 8
  br label %175

175:                                              ; preds = %251, %171
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %254

180:                                              ; preds = %175
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %15, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %185 = load i64, i64* %15, align 8
  %186 = call i64 @FT_Get_Char_Index(%struct.TYPE_17__* %184, i64 %185)
  store i64 %186, i64* %16, align 8
  %187 = load i64, i64* %16, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %212

189:                                              ; preds = %180
  %190 = load i64, i64* %16, align 8
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ult i64 %190, %193
  br i1 %194, label %195, label %212

195:                                              ; preds = %189
  %196 = load i32*, i32** %6, align 8
  %197 = load i64, i64* %16, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @AF_STYLE_MASK, align 4
  %201 = and i32 %199, %200
  %202 = load i64, i64* %7, align 8
  %203 = trunc i64 %202 to i32
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %195
  %206 = load i32, i32* @AF_NONBASE, align 4
  %207 = load i32*, i32** %6, align 8
  %208 = load i64, i64* %16, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %205, %195, %189, %180
  br label %213

213:                                              ; preds = %249, %212
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %215 = load i64, i64* %15, align 8
  %216 = call i64 @FT_Get_Next_Char(%struct.TYPE_17__* %214, i64 %215, i64* %16)
  store i64 %216, i64* %15, align 8
  %217 = load i64, i64* %16, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %213
  %220 = load i64, i64* %15, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ugt i64 %220, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %219, %213
  br label %250

226:                                              ; preds = %219
  %227 = load i64, i64* %16, align 8
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ult i64 %227, %230
  br i1 %231, label %232, label %249

232:                                              ; preds = %226
  %233 = load i32*, i32** %6, align 8
  %234 = load i64, i64* %16, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @AF_STYLE_MASK, align 4
  %238 = and i32 %236, %237
  %239 = load i64, i64* %7, align 8
  %240 = trunc i64 %239 to i32
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %232
  %243 = load i32, i32* @AF_NONBASE, align 4
  %244 = load i32*, i32** %6, align 8
  %245 = load i64, i64* %16, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %243
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %242, %232, %226
  br label %213

250:                                              ; preds = %225
  br label %251

251:                                              ; preds = %250
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 1
  store %struct.TYPE_19__* %253, %struct.TYPE_19__** %12, align 8
  br label %175

254:                                              ; preds = %175
  br label %260

255:                                              ; preds = %74
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %258 = load i32*, i32** %6, align 8
  %259 = call i32 @af_shaper_get_coverage(%struct.TYPE_21__* %256, %struct.TYPE_18__* %257, i32* %258, i32 0)
  br label %260

260:                                              ; preds = %255, %254
  br label %261

261:                                              ; preds = %260, %73
  %262 = load i64, i64* %7, align 8
  %263 = add i64 %262, 1
  store i64 %263, i64* %7, align 8
  br label %52

264:                                              ; preds = %52
  store i64 0, i64* %7, align 8
  br label %265

265:                                              ; preds = %287, %264
  %266 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @AF_STYLE_CLASSES_GET, align 8
  %267 = load i64, i64* %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %266, i64 %267
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %268, align 8
  %270 = icmp ne %struct.TYPE_18__* %269, null
  br i1 %270, label %271, label %290

271:                                              ; preds = %265
  %272 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @AF_STYLE_CLASSES_GET, align 8
  %273 = load i64, i64* %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %272, i64 %273
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %274, align 8
  store %struct.TYPE_18__* %275, %struct.TYPE_18__** %17, align 8
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @AF_COVERAGE_DEFAULT, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %271
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %284 = load i32*, i32** %6, align 8
  %285 = call i32 @af_shaper_get_coverage(%struct.TYPE_21__* %282, %struct.TYPE_18__* %283, i32* %284, i32 0)
  br label %286

286:                                              ; preds = %281, %271
  br label %287

287:                                              ; preds = %286
  %288 = load i64, i64* %7, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %7, align 8
  br label %265

290:                                              ; preds = %265
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %292 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @AF_STYLE_CLASSES_GET, align 8
  %293 = load i64, i64* %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %292, i64 %293
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %294, align 8
  %296 = load i32*, i32** %6, align 8
  %297 = call i32 @af_shaper_get_coverage(%struct.TYPE_21__* %291, %struct.TYPE_18__* %295, i32* %296, i32 1)
  store i64 48, i64* %8, align 8
  br label %298

298:                                              ; preds = %321, %290
  %299 = load i64, i64* %8, align 8
  %300 = icmp ule i64 %299, 57
  br i1 %300, label %301, label %324

301:                                              ; preds = %298
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %303 = load i64, i64* %8, align 8
  %304 = call i64 @FT_Get_Char_Index(%struct.TYPE_17__* %302, i64 %303)
  store i64 %304, i64* %18, align 8
  %305 = load i64, i64* %18, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %320

307:                                              ; preds = %301
  %308 = load i64, i64* %18, align 8
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp ult i64 %308, %311
  br i1 %312, label %313, label %320

313:                                              ; preds = %307
  %314 = load i32, i32* @AF_DIGIT, align 4
  %315 = load i32*, i32** %6, align 8
  %316 = load i64, i64* %18, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, %314
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %313, %307, %301
  br label %321

321:                                              ; preds = %320
  %322 = load i64, i64* %8, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %8, align 8
  br label %298

324:                                              ; preds = %298
  br label %325

325:                                              ; preds = %324, %49
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @AF_STYLE_UNASSIGNED, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %372

333:                                              ; preds = %325
  store i64 0, i64* %19, align 8
  br label %334

334:                                              ; preds = %368, %333
  %335 = load i64, i64* %19, align 8
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = icmp ult i64 %335, %338
  br i1 %339, label %340, label %371

340:                                              ; preds = %334
  %341 = load i32*, i32** %6, align 8
  %342 = load i64, i64* %19, align 8
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @AF_STYLE_MASK, align 4
  %346 = and i32 %344, %345
  %347 = load i32, i32* @AF_STYLE_UNASSIGNED, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %367

349:                                              ; preds = %340
  %350 = load i32, i32* @AF_STYLE_MASK, align 4
  %351 = xor i32 %350, -1
  %352 = load i32*, i32** %6, align 8
  %353 = load i64, i64* %19, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = and i32 %355, %351
  store i32 %356, i32* %354, align 4
  %357 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 2
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = load i32*, i32** %6, align 8
  %363 = load i64, i64* %19, align 8
  %364 = getelementptr inbounds i32, i32* %362, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %365, %361
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %349, %340
  br label %368

368:                                              ; preds = %367
  %369 = load i64, i64* %19, align 8
  %370 = add i64 %369, 1
  store i64 %370, i64* %19, align 8
  br label %334

371:                                              ; preds = %334
  br label %372

372:                                              ; preds = %371, %325
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %374 = load i32, i32* %5, align 4
  %375 = call i32 @FT_Set_Charmap(%struct.TYPE_17__* %373, i32 %374)
  %376 = load i64, i64* %3, align 8
  ret i64 %376
}

declare dso_local i64 @FT_Select_Charmap(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @FT_Get_Char_Index(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @FT_Get_Next_Char(%struct.TYPE_17__*, i64, i64*) #1

declare dso_local i32 @af_shaper_get_coverage(%struct.TYPE_21__*, %struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @FT_Set_Charmap(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
