; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_objects.c_EMFDRV_SelectPen.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_objects.c_EMFDRV_SelectPen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.brush_pattern = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@WHITE_PEN = common dso_local global i32 0, align 4
@DC_PEN = common dso_local global i32 0, align 4
@EMR_SELECTOBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EMFDRV_SelectPen(%struct.TYPE_11__* %0, i64 %1, %struct.brush_pattern* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.brush_pattern*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.brush_pattern* %2, %struct.brush_pattern** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = call %struct.TYPE_13__* @get_emf_physdev(%struct.TYPE_11__* %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %4, align 8
  br label %73

20:                                               ; preds = %3
  %21 = load i32, i32* @WHITE_PEN, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %35, %20
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @DC_PEN, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @GetStockObject(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, -2147483648
  store i32 %33, i32* %10, align 4
  br label %56

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %22

38:                                               ; preds = %22
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @EMFDRV_FindObject(%struct.TYPE_11__* %39, i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %56

44:                                               ; preds = %38
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @EMFDRV_CreatePenIndirect(%struct.TYPE_11__* %45, i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i64 0, i64* %4, align 8
  br label %73

50:                                               ; preds = %44
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GDI_hdc_using_object(i64 %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %43, %31
  %57 = load i32, i32* @EMR_SELECTOBJECT, align 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32 12, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %66 = call i64 @EMFDRV_WriteRecord(%struct.TYPE_11__* %64, %struct.TYPE_14__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i64, i64* %6, align 8
  br label %71

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i64 [ %69, %68 ], [ 0, %70 ]
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %71, %49, %18
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local %struct.TYPE_13__* @get_emf_physdev(%struct.TYPE_11__*) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @EMFDRV_FindObject(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @EMFDRV_CreatePenIndirect(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @GDI_hdc_using_object(i64, i32) #1

declare dso_local i64 @EMFDRV_WriteRecord(%struct.TYPE_11__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
