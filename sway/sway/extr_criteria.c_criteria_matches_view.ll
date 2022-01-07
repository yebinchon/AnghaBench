; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_matches_view.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_matches_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.criteria = type { i64, i64, i64, i8, %struct.TYPE_16__*, i64, i64, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.sway_view = type { %struct.sway_container* }
%struct.sway_container = type { %struct.sway_workspace*, %struct.TYPE_23__, %struct.TYPE_21__*, %struct.sway_view* }
%struct.sway_workspace = type { i8* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32, i8** }
%struct.sway_seat = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.sway_view** }

@find_urgent_iterator = common dso_local global i32 0, align 4
@cmp_urgent = common dso_local global i32 0, align 4
@ATOM_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.criteria*, %struct.sway_view*)* @criteria_matches_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @criteria_matches_view(%struct.criteria* %0, %struct.sway_view* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.criteria*, align 8
  %5 = alloca %struct.sway_view*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_view*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sway_container*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.sway_view*, align 8
  %17 = alloca %struct.sway_workspace*, align 8
  store %struct.criteria* %0, %struct.criteria** %4, align 8
  store %struct.sway_view* %1, %struct.sway_view** %5, align 8
  %18 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %18, %struct.sway_seat** %6, align 8
  %19 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %20 = call %struct.sway_container* @seat_get_focused_container(%struct.sway_seat* %19)
  store %struct.sway_container* %20, %struct.sway_container** %7, align 8
  %21 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %22 = icmp ne %struct.sway_container* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 3
  %26 = load %struct.sway_view*, %struct.sway_view** %25, align 8
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi %struct.sway_view* [ %26, %23 ], [ null, %27 ]
  store %struct.sway_view* %29, %struct.sway_view** %8, align 8
  %30 = load %struct.criteria*, %struct.criteria** %4, align 8
  %31 = getelementptr inbounds %struct.criteria, %struct.criteria* %30, i32 0, i32 13
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %34, label %69

34:                                               ; preds = %28
  %35 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %36 = call i8* @view_get_title(%struct.sway_view* %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %343

40:                                               ; preds = %34
  %41 = load %struct.criteria*, %struct.criteria** %4, align 8
  %42 = getelementptr inbounds %struct.criteria, %struct.criteria* %41, i32 0, i32 13
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %68 [
    i32 129, label %46
    i32 128, label %57
  ]

46:                                               ; preds = %40
  %47 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %48 = icmp ne %struct.sway_view* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %52 = call i8* @view_get_title(%struct.sway_view* %51)
  %53 = call i32 @strcmp(i8* %50, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %343

56:                                               ; preds = %49, %46
  br label %68

57:                                               ; preds = %40
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.criteria*, %struct.criteria** %4, align 8
  %60 = getelementptr inbounds %struct.criteria, %struct.criteria* %59, i32 0, i32 13
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @regex_cmp(i8* %58, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %343

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %40, %67, %56
  br label %69

69:                                               ; preds = %68, %28
  %70 = load %struct.criteria*, %struct.criteria** %4, align 8
  %71 = getelementptr inbounds %struct.criteria, %struct.criteria* %70, i32 0, i32 12
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = icmp ne %struct.TYPE_19__* %72, null
  br i1 %73, label %74, label %109

74:                                               ; preds = %69
  %75 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %76 = call i8* @view_get_shell(%struct.sway_view* %75)
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %343

80:                                               ; preds = %74
  %81 = load %struct.criteria*, %struct.criteria** %4, align 8
  %82 = getelementptr inbounds %struct.criteria, %struct.criteria* %81, i32 0, i32 12
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %108 [
    i32 129, label %86
    i32 128, label %97
  ]

86:                                               ; preds = %80
  %87 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %88 = icmp ne %struct.sway_view* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  %91 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %92 = call i8* @view_get_shell(%struct.sway_view* %91)
  %93 = call i32 @strcmp(i8* %90, i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %343

96:                                               ; preds = %89, %86
  br label %108

97:                                               ; preds = %80
  %98 = load i8*, i8** %10, align 8
  %99 = load %struct.criteria*, %struct.criteria** %4, align 8
  %100 = getelementptr inbounds %struct.criteria, %struct.criteria* %99, i32 0, i32 12
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @regex_cmp(i8* %98, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %343

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %80, %107, %96
  br label %109

109:                                              ; preds = %108, %69
  %110 = load %struct.criteria*, %struct.criteria** %4, align 8
  %111 = getelementptr inbounds %struct.criteria, %struct.criteria* %110, i32 0, i32 11
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = icmp ne %struct.TYPE_20__* %112, null
  br i1 %113, label %114, label %149

114:                                              ; preds = %109
  %115 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %116 = call i8* @view_get_app_id(%struct.sway_view* %115)
  store i8* %116, i8** %11, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %343

120:                                              ; preds = %114
  %121 = load %struct.criteria*, %struct.criteria** %4, align 8
  %122 = getelementptr inbounds %struct.criteria, %struct.criteria* %121, i32 0, i32 11
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %148 [
    i32 129, label %126
    i32 128, label %137
  ]

126:                                              ; preds = %120
  %127 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %128 = icmp ne %struct.sway_view* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i8*, i8** %11, align 8
  %131 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %132 = call i8* @view_get_app_id(%struct.sway_view* %131)
  %133 = call i32 @strcmp(i8* %130, i8* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %343

136:                                              ; preds = %129, %126
  br label %148

137:                                              ; preds = %120
  %138 = load i8*, i8** %11, align 8
  %139 = load %struct.criteria*, %struct.criteria** %4, align 8
  %140 = getelementptr inbounds %struct.criteria, %struct.criteria* %139, i32 0, i32 11
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @regex_cmp(i8* %138, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %343

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %120, %147, %136
  br label %149

149:                                              ; preds = %148, %109
  %150 = load %struct.criteria*, %struct.criteria** %4, align 8
  %151 = getelementptr inbounds %struct.criteria, %struct.criteria* %150, i32 0, i32 10
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = icmp ne %struct.TYPE_22__* %152, null
  br i1 %153, label %154, label %193

154:                                              ; preds = %149
  store i32 0, i32* %12, align 4
  %155 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %156 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %155, i32 0, i32 0
  %157 = load %struct.sway_container*, %struct.sway_container** %156, align 8
  store %struct.sway_container* %157, %struct.sway_container** %13, align 8
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %185, %154
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %161 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %160, i32 0, i32 2
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %159, %164
  br i1 %165, label %166, label %188

166:                                              ; preds = %158
  %167 = load %struct.sway_container*, %struct.sway_container** %13, align 8
  %168 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %167, i32 0, i32 2
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.criteria*, %struct.criteria** %4, align 8
  %177 = getelementptr inbounds %struct.criteria, %struct.criteria* %176, i32 0, i32 10
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @regex_cmp(i8* %175, i32 %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %166
  store i32 1, i32* %12, align 4
  br label %188

184:                                              ; preds = %166
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %158

188:                                              ; preds = %183, %158
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  br label %343

192:                                              ; preds = %188
  br label %193

193:                                              ; preds = %192, %149
  %194 = load %struct.criteria*, %struct.criteria** %4, align 8
  %195 = getelementptr inbounds %struct.criteria, %struct.criteria* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %193
  %199 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %200 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %199, i32 0, i32 0
  %201 = load %struct.sway_container*, %struct.sway_container** %200, align 8
  %202 = icmp ne %struct.sway_container* %201, null
  br i1 %202, label %203, label %214

203:                                              ; preds = %198
  %204 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %205 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %204, i32 0, i32 0
  %206 = load %struct.sway_container*, %struct.sway_container** %205, align 8
  %207 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.criteria*, %struct.criteria** %4, align 8
  %211 = getelementptr inbounds %struct.criteria, %struct.criteria* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %209, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %203, %198
  store i32 0, i32* %3, align 4
  br label %343

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215, %193
  %217 = load %struct.criteria*, %struct.criteria** %4, align 8
  %218 = getelementptr inbounds %struct.criteria, %struct.criteria* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %216
  %222 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %223 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %222, i32 0, i32 0
  %224 = load %struct.sway_container*, %struct.sway_container** %223, align 8
  %225 = call i64 @container_is_floating(%struct.sway_container* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  br label %343

228:                                              ; preds = %221
  br label %229

229:                                              ; preds = %228, %216
  %230 = load %struct.criteria*, %struct.criteria** %4, align 8
  %231 = getelementptr inbounds %struct.criteria, %struct.criteria* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %229
  %235 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %236 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %235, i32 0, i32 0
  %237 = load %struct.sway_container*, %struct.sway_container** %236, align 8
  %238 = call i64 @container_is_floating(%struct.sway_container* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  store i32 0, i32* %3, align 4
  br label %343

241:                                              ; preds = %234
  br label %242

242:                                              ; preds = %241, %229
  %243 = load %struct.criteria*, %struct.criteria** %4, align 8
  %244 = getelementptr inbounds %struct.criteria, %struct.criteria* %243, i32 0, i32 3
  %245 = load i8, i8* %244, align 8
  %246 = icmp ne i8 %245, 0
  br i1 %246, label %247, label %290

247:                                              ; preds = %242
  %248 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %249 = call i32 @view_is_urgent(%struct.sway_view* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %247
  store i32 0, i32* %3, align 4
  br label %343

252:                                              ; preds = %247
  %253 = call %struct.TYPE_17__* (...) @create_list()
  store %struct.TYPE_17__* %253, %struct.TYPE_17__** %15, align 8
  %254 = load i32, i32* @find_urgent_iterator, align 4
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %256 = call i32 @root_for_each_container(i32 %254, %struct.TYPE_17__* %255)
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %258 = load i32, i32* @cmp_urgent, align 4
  %259 = call i32 @list_stable_sort(%struct.TYPE_17__* %257, i32 %258)
  %260 = load %struct.criteria*, %struct.criteria** %4, align 8
  %261 = getelementptr inbounds %struct.criteria, %struct.criteria* %260, i32 0, i32 3
  %262 = load i8, i8* %261, align 8
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 111
  br i1 %264, label %265, label %271

265:                                              ; preds = %252
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  %268 = load %struct.sway_view**, %struct.sway_view*** %267, align 8
  %269 = getelementptr inbounds %struct.sway_view*, %struct.sway_view** %268, i64 0
  %270 = load %struct.sway_view*, %struct.sway_view** %269, align 8
  store %struct.sway_view* %270, %struct.sway_view** %16, align 8
  br label %282

271:                                              ; preds = %252
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 1
  %274 = load %struct.sway_view**, %struct.sway_view*** %273, align 8
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sub nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.sway_view*, %struct.sway_view** %274, i64 %279
  %281 = load %struct.sway_view*, %struct.sway_view** %280, align 8
  store %struct.sway_view* %281, %struct.sway_view** %16, align 8
  br label %282

282:                                              ; preds = %271, %265
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %284 = call i32 @list_free(%struct.TYPE_17__* %283)
  %285 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %286 = load %struct.sway_view*, %struct.sway_view** %16, align 8
  %287 = icmp ne %struct.sway_view* %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  store i32 0, i32* %3, align 4
  br label %343

289:                                              ; preds = %282
  br label %290

290:                                              ; preds = %289, %242
  %291 = load %struct.criteria*, %struct.criteria** %4, align 8
  %292 = getelementptr inbounds %struct.criteria, %struct.criteria* %291, i32 0, i32 4
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %292, align 8
  %294 = icmp ne %struct.TYPE_16__* %293, null
  br i1 %294, label %295, label %342

295:                                              ; preds = %290
  %296 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %297 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %296, i32 0, i32 0
  %298 = load %struct.sway_container*, %struct.sway_container** %297, align 8
  %299 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %298, i32 0, i32 0
  %300 = load %struct.sway_workspace*, %struct.sway_workspace** %299, align 8
  store %struct.sway_workspace* %300, %struct.sway_workspace** %17, align 8
  %301 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %302 = icmp ne %struct.sway_workspace* %301, null
  br i1 %302, label %304, label %303

303:                                              ; preds = %295
  store i32 0, i32* %3, align 4
  br label %343

304:                                              ; preds = %295
  %305 = load %struct.criteria*, %struct.criteria** %4, align 8
  %306 = getelementptr inbounds %struct.criteria, %struct.criteria* %305, i32 0, i32 4
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  switch i32 %309, label %341 [
    i32 129, label %310
    i32 128, label %328
  ]

310:                                              ; preds = %304
  %311 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %312 = icmp ne %struct.sway_view* %311, null
  br i1 %312, label %313, label %327

313:                                              ; preds = %310
  %314 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %315 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %318 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %317, i32 0, i32 0
  %319 = load %struct.sway_container*, %struct.sway_container** %318, align 8
  %320 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %319, i32 0, i32 0
  %321 = load %struct.sway_workspace*, %struct.sway_workspace** %320, align 8
  %322 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %321, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @strcmp(i8* %316, i8* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %313
  store i32 0, i32* %3, align 4
  br label %343

327:                                              ; preds = %313, %310
  br label %341

328:                                              ; preds = %304
  %329 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %330 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = load %struct.criteria*, %struct.criteria** %4, align 8
  %333 = getelementptr inbounds %struct.criteria, %struct.criteria* %332, i32 0, i32 4
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = call i64 @regex_cmp(i8* %331, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %328
  store i32 0, i32* %3, align 4
  br label %343

340:                                              ; preds = %328
  br label %341

341:                                              ; preds = %304, %340, %327
  br label %342

342:                                              ; preds = %341, %290
  store i32 1, i32* %3, align 4
  br label %343

343:                                              ; preds = %342, %339, %326, %303, %288, %251, %240, %227, %214, %191, %146, %135, %119, %106, %95, %79, %66, %55, %39
  %344 = load i32, i32* %3, align 4
  ret i32 %344
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_container* @seat_get_focused_container(%struct.sway_seat*) #1

declare dso_local i8* @view_get_title(%struct.sway_view*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @regex_cmp(i8*, i32) #1

declare dso_local i8* @view_get_shell(%struct.sway_view*) #1

declare dso_local i8* @view_get_app_id(%struct.sway_view*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @view_is_urgent(%struct.sway_view*) #1

declare dso_local %struct.TYPE_17__* @create_list(...) #1

declare dso_local i32 @root_for_each_container(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @list_stable_sort(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @list_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
