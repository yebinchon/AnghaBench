; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_objects.c_MFDRV_SelectFont.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_objects.c_MFDRV_SelectFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GGO_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MFDRV_SelectFont(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @GGO_BITMAP, align 4
  %11 = load i32*, i32** %7, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @MFDRV_FindObject(%struct.TYPE_6__* %12, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @GetObjectW(i32 %18, i32 4, i32* %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %45

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @MFDRV_CreateFontIndirect(%struct.TYPE_6__* %23, i32 %24, i32* %8)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %45

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @GDI_hdc_using_object(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @MFDRV_SelectObject(%struct.TYPE_6__* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %28, %21
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @MFDRV_FindObject(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @GetObjectW(i32, i32, i32*) #1

declare dso_local i64 @MFDRV_CreateFontIndirect(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @GDI_hdc_using_object(i32, i32) #1

declare dso_local i64 @MFDRV_SelectObject(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
