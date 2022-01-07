; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-rasterize.c_fz_new_rasterizer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-rasterize.c_fz_new_rasterizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }

@FZ_EDGEBUFFER_ANY_PART_OF_PIXEL = common dso_local global i32 0, align 4
@FZ_EDGEBUFFER_CENTER_OF_PIXEL = common dso_local global i32 0, align 4
@AA_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @fz_new_rasterizer(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = icmp eq %struct.TYPE_13__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %4, align 8
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = load i32, i32* @FZ_EDGEBUFFER_ANY_PART_OF_PIXEL, align 4
  %21 = call %struct.TYPE_11__* @fz_new_edgebuffer(%struct.TYPE_12__* %19, i32 %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %5, align 8
  br label %33

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = load i32, i32* @FZ_EDGEBUFFER_CENTER_OF_PIXEL, align 4
  %28 = call %struct.TYPE_11__* @fz_new_edgebuffer(%struct.TYPE_12__* %26, i32 %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %5, align 8
  br label %32

29:                                               ; preds = %22
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = call %struct.TYPE_11__* @fz_new_gel(%struct.TYPE_12__* %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %5, align 8
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %32, %18
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = bitcast %struct.TYPE_13__* %35 to i8*
  %38 = bitcast %struct.TYPE_13__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %39
}

declare dso_local %struct.TYPE_11__* @fz_new_edgebuffer(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @fz_new_gel(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
