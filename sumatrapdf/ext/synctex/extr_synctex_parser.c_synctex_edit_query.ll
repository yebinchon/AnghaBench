; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_edit_query.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_edit_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { float, float, float, i32* }
%struct.TYPE_14__ = type { float, float, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i64, i64, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@SYNCTEX_START = common dso_local global i64 0, align 8
@SYNCTEX_CUR = common dso_local global i32* null, align 8
@SYNCTEX_END = common dso_local global i64 0, align 8
@synctex_YES = common dso_local global i32 0, align 4
@SYNCTEX_STATUS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @synctex_edit_query(%struct.TYPE_13__* %0, i32 %1, float %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %17 = bitcast %struct.TYPE_14__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %20 = load i32, i32* @INT_MAX, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %23 = load i32, i32* @INT_MAX, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  store i32 0, i32* %26, align 4
  store i32* null, i32** %16, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = call %struct.TYPE_13__* @synctex_scanner_parse(%struct.TYPE_13__* %27)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %6, align 8
  %29 = icmp eq %struct.TYPE_13__* null, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load float, float* %32, align 8
  %34 = fcmp oge float 0.000000e+00, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %4
  store i32 0, i32* %5, align 4
  br label %271

36:                                               ; preds = %30
  %37 = load float, float* %8, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = fsub float %37, %40
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 8
  %45 = fdiv float %41, %44
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store float %45, float* %46, align 4
  %47 = load float, float* %9, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load float, float* %49, align 8
  %51 = fsub float %47, %50
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 8
  %55 = fdiv float %51, %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store float %55, float* %56, align 4
  %57 = load i64, i64* @SYNCTEX_START, align 8
  %58 = call i32 @free(i64 %57)
  store i32* null, i32** @SYNCTEX_CUR, align 8
  store i64 0, i64* @SYNCTEX_END, align 8
  store i64 0, i64* @SYNCTEX_START, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %10, align 8
  br label %62

62:                                               ; preds = %72, %36
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @SYNCTEX_PAGE(i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %67, %68
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i1 [ false, %62 ], [ %69, %65 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i32*, i32** %10, align 8
  %74 = call i32* @SYNCTEX_SIBLING(i32* %73)
  store i32* %74, i32** %10, align 8
  br label %62

75:                                               ; preds = %70
  %76 = load i32*, i32** %10, align 8
  %77 = icmp eq i32* null, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 -1, i32* %5, align 4
  br label %271

79:                                               ; preds = %75
  %80 = load i32*, i32** %10, align 8
  %81 = call i32* @SYNCTEX_NEXT_HORIZ_BOX(i32* %80)
  store i32* %81, i32** %11, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %265

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %260, %83
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @synctex_YES, align 4
  %87 = bitcast %struct.TYPE_14__* %13 to { <2 x float>, i64 }*
  %88 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %87, i32 0, i32 0
  %89 = load <2 x float>, <2 x float>* %88, align 4
  %90 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %87, i32 0, i32 1
  %91 = load i64, i64* %90, align 4
  %92 = call i64 @_synctex_point_in_box(<2 x float> %89, i64 %91, i32* %85, i32 %86)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %259

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %269, %94
  %96 = load i32*, i32** %11, align 8
  %97 = call i32* @SYNCTEX_NEXT_HORIZ_BOX(i32* %96)
  store i32* %97, i32** %12, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %120

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %115, %99
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* @synctex_YES, align 4
  %103 = bitcast %struct.TYPE_14__* %13 to { <2 x float>, i64 }*
  %104 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %103, i32 0, i32 0
  %105 = load <2 x float>, <2 x float>* %104, align 4
  %106 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %103, i32 0, i32 1
  %107 = load i64, i64* %106, align 4
  %108 = call i64 @_synctex_point_in_box(<2 x float> %105, i64 %107, i32* %101, i32 %102)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %100
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call i32* @_synctex_smallest_container(i32* %111, i32* %112)
  store i32* %113, i32** %11, align 8
  br label %114

114:                                              ; preds = %110, %100
  br label %115

115:                                              ; preds = %114
  %116 = load i32*, i32** %12, align 8
  %117 = call i32* @SYNCTEX_NEXT_HORIZ_BOX(i32* %116)
  store i32* %117, i32** %12, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %100, label %119

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119, %95
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* @synctex_YES, align 4
  %123 = bitcast %struct.TYPE_14__* %13 to { <2 x float>, i64 }*
  %124 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %123, i32 0, i32 0
  %125 = load <2 x float>, <2 x float>* %124, align 4
  %126 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %123, i32 0, i32 1
  %127 = load i64, i64* %126, align 4
  %128 = call i32* @_synctex_eq_deepest_container(<2 x float> %125, i64 %127, i32* %121, i32 %122)
  store i32* %128, i32** %16, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load i32*, i32** %16, align 8
  store i32* %131, i32** %11, align 8
  br label %132

132:                                              ; preds = %130, %120
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* @synctex_YES, align 4
  %135 = bitcast %struct.TYPE_14__* %13 to { <2 x float>, i64 }*
  %136 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %135, i32 0, i32 0
  %137 = load <2 x float>, <2 x float>* %136, align 4
  %138 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %135, i32 0, i32 1
  %139 = load i64, i64* %138, align 4
  %140 = call i32 @_synctex_eq_get_closest_children_in_box(<2 x float> %137, i64 %139, i32* %133, %struct.TYPE_15__* %14, %struct.TYPE_16__* %15, i32 %134)
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %225

144:                                              ; preds = %132
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %225

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i64 @SYNCTEX_TAG(i32* %150)
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i64 @SYNCTEX_TAG(i32* %153)
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %172, label %156

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = call i64 @SYNCTEX_LINE(i32* %158)
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @SYNCTEX_LINE(i32* %161)
  %163 = icmp ne i64 %159, %162
  br i1 %163, label %172, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i64 @SYNCTEX_COLUMN(i32* %166)
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = call i64 @SYNCTEX_COLUMN(i32* %169)
  %171 = icmp ne i64 %167, %170
  br i1 %171, label %172, label %213

172:                                              ; preds = %164, %156, %148
  %173 = call i64 @malloc(i32 16)
  store i64 %173, i64* @SYNCTEX_START, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %211

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %177, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @SYNCTEX_START, align 8
  %185 = inttoptr i64 %184 to i32**
  %186 = getelementptr inbounds i32*, i32** %185, i64 0
  store i32* %183, i32** %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @SYNCTEX_START, align 8
  %190 = inttoptr i64 %189 to i32**
  %191 = getelementptr inbounds i32*, i32** %190, i64 1
  store i32* %188, i32** %191, align 8
  br label %203

192:                                              ; preds = %175
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @SYNCTEX_START, align 8
  %196 = inttoptr i64 %195 to i32**
  %197 = getelementptr inbounds i32*, i32** %196, i64 0
  store i32* %194, i32** %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* @SYNCTEX_START, align 8
  %201 = inttoptr i64 %200 to i32**
  %202 = getelementptr inbounds i32*, i32** %201, i64 1
  store i32* %199, i32** %202, align 8
  br label %203

203:                                              ; preds = %192, %181
  %204 = load i64, i64* @SYNCTEX_START, align 8
  %205 = add i64 %204, 16
  store i64 %205, i64* @SYNCTEX_END, align 8
  store i32* null, i32** @SYNCTEX_CUR, align 8
  %206 = load i64, i64* @SYNCTEX_END, align 8
  %207 = load i64, i64* @SYNCTEX_START, align 8
  %208 = sub nsw i64 %206, %207
  %209 = udiv i64 %208, 8
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %5, align 4
  br label %271

211:                                              ; preds = %172
  %212 = load i32, i32* @SYNCTEX_STATUS_ERROR, align 4
  store i32 %212, i32* %5, align 4
  br label %271

213:                                              ; preds = %164
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp sgt i64 %215, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i32* %221, i32** %222, align 8
  br label %223

223:                                              ; preds = %219, %213
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  store i32* null, i32** %224, align 8
  br label %242

225:                                              ; preds = %144, %132
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i32* %231, i32** %232, align 8
  br label %241

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = load i32*, i32** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i32* %238, i32** %239, align 8
  br label %240

240:                                              ; preds = %237, %233
  br label %241

241:                                              ; preds = %240, %229
  br label %242

242:                                              ; preds = %241, %223
  %243 = call i64 @malloc(i32 8)
  store i64 %243, i64* @SYNCTEX_START, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %257

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* @SYNCTEX_START, align 8
  %249 = inttoptr i64 %248 to i32**
  store i32* %247, i32** %249, align 8
  %250 = load i64, i64* @SYNCTEX_START, align 8
  %251 = add i64 %250, 8
  store i64 %251, i64* @SYNCTEX_END, align 8
  store i32* null, i32** @SYNCTEX_CUR, align 8
  %252 = load i64, i64* @SYNCTEX_END, align 8
  %253 = load i64, i64* @SYNCTEX_START, align 8
  %254 = sub nsw i64 %252, %253
  %255 = udiv i64 %254, 8
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %5, align 4
  br label %271

257:                                              ; preds = %242
  %258 = load i32, i32* @SYNCTEX_STATUS_ERROR, align 4
  store i32 %258, i32* %5, align 4
  br label %271

259:                                              ; preds = %84
  br label %260

260:                                              ; preds = %259
  %261 = load i32*, i32** %11, align 8
  %262 = call i32* @SYNCTEX_NEXT_HORIZ_BOX(i32* %261)
  store i32* %262, i32** %11, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %84, label %264

264:                                              ; preds = %260
  br label %265

265:                                              ; preds = %264, %79
  %266 = load i32*, i32** %10, align 8
  %267 = call i32* @SYNCTEX_CHILD(i32* %266)
  store i32* %267, i32** %11, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  br label %95

270:                                              ; preds = %265
  store i32 0, i32* %5, align 4
  br label %271

271:                                              ; preds = %270, %257, %245, %211, %203, %78, %35
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_13__* @synctex_scanner_parse(%struct.TYPE_13__*) #2

declare dso_local i32 @free(i64) #2

declare dso_local i32 @SYNCTEX_PAGE(i32*) #2

declare dso_local i32* @SYNCTEX_SIBLING(i32*) #2

declare dso_local i32* @SYNCTEX_NEXT_HORIZ_BOX(i32*) #2

declare dso_local i64 @_synctex_point_in_box(<2 x float>, i64, i32*, i32) #2

declare dso_local i32* @_synctex_smallest_container(i32*, i32*) #2

declare dso_local i32* @_synctex_eq_deepest_container(<2 x float>, i64, i32*, i32) #2

declare dso_local i32 @_synctex_eq_get_closest_children_in_box(<2 x float>, i64, i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32) #2

declare dso_local i64 @SYNCTEX_TAG(i32*) #2

declare dso_local i64 @SYNCTEX_LINE(i32*) #2

declare dso_local i64 @SYNCTEX_COLUMN(i32*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32* @SYNCTEX_CHILD(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
