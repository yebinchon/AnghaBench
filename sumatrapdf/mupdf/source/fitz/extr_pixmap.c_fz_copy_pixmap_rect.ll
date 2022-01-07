; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_copy_pixmap_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_copy_pixmap_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@fz_default_color_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_copy_pixmap_rect(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__, align 4
  %19 = alloca %struct.TYPE_12__, align 4
  %20 = alloca %struct.TYPE_11__, align 8
  %21 = bitcast %struct.TYPE_12__* %7 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  store i64 %3, i64* %22, align 4
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  store i64 %4, i64* %23, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32* %5, i32** %11, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = call i32 @fz_pixmap_bbox(i32* %24, %struct.TYPE_11__* %25)
  %27 = bitcast %struct.TYPE_12__* %7 to { i64, i64 }*
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %31 = load i64, i64* %30, align 4
  %32 = call { i64, i64 } @fz_intersect_irect(i64 %29, i64 %31, i32 %26)
  %33 = bitcast %struct.TYPE_12__* %18 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i64, i64 } %32, 0
  store i64 %35, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i64, i64 } %32, 1
  store i64 %37, i64* %36, align 4
  %38 = bitcast %struct.TYPE_12__* %7 to i8*
  %39 = bitcast %struct.TYPE_12__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 16, i1 false)
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = call i32 @fz_pixmap_bbox(i32* %40, %struct.TYPE_11__* %41)
  %43 = bitcast %struct.TYPE_12__* %7 to { i64, i64 }*
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 4
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 1
  %47 = load i64, i64* %46, align 4
  %48 = call { i64, i64 } @fz_intersect_irect(i64 %45, i64 %47, i32 %42)
  %49 = bitcast %struct.TYPE_12__* %19 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = extractvalue { i64, i64 } %48, 0
  store i64 %51, i64* %50, align 4
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = extractvalue { i64, i64 } %48, 1
  store i64 %53, i64* %52, align 4
  %54 = bitcast %struct.TYPE_12__* %7 to i8*
  %55 = bitcast %struct.TYPE_12__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 16, i1 false)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %57, %59
  store i32 %60, i32* %15, align 4
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %62, %64
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %6
  %69 = load i32, i32* %14, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %6
  br label %179

72:                                               ; preds = %68
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %17, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %81, %84
  %86 = mul nsw i32 %79, %85
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %91, %94
  %96 = mul nsw i32 %89, %95
  %97 = add nsw i32 %86, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %78, i64 %98
  store i8* %99, i8** %12, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %16, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %16, align 4
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  %113 = mul nsw i32 %106, %112
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %118, %121
  %123 = mul nsw i32 %116, %122
  %124 = add nsw i32 %113, %123
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %105, i64 %125
  store i8* %126, i8** %13, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %129, %132
  br i1 %133, label %134, label %158

134:                                              ; preds = %72
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %15, align 4
  %139 = mul nsw i32 %138, %137
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %153, %134
  %141 = load i8*, i8** %13, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @memcpy(i8* %141, i8* %142, i32 %143)
  %145 = load i32, i32* %17, align 4
  %146 = load i8*, i8** %12, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %12, align 8
  %149 = load i32, i32* %16, align 4
  %150 = load i8*, i8** %13, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %13, align 8
  br label %153

153:                                              ; preds = %140
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %140, label %157

157:                                              ; preds = %153
  br label %179

158:                                              ; preds = %72
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %160 = bitcast %struct.TYPE_11__* %20 to i8*
  %161 = bitcast %struct.TYPE_11__* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 40, i1 false)
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  store i32 %163, i32* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  store i32 %166, i32* %167, align 8
  %168 = load i32, i32* %15, align 4
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 5
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %14, align 4
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 6
  store i32 %170, i32* %171, align 8
  %172 = load i8*, i8** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store i8* %172, i8** %173, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* @fz_default_color_params, align 4
  %178 = call i32 @fz_convert_pixmap_samples(i32* %174, %struct.TYPE_11__* %175, %struct.TYPE_11__* %20, i32* null, i32* %176, i32 %177, i32 0)
  br label %179

179:                                              ; preds = %71, %158, %157
  ret void
}

declare dso_local { i64, i64 } @fz_intersect_irect(i64, i64, i32) #1

declare dso_local i32 @fz_pixmap_bbox(i32*, %struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_convert_pixmap_samples(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
