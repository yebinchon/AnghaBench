; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_rectto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_rectto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot modify a packed path\00", align 1
@FZ_MOVETO = common dso_local global i64 0, align 8
@FZ_RECTTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_rectto(i32* %0, %struct.TYPE_6__* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %20 = call i32 @fz_throw(i32* %18, i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %6
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = call i64 @LAST_CMD(%struct.TYPE_6__* %27)
  %29 = load i64, i64* @FZ_MOVETO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %33, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %31, %26, %21
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = load i32, i32* @FZ_RECTTO, align 4
  %44 = call i32 @push_cmd(i32* %41, %struct.TYPE_6__* %42, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = load float, float* %9, align 4
  %48 = load float, float* %10, align 4
  %49 = call i32 @push_coord(i32* %45, %struct.TYPE_6__* %46, float %47, float %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = load float, float* %11, align 4
  %53 = load float, float* %12, align 4
  %54 = call i32 @push_coord(i32* %50, %struct.TYPE_6__* %51, float %52, float %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i64 @LAST_CMD(%struct.TYPE_6__*) #1

declare dso_local i32 @push_cmd(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @push_coord(i32*, %struct.TYPE_6__*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
