; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_EMFDRV_BeginPath.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_EMFDRV_BeginPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_18__*)* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }

@pBeginPath = common dso_local global i32 0, align 4
@EMR_BEGINPATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@emfpath_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EMFDRV_BeginPath(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = call %struct.TYPE_20__* @get_emf_physdev(%struct.TYPE_18__* %8)
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = load i32, i32* @pBeginPath, align 4
  %12 = call %struct.TYPE_18__* @GET_NEXT_PHYSDEV(%struct.TYPE_18__* %10, i32 %11)
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = call %struct.TYPE_21__* @get_physdev_dc(%struct.TYPE_18__* %13)
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %7, align 8
  %15 = load i32, i32* @EMR_BEGINPATH, align 4
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i32 8, i32* %19, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %22 = call i32 @EMFDRV_WriteRecord(%struct.TYPE_18__* %20, %struct.TYPE_16__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %2, align 8
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %2, align 8
  br label %54

33:                                               ; preds = %26
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = call i32 %38(%struct.TYPE_18__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %2, align 8
  br label %54

44:                                               ; preds = %33
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = call i32 @push_dc_driver(i32* %46, i32* %48, i32* @emfpath_driver)
  %50 = load i64, i64* @TRUE, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* @TRUE, align 8
  store i64 %53, i64* %2, align 8
  br label %54

54:                                               ; preds = %44, %42, %31, %24
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

declare dso_local %struct.TYPE_20__* @get_emf_physdev(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @GET_NEXT_PHYSDEV(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_21__* @get_physdev_dc(%struct.TYPE_18__*) #1

declare dso_local i32 @EMFDRV_WriteRecord(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @push_dc_driver(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
