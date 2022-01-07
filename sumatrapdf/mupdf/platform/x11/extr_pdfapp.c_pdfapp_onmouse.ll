; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_pdfapp_onmouse.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_pdfapp_onmouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__, i64, i32*, i64, i32, %struct.TYPE_24__*, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i64, i64, i64, i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@HAND = common dso_local global i32 0, align 4
@ARROW = common dso_local global i32 0, align 4
@BEYOND_THRESHHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdfapp_onmouse(%struct.TYPE_22__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_25__, align 4
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_25__, align 4
  %20 = alloca %struct.TYPE_23__, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 12
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 17
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 3
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 16
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %35, align 4
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 4
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 5
  store i32 0, i32* %40, align 4
  store i32 0, i32* %18, align 4
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %6
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 12
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 11
  %51 = load i64, i64* %50, align 8
  call void @fz_pixmap_bbox(%struct.TYPE_25__* sret %19, i32* %48, i64 %51)
  %52 = bitcast %struct.TYPE_25__* %14 to i8*
  %53 = bitcast %struct.TYPE_25__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 24, i1 false)
  br label %54

54:                                               ; preds = %45, %6
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %59, %61
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %68, %70
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = call i32 @pdfapp_viewctm(i32* %16, %struct.TYPE_22__* %73)
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @fz_invert_matrix(i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = bitcast %struct.TYPE_23__* %17 to i64*
  %79 = load i64, i64* %78, align 4
  %80 = call i64 @fz_transform_point(i64 %79, i32 %77)
  %81 = bitcast %struct.TYPE_23__* %20 to i64*
  store i64 %80, i64* %81, align 4
  %82 = bitcast %struct.TYPE_23__* %17 to i8*
  %83 = bitcast %struct.TYPE_23__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 8, i1 false)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 15
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %85, align 8
  store %struct.TYPE_24__* %86, %struct.TYPE_24__** %15, align 8
  br label %87

87:                                               ; preds = %129, %54
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %89 = icmp ne %struct.TYPE_24__* %88, null
  br i1 %89, label %90, label %133

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %93, %97
  br i1 %98, label %99, label %128

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp sle i64 %102, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %111, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp sle i64 %120, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %133

127:                                              ; preds = %117, %108
  br label %128

128:                                              ; preds = %127, %99, %90
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  store %struct.TYPE_24__* %132, %struct.TYPE_24__** %15, align 8
  br label %87

133:                                              ; preds = %126, %87
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %135 = icmp ne %struct.TYPE_24__* %134, null
  br i1 %135, label %136, label %181

136:                                              ; preds = %133
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %138 = load i32, i32* @HAND, align 4
  %139 = call i32 @wincursor(%struct.TYPE_22__* %137, i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %180

142:                                              ; preds = %136
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %180

145:                                              ; preds = %142
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %180, label %148

148:                                              ; preds = %145
  %149 = load i32*, i32** %13, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @fz_is_external_link(i32* %149, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @pdfapp_gotouri(%struct.TYPE_22__* %156, i32 %159)
  br label %179

161:                                              ; preds = %148
  %162 = load i32*, i32** %13, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 14
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @fz_resolve_link(i32* %162, i32 %165, i32 %168, i32* null, i32* null)
  store i32 %169, i32* %21, align 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %171 = load i32*, i32** %13, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 14
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %21, align 4
  %176 = call i64 @fz_page_number_from_location(i32* %171, i32 %174, i32 %175)
  %177 = add nsw i64 %176, 1
  %178 = call i32 @pdfapp_gotopage(%struct.TYPE_22__* %170, i64 %177)
  br label %179

179:                                              ; preds = %161, %155
  br label %663

180:                                              ; preds = %145, %142, %136
  br label %185

181:                                              ; preds = %133
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %183 = load i32, i32* @ARROW, align 4
  %184 = call i32 @wincursor(%struct.TYPE_22__* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %180
  %186 = load i32, i32* %12, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %312

188:                                              ; preds = %185
  %189 = load i32, i32* %18, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %312, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %10, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %210

194:                                              ; preds = %191
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %194
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 3
  store i32 1, i32* %201, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 4
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 6
  store i32 0, i32* %209, align 8
  br label %210

210:                                              ; preds = %199, %194, %191
  %211 = load i32, i32* %10, align 4
  %212 = icmp eq i32 %211, 3
  br i1 %212, label %213, label %243

213:                                              ; preds = %210
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %243, label %218

218:                                              ; preds = %213
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 2
  store i32 1, i32* %220, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %9, align 4
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 10
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  store i32 %227, i32* %230, align 8
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 10
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 1
  store i32 %231, i32* %234, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 10
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 2
  store i32 %235, i32* %238, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 10
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 3
  store i32 %239, i32* %242, align 4
  br label %243

243:                                              ; preds = %218, %213, %210
  %244 = load i32, i32* %10, align 4
  %245 = icmp eq i32 %244, 4
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %10, align 4
  %248 = icmp eq i32 %247, 5
  br i1 %248, label %249, label %257

249:                                              ; preds = %246, %243
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp eq i32 %252, 4
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i32 1, i32 -1
  %256 = call i32 @handlescroll(%struct.TYPE_22__* %250, i32 %251, i32 %255)
  br label %257

257:                                              ; preds = %249, %246
  %258 = load i32, i32* %10, align 4
  %259 = icmp eq i32 %258, 6
  br i1 %259, label %263, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* %10, align 4
  %262 = icmp eq i32 %261, 7
  br i1 %262, label %263, label %272

263:                                              ; preds = %260, %257
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %265 = load i32, i32* %11, align 4
  %266 = xor i32 %265, 1
  %267 = load i32, i32* %10, align 4
  %268 = icmp eq i32 %267, 6
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i32 1, i32 -1
  %271 = call i32 @handlescroll(%struct.TYPE_22__* %264, i32 %266, i32 %270)
  br label %272

272:                                              ; preds = %263, %260
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 13
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %311

277:                                              ; preds = %272
  %278 = load i32, i32* %10, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %295

280:                                              ; preds = %277
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 7
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 8
  %286 = load i32, i32* %285, align 8
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %280
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 4
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %294 = call i32 @pdfapp_showpage(%struct.TYPE_22__* %293, i32 1, i32 1, i32 1, i32 0, i32 0)
  br label %295

295:                                              ; preds = %288, %280, %277
  %296 = load i32, i32* %10, align 4
  %297 = icmp eq i32 %296, 3
  br i1 %297, label %298, label %310

298:                                              ; preds = %295
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 4
  %302 = icmp sgt i32 %301, 1
  br i1 %302, label %303, label %310

303:                                              ; preds = %298
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 7
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %305, align 4
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %309 = call i32 @pdfapp_showpage(%struct.TYPE_22__* %308, i32 1, i32 1, i32 1, i32 0, i32 0)
  br label %310

310:                                              ; preds = %303, %298, %295
  br label %311

311:                                              ; preds = %310, %272
  br label %663

312:                                              ; preds = %188, %185
  %313 = load i32, i32* %12, align 4
  %314 = icmp eq i32 %313, -1
  br i1 %314, label %315, label %427

315:                                              ; preds = %312
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %424

320:                                              ; preds = %315
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 2
  store i32 0, i32* %322, align 8
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = call i8* @fz_mini(i32 %325, i32 %326)
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = sext i32 %330 to i64
  %332 = sub i64 0, %331
  %333 = getelementptr i8, i8* %327, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr i8, i8* %333, i64 %336
  %338 = ptrtoint i8* %337 to i32
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 10
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 0
  store i32 %338, i32* %341, align 8
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %8, align 4
  %346 = call i8* @fz_maxi(i32 %344, i32 %345)
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = sext i32 %349 to i64
  %351 = sub i64 0, %350
  %352 = getelementptr i8, i8* %346, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr i8, i8* %352, i64 %355
  %357 = ptrtoint i8* %356 to i32
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 10
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 1
  store i32 %357, i32* %360, align 4
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %9, align 4
  %365 = call i8* @fz_mini(i32 %363, i32 %364)
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = sub i64 0, %369
  %371 = getelementptr i8, i8* %365, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr i8, i8* %371, i64 %374
  %376 = ptrtoint i8* %375 to i32
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 10
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 2
  store i32 %376, i32* %379, align 8
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 5
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %9, align 4
  %384 = call i8* @fz_maxi(i32 %382, i32 %383)
  %385 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = sub i64 0, %388
  %390 = getelementptr i8, i8* %384, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr i8, i8* %390, i64 %393
  %395 = ptrtoint i8* %394 to i32
  %396 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %396, i32 0, i32 10
  %398 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %397, i32 0, i32 3
  store i32 %395, i32* %398, align 4
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %400 = call i32 @winrepaint(%struct.TYPE_22__* %399)
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 10
  %403 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %405, i32 0, i32 10
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = icmp slt i32 %404, %408
  br i1 %409, label %410, label %423

410:                                              ; preds = %320
  %411 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %411, i32 0, i32 10
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 10
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 4
  %419 = icmp slt i32 %414, %418
  br i1 %419, label %420, label %423

420:                                              ; preds = %410
  %421 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %422 = call i32 @windocopy(%struct.TYPE_22__* %421)
  br label %423

423:                                              ; preds = %420, %410, %320
  br label %424

424:                                              ; preds = %423, %315
  %425 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %425, i32 0, i32 3
  store i32 0, i32* %426, align 4
  br label %662

427:                                              ; preds = %312
  %428 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %576

432:                                              ; preds = %427
  %433 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* %8, align 4
  %437 = add nsw i32 %435, %436
  %438 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %438, i32 0, i32 4
  %440 = load i32, i32* %439, align 8
  %441 = sub nsw i32 %437, %440
  store i32 %441, i32* %22, align 4
  %442 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* %9, align 4
  %446 = add nsw i32 %444, %445
  %447 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %447, i32 0, i32 5
  %449 = load i32, i32* %448, align 4
  %450 = sub nsw i32 %446, %449
  store i32 %450, i32* %23, align 4
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %451, i32 0, i32 9
  %453 = load i32, i32* %452, align 4
  store i32 %453, i32* %24, align 4
  %454 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %454, i32 0, i32 11
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %466

458:                                              ; preds = %432
  %459 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %460 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %459, i32 0, i32 12
  %461 = load i32*, i32** %460, align 8
  %462 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %462, i32 0, i32 11
  %464 = load i64, i64* %463, align 8
  %465 = call i32 @fz_pixmap_height(i32* %461, i64 %464)
  store i32 %465, i32* %24, align 4
  br label %466

466:                                              ; preds = %458, %432
  %467 = load i32, i32* %23, align 4
  %468 = load i32, i32* %24, align 4
  %469 = add nsw i32 %467, %468
  %470 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i32 0, i32 9
  %472 = load i32, i32* %471, align 4
  %473 = icmp slt i32 %469, %472
  br i1 %473, label %477, label %474

474:                                              ; preds = %466
  %475 = load i32, i32* %23, align 4
  %476 = icmp sgt i32 %475, 0
  br i1 %476, label %477, label %565

477:                                              ; preds = %474, %466
  %478 = load i32, i32* %9, align 4
  %479 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %480 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %479, i32 0, i32 5
  %481 = load i32, i32* %480, align 4
  %482 = sub nsw i32 %478, %481
  store i32 %482, i32* %25, align 4
  %483 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %483, i32 0, i32 6
  %485 = load i32, i32* %484, align 8
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %494, label %487

487:                                              ; preds = %477
  %488 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %488, i32 0, i32 6
  %490 = load i32, i32* %489, align 8
  %491 = load i32, i32* %25, align 4
  %492 = xor i32 %490, %491
  %493 = icmp sge i32 %492, 0
  br i1 %493, label %494, label %561

494:                                              ; preds = %487, %477
  %495 = load i32, i32* %25, align 4
  %496 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %497 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %496, i32 0, i32 6
  %498 = load i32, i32* %497, align 8
  %499 = add nsw i32 %498, %495
  store i32 %499, i32* %497, align 8
  %500 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %501 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %500, i32 0, i32 6
  %502 = load i32, i32* %501, align 8
  %503 = load i32, i32* @BEYOND_THRESHHOLD, align 4
  %504 = icmp sgt i32 %502, %503
  br i1 %504, label %505, label %534

505:                                              ; preds = %494
  %506 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %507 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %506, i32 0, i32 7
  %508 = load i32, i32* %507, align 4
  %509 = icmp sgt i32 %508, 1
  br i1 %509, label %510, label %531

510:                                              ; preds = %505
  %511 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %511, i32 0, i32 7
  %513 = load i32, i32* %512, align 4
  %514 = add nsw i32 %513, -1
  store i32 %514, i32* %512, align 4
  %515 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %516 = call i32 @pdfapp_showpage(%struct.TYPE_22__* %515, i32 1, i32 1, i32 1, i32 0, i32 0)
  %517 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %517, i32 0, i32 11
  %519 = load i64, i64* %518, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %530

521:                                              ; preds = %510
  %522 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %523 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %522, i32 0, i32 12
  %524 = load i32*, i32** %523, align 8
  %525 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %526 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %525, i32 0, i32 11
  %527 = load i64, i64* %526, align 8
  %528 = call i32 @fz_pixmap_height(i32* %524, i64 %527)
  %529 = sub nsw i32 0, %528
  store i32 %529, i32* %23, align 4
  br label %530

530:                                              ; preds = %521, %510
  br label %531

531:                                              ; preds = %530, %505
  %532 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %533 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %532, i32 0, i32 6
  store i32 0, i32* %533, align 8
  br label %560

534:                                              ; preds = %494
  %535 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %536 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %535, i32 0, i32 6
  %537 = load i32, i32* %536, align 8
  %538 = load i32, i32* @BEYOND_THRESHHOLD, align 4
  %539 = sub nsw i32 0, %538
  %540 = icmp slt i32 %537, %539
  br i1 %540, label %541, label %559

541:                                              ; preds = %534
  %542 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %543 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %542, i32 0, i32 7
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %546 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %545, i32 0, i32 8
  %547 = load i32, i32* %546, align 8
  %548 = icmp slt i32 %544, %547
  br i1 %548, label %549, label %556

549:                                              ; preds = %541
  %550 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %551 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %550, i32 0, i32 7
  %552 = load i32, i32* %551, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %551, align 4
  %554 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %555 = call i32 @pdfapp_showpage(%struct.TYPE_22__* %554, i32 1, i32 1, i32 1, i32 0, i32 0)
  store i32 0, i32* %23, align 4
  br label %556

556:                                              ; preds = %549, %541
  %557 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %558 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %557, i32 0, i32 6
  store i32 0, i32* %558, align 8
  br label %559

559:                                              ; preds = %556, %534
  br label %560

560:                                              ; preds = %559, %531
  br label %564

561:                                              ; preds = %487
  %562 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %563 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %562, i32 0, i32 6
  store i32 0, i32* %563, align 8
  br label %564

564:                                              ; preds = %561, %560
  br label %565

565:                                              ; preds = %564, %474
  %566 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %567 = load i32, i32* %22, align 4
  %568 = load i32, i32* %23, align 4
  %569 = call i32 @pdfapp_panview(%struct.TYPE_22__* %566, i32 %567, i32 %568)
  %570 = load i32, i32* %8, align 4
  %571 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %572 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %571, i32 0, i32 4
  store i32 %570, i32* %572, align 8
  %573 = load i32, i32* %9, align 4
  %574 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %575 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %574, i32 0, i32 5
  store i32 %573, i32* %575, align 4
  br label %661

576:                                              ; preds = %427
  %577 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %578 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 8
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %660

581:                                              ; preds = %576
  %582 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %583 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %582, i32 0, i32 4
  %584 = load i32, i32* %583, align 8
  %585 = load i32, i32* %8, align 4
  %586 = call i8* @fz_mini(i32 %584, i32 %585)
  %587 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %588 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 8
  %590 = sext i32 %589 to i64
  %591 = sub i64 0, %590
  %592 = getelementptr i8, i8* %586, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %594 = load i32, i32* %593, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr i8, i8* %592, i64 %595
  %597 = ptrtoint i8* %596 to i32
  %598 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %599 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %598, i32 0, i32 10
  %600 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %599, i32 0, i32 0
  store i32 %597, i32* %600, align 8
  %601 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %602 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %601, i32 0, i32 4
  %603 = load i32, i32* %602, align 8
  %604 = load i32, i32* %8, align 4
  %605 = call i8* @fz_maxi(i32 %603, i32 %604)
  %606 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %607 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 8
  %609 = sext i32 %608 to i64
  %610 = sub i64 0, %609
  %611 = getelementptr i8, i8* %605, i64 %610
  %612 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %613 = load i32, i32* %612, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr i8, i8* %611, i64 %614
  %616 = ptrtoint i8* %615 to i32
  %617 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %618 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %617, i32 0, i32 10
  %619 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %618, i32 0, i32 1
  store i32 %616, i32* %619, align 4
  %620 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %621 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %620, i32 0, i32 5
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* %9, align 4
  %624 = call i8* @fz_mini(i32 %622, i32 %623)
  %625 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %626 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 4
  %628 = sext i32 %627 to i64
  %629 = sub i64 0, %628
  %630 = getelementptr i8, i8* %624, i64 %629
  %631 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr i8, i8* %630, i64 %633
  %635 = ptrtoint i8* %634 to i32
  %636 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %637 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %636, i32 0, i32 10
  %638 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %637, i32 0, i32 2
  store i32 %635, i32* %638, align 8
  %639 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %640 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %639, i32 0, i32 5
  %641 = load i32, i32* %640, align 4
  %642 = load i32, i32* %9, align 4
  %643 = call i8* @fz_maxi(i32 %641, i32 %642)
  %644 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %645 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 4
  %647 = sext i32 %646 to i64
  %648 = sub i64 0, %647
  %649 = getelementptr i8, i8* %643, i64 %648
  %650 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %651 = load i32, i32* %650, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr i8, i8* %649, i64 %652
  %654 = ptrtoint i8* %653 to i32
  %655 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %656 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %655, i32 0, i32 10
  %657 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %656, i32 0, i32 3
  store i32 %654, i32* %657, align 4
  %658 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %659 = call i32 @winrepaint(%struct.TYPE_22__* %658)
  br label %660

660:                                              ; preds = %581, %576
  br label %661

661:                                              ; preds = %660, %565
  br label %662

662:                                              ; preds = %661, %424
  br label %663

663:                                              ; preds = %179, %662, %311
  ret void
}

declare dso_local void @fz_pixmap_bbox(%struct.TYPE_25__* sret, i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdfapp_viewctm(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local i64 @fz_transform_point(i64, i32) #1

declare dso_local i32 @wincursor(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @fz_is_external_link(i32*, i32) #1

declare dso_local i32 @pdfapp_gotouri(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @fz_resolve_link(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pdfapp_gotopage(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @fz_page_number_from_location(i32*, i32, i32) #1

declare dso_local i32 @handlescroll(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @pdfapp_showpage(%struct.TYPE_22__*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @fz_mini(i32, i32) #1

declare dso_local i8* @fz_maxi(i32, i32) #1

declare dso_local i32 @winrepaint(%struct.TYPE_22__*) #1

declare dso_local i32 @windocopy(%struct.TYPE_22__*) #1

declare dso_local i32 @fz_pixmap_height(i32*, i64) #1

declare dso_local i32 @pdfapp_panview(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
