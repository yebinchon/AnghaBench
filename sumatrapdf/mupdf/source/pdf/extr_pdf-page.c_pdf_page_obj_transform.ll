; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-page.c_pdf_page_obj_transform.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-page.c_pdf_page_obj_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@UserUnit = common dso_local global i32 0, align 4
@MediaBox = common dso_local global i32 0, align 4
@CropBox = common dso_local global i32 0, align 4
@fz_unit_rect = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@Rotate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_page_obj_transform(i32* %0, i32* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = alloca %struct.TYPE_11__, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__, align 4
  %17 = alloca %struct.TYPE_11__, align 4
  %18 = alloca %struct.TYPE_11__, align 4
  %19 = alloca %struct.TYPE_11__, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32* %3, i32** %8, align 8
  store float 1.000000e+00, float* %14, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %7, align 8
  br label %23

23:                                               ; preds = %22, %4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @UserUnit, align 4
  %27 = call i32 @PDF_NAME(i32 %26)
  %28 = call i32* @pdf_dict_get(i32* %24, i32* %25, i32 %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @pdf_is_real(i32* %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call float @pdf_to_real(i32* %34, i32* %35)
  store float %36, float* %14, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @MediaBox, align 4
  %42 = call i32 @PDF_NAME(i32 %41)
  %43 = call i32 @pdf_dict_get_inheritable(i32* %39, i32* %40, i32 %42)
  %44 = call { i64, i64 } @pdf_to_rect(i32* %38, i32 %43)
  %45 = bitcast %struct.TYPE_11__* %16 to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = extractvalue { i64, i64 } %44, 0
  store i64 %47, i64* %46, align 4
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = extractvalue { i64, i64 } %44, 1
  store i64 %49, i64* %48, align 4
  %50 = bitcast %struct.TYPE_11__* %10 to i8*
  %51 = bitcast %struct.TYPE_11__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 16, i1 false)
  %52 = bitcast %struct.TYPE_11__* %10 to { i64, i64 }*
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 4
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %52, i32 0, i32 1
  %56 = load i64, i64* %55, align 4
  %57 = call i64 @fz_is_empty_rect(i64 %54, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %37
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32 612, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 792, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %37
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @CropBox, align 4
  %69 = call i32 @PDF_NAME(i32 %68)
  %70 = call i32 @pdf_dict_get_inheritable(i32* %66, i32* %67, i32 %69)
  %71 = call { i64, i64 } @pdf_to_rect(i32* %65, i32 %70)
  %72 = bitcast %struct.TYPE_11__* %17 to { i64, i64 }*
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 0
  %74 = extractvalue { i64, i64 } %71, 0
  store i64 %74, i64* %73, align 4
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 1
  %76 = extractvalue { i64, i64 } %71, 1
  store i64 %76, i64* %75, align 4
  %77 = bitcast %struct.TYPE_11__* %11 to i8*
  %78 = bitcast %struct.TYPE_11__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 16, i1 false)
  %79 = bitcast %struct.TYPE_11__* %11 to { i64, i64 }*
  %80 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 4
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 1
  %83 = load i64, i64* %82, align 4
  %84 = call i64 @fz_is_empty_rect(i64 %81, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %64
  %87 = bitcast %struct.TYPE_11__* %10 to { i64, i64 }*
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 4
  %90 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %87, i32 0, i32 1
  %91 = load i64, i64* %90, align 4
  %92 = bitcast %struct.TYPE_11__* %11 to { i64, i64 }*
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 4
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 1
  %96 = load i64, i64* %95, align 4
  %97 = call { i64, i64 } @fz_intersect_rect(i64 %89, i64 %91, i64 %94, i64 %96)
  %98 = bitcast %struct.TYPE_11__* %18 to { i64, i64 }*
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %98, i32 0, i32 0
  %100 = extractvalue { i64, i64 } %97, 0
  store i64 %100, i64* %99, align 4
  %101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %98, i32 0, i32 1
  %102 = extractvalue { i64, i64 } %97, 1
  store i64 %102, i64* %101, align 4
  %103 = bitcast %struct.TYPE_11__* %10 to i8*
  %104 = bitcast %struct.TYPE_11__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 16, i1 false)
  br label %105

105:                                              ; preds = %86, %64
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @fz_min(i32 %107, i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @fz_min(i32 %115, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @fz_max(i32 %123, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @fz_max(i32 %131, i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %140, %143
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %155, label %146

146:                                              ; preds = %105
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %149, %152
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %155, label %158

155:                                              ; preds = %146, %105
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %157 = bitcast %struct.TYPE_11__* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 4 bitcast (%struct.TYPE_11__* @fz_unit_rect to i8*), i64 16, i1 false)
  br label %158

158:                                              ; preds = %155, %146
  %159 = load i32*, i32** %5, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* @Rotate, align 4
  %163 = call i32 @PDF_NAME(i32 %162)
  %164 = call i32 @pdf_dict_get_inheritable(i32* %160, i32* %161, i32 %163)
  %165 = call i32 @pdf_to_int(i32* %159, i32 %164)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %158
  %169 = load i32, i32* %15, align 4
  %170 = sub nsw i32 0, %169
  %171 = srem i32 %170, 360
  %172 = sub nsw i32 360, %171
  store i32 %172, i32* %15, align 4
  br label %173

173:                                              ; preds = %168, %158
  %174 = load i32, i32* %15, align 4
  %175 = icmp sge i32 %174, 360
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %15, align 4
  %178 = srem i32 %177, 360
  store i32 %178, i32* %15, align 4
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 45
  %182 = sdiv i32 %181, 90
  %183 = mul nsw i32 90, %182
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp sge i32 %184, 360
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  store i32 0, i32* %15, align 4
  br label %187

187:                                              ; preds = %186, %179
  %188 = load float, float* %14, align 4
  %189 = load float, float* %14, align 4
  %190 = fneg float %189
  %191 = call i32 @fz_scale(float %188, float %190)
  %192 = load i32*, i32** %8, align 8
  store i32 %191, i32* %192, align 4
  %193 = load i32*, i32** %8, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %15, align 4
  %196 = sub nsw i32 0, %195
  %197 = call i32 @fz_pre_rotate(i32 %194, i32 %196)
  %198 = load i32*, i32** %8, align 8
  store i32 %197, i32* %198, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %200, align 4
  %202 = bitcast %struct.TYPE_11__* %199 to { i64, i64 }*
  %203 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 4
  %205 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %202, i32 0, i32 1
  %206 = load i64, i64* %205, align 4
  %207 = call { i64, i64 } @fz_transform_rect(i64 %204, i64 %206, i32 %201)
  %208 = bitcast %struct.TYPE_11__* %19 to { i64, i64 }*
  %209 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %208, i32 0, i32 0
  %210 = extractvalue { i64, i64 } %207, 0
  store i64 %210, i64* %209, align 4
  %211 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %208, i32 0, i32 1
  %212 = extractvalue { i64, i64 } %207, 1
  store i64 %212, i64* %211, align 4
  %213 = bitcast %struct.TYPE_11__* %12 to i8*
  %214 = bitcast %struct.TYPE_11__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %213, i8* align 4 %214, i64 16, i1 false)
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 0, %218
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 0, %221
  %223 = call i32 @fz_translate(i32 %219, i32 %222)
  %224 = call i32 @fz_concat(i32 %216, i32 %223)
  %225 = load i32*, i32** %8, align 8
  store i32 %224, i32* %225, align 4
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i64 @pdf_is_real(i32*, i32*) #1

declare dso_local float @pdf_to_real(i32*, i32*) #1

declare dso_local { i64, i64 } @pdf_to_rect(i32*, i32) #1

declare dso_local i32 @pdf_dict_get_inheritable(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fz_is_empty_rect(i64, i64) #1

declare dso_local { i64, i64 } @fz_intersect_rect(i64, i64, i64, i64) #1

declare dso_local i8* @fz_min(i32, i32) #1

declare dso_local i8* @fz_max(i32, i32) #1

declare dso_local i32 @pdf_to_int(i32*, i32) #1

declare dso_local i32 @fz_scale(float, float) #1

declare dso_local i32 @fz_pre_rotate(i32, i32) #1

declare dso_local { i64, i64 } @fz_transform_rect(i64, i64, i32) #1

declare dso_local i32 @fz_concat(i32, i32) #1

declare dso_local i32 @fz_translate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
