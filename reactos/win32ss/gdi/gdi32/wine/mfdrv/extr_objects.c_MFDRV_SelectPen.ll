; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_objects.c_MFDRV_SelectPen.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_objects.c_MFDRV_SelectPen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.brush_pattern = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MFDRV_SelectPen(%struct.TYPE_17__* %0, i32 %1, %struct.brush_pattern* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brush_pattern*, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.brush_pattern* %2, %struct.brush_pattern** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @MFDRV_FindObject(%struct.TYPE_17__* %13, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %86

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @GetObjectW(i32 %19, i32 0, %struct.TYPE_19__* null)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %96

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, 40
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @GetObjectW(i32 %29, i32 40, %struct.TYPE_19__* %11)
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  br label %73

47:                                               ; preds = %24
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.TYPE_19__* @HeapAlloc(i32 %48, i32 0, i32 %49)
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %12, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %54 = call i32 @GetObjectW(i32 %51, i32 %52, %struct.TYPE_19__* %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %72 = call i32 @HeapFree(i32 %70, i32 0, %struct.TYPE_19__* %71)
  br label %73

73:                                               ; preds = %47, %28
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @MFDRV_CreatePenIndirect(%struct.TYPE_17__* %74, i32 %75, %struct.TYPE_18__* %8)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %96

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @GDI_hdc_using_object(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %80, %3
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i64 @MFDRV_SelectObject(%struct.TYPE_17__* %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  br label %94

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i32 [ %92, %91 ], [ 0, %93 ]
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %79, %23
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @MFDRV_FindObject(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @GetObjectW(i32, i32, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @MFDRV_CreatePenIndirect(%struct.TYPE_17__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @GDI_hdc_using_object(i32, i32) #1

declare dso_local i64 @MFDRV_SelectObject(%struct.TYPE_17__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
