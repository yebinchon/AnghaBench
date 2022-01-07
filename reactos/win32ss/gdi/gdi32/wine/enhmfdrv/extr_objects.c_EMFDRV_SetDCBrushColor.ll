; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_objects.c_EMFDRV_SetDCBrushColor.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_objects.c_EMFDRV_SetDCBrushColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@DC_BRUSH = common dso_local global i32 0, align 4
@CLR_INVALID = common dso_local global i32 0, align 4
@EMR_SELECTOBJECT = common dso_local global i32 0, align 4
@OBJ_BRUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EMFDRV_SetDCBrushColor(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = call %struct.TYPE_16__* @get_emf_physdev(%struct.TYPE_14__* %10)
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = call %struct.TYPE_17__* @get_physdev_dc(%struct.TYPE_14__* %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %7, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @DC_BRUSH, align 4
  %18 = call i64 @GetStockObject(i32 %17)
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %74

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @DeleteObject(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @CreateSolidBrush(i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = icmp ne i64 %34, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @CLR_INVALID, align 4
  store i32 %39, i32* %3, align 4
  br label %74

40:                                               ; preds = %32
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @EMFDRV_CreateBrushIndirect(%struct.TYPE_14__* %41, i64 %44)
  store i32 %45, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @CLR_INVALID, align 4
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %40
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @GDI_hdc_using_object(i64 %52, i32 %55)
  %57 = load i32, i32* @EMR_SELECTOBJECT, align 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 12, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %66 = call i64 @EMFDRV_WriteRecord(%struct.TYPE_14__* %64, %struct.TYPE_13__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %49
  %69 = load i32, i32* %5, align 4
  br label %72

70:                                               ; preds = %49
  %71 = load i32, i32* @CLR_INVALID, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %47, %38, %20
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_16__* @get_emf_physdev(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_17__* @get_physdev_dc(%struct.TYPE_14__*) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i64 @CreateSolidBrush(i32) #1

declare dso_local i32 @EMFDRV_CreateBrushIndirect(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @GDI_hdc_using_object(i64, i32) #1

declare dso_local i64 @EMFDRV_WriteRecord(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
