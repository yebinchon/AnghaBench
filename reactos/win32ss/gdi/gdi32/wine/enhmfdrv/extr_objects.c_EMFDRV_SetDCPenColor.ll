; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_objects.c_EMFDRV_SetDCPenColor.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_objects.c_EMFDRV_SetDCPenColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@PS_SOLID = common dso_local global i32 0, align 4
@DC_PEN = common dso_local global i32 0, align 4
@CLR_INVALID = common dso_local global i32 0, align 4
@EMR_SELECTOBJECT = common dso_local global i32 0, align 4
@OBJ_PEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EMFDRV_SetDCPenColor(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = call %struct.TYPE_21__* @get_emf_physdev(%struct.TYPE_18__* %11)
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %6, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = call %struct.TYPE_22__* @get_physdev_dc(%struct.TYPE_18__* %13)
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %16 = load i32, i32* @PS_SOLID, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @DC_PEN, align 4
  %26 = call i64 @GetStockObject(i32 %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %3, align 4
  br label %81

30:                                               ; preds = %2
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @DeleteObject(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = call i64 @CreatePenIndirect(%struct.TYPE_19__* %10)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = icmp ne i64 %41, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @CLR_INVALID, align 4
  store i32 %46, i32* %3, align 4
  br label %81

47:                                               ; preds = %40
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @EMFDRV_CreatePenIndirect(%struct.TYPE_18__* %48, i64 %51)
  store i32 %52, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @CLR_INVALID, align 4
  store i32 %55, i32* %3, align 4
  br label %81

56:                                               ; preds = %47
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @GDI_hdc_using_object(i64 %59, i32 %62)
  %64 = load i32, i32* @EMR_SELECTOBJECT, align 4
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  store i32 12, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %73 = call i64 @EMFDRV_WriteRecord(%struct.TYPE_18__* %71, %struct.TYPE_16__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %56
  %76 = load i32, i32* %5, align 4
  br label %79

77:                                               ; preds = %56
  %78 = load i32, i32* @CLR_INVALID, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %54, %45, %28
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_21__* @get_emf_physdev(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_22__* @get_physdev_dc(%struct.TYPE_18__*) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i64 @CreatePenIndirect(%struct.TYPE_19__*) #1

declare dso_local i32 @EMFDRV_CreatePenIndirect(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @GDI_hdc_using_object(i64, i32) #1

declare dso_local i64 @EMFDRV_WriteRecord(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
