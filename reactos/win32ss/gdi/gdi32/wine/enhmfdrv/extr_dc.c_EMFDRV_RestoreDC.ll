; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_EMFDRV_RestoreDC.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_EMFDRV_RestoreDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { {}* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_19__ = type { %struct.TYPE_16__, i8* }
%struct.TYPE_16__ = type { i32, i32 }

@pRestoreDC = common dso_local global i32 0, align 4
@EMR_RESTOREDC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EMFDRV_RestoreDC(%struct.TYPE_18__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = load i32, i32* @pRestoreDC, align 4
  %12 = call %struct.TYPE_18__* @GET_NEXT_PHYSDEV(%struct.TYPE_18__* %10, i32 %11)
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = call %struct.TYPE_20__* @get_emf_physdev(%struct.TYPE_18__* %13)
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = call %struct.TYPE_21__* @get_physdev_dc(%struct.TYPE_18__* %15)
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %7, align 8
  %17 = load i32, i32* @EMR_RESTOREDC, align 4
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32 16, i32* %21, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ult i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  br label %38

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %28 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sub nsw i64 %34, 1
  %36 = inttoptr i64 %35 to i8*
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %27, %24
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i64 (%struct.TYPE_18__*, i8*)**
  %48 = load i64 (%struct.TYPE_18__*, i8*)*, i64 (%struct.TYPE_18__*, i8*)** %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 %48(%struct.TYPE_18__* %49, i8* %50)
  store i64 %51, i64* %9, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %38
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %61 = call i32 @EMFDRV_WriteRecord(%struct.TYPE_18__* %59, %struct.TYPE_16__* %60)
  br label %62

62:                                               ; preds = %58, %38
  %63 = load i64, i64* %9, align 8
  ret i64 %63
}

declare dso_local %struct.TYPE_18__* @GET_NEXT_PHYSDEV(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_20__* @get_emf_physdev(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_21__* @get_physdev_dc(%struct.TYPE_18__*) #1

declare dso_local i32 @EMFDRV_WriteRecord(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
