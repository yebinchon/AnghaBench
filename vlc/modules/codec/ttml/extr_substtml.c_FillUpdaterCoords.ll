; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_FillUpdaterCoords.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_FillUpdaterCoords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { double, i32 }

@TTML_UNIT_PERCENT = common dso_local global i32 0, align 4
@UPDT_REGION_ORIGIN_X_IS_RATIO = common dso_local global i32 0, align 4
@UPDT_REGION_ORIGIN_Y_IS_RATIO = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@UPDT_REGION_EXTENT_X_IS_RATIO = common dso_local global i32 0, align 4
@UPDT_REGION_EXTENT_Y_IS_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, double, i32, double, i32, i32, %struct.TYPE_18__*)* @FillUpdaterCoords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillUpdaterCoords(%struct.TYPE_17__* %0, double %1, i32 %2, double %3, i32 %4, i32 %5, %struct.TYPE_18__* %6) #0 {
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = bitcast %struct.TYPE_16__* %8 to { double, i32 }*
  %17 = getelementptr inbounds { double, i32 }, { double, i32 }* %16, i32 0, i32 0
  store double %1, double* %17, align 8
  %18 = getelementptr inbounds { double, i32 }, { double, i32 }* %16, i32 0, i32 1
  store i32 %2, i32* %18, align 8
  %19 = bitcast %struct.TYPE_16__* %9 to { double, i32 }*
  %20 = getelementptr inbounds { double, i32 }, { double, i32 }* %19, i32 0, i32 0
  store double %3, double* %20, align 8
  %21 = getelementptr inbounds { double, i32 }, { double, i32 }* %19, i32 0, i32 1
  store i32 %4, i32* %21, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store i32 %5, i32* %11, align 4
  store %struct.TYPE_18__* %6, %struct.TYPE_18__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store double 1.000000e+02, double* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %24 = load i32, i32* @TTML_UNIT_PERCENT, align 4
  store i32 %24, i32* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = bitcast %struct.TYPE_16__* %8 to { double, i32 }*
  %29 = getelementptr inbounds { double, i32 }, { double, i32 }* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds { double, i32 }, { double, i32 }* %28, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = bitcast %struct.TYPE_16__* %13 to { double, i32 }*
  %34 = getelementptr inbounds { double, i32 }, { double, i32 }* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = getelementptr inbounds { double, i32 }, { double, i32 }* %33, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call { double, i32 } @ttml_rebase_length(i32 %27, double %30, i32 %32, double %35, i32 %37)
  %39 = bitcast %struct.TYPE_16__* %14 to { double, i32 }*
  %40 = getelementptr inbounds { double, i32 }, { double, i32 }* %39, i32 0, i32 0
  %41 = extractvalue { double, i32 } %38, 0
  store double %41, double* %40, align 8
  %42 = getelementptr inbounds { double, i32 }, { double, i32 }* %39, i32 0, i32 1
  %43 = extractvalue { double, i32 } %38, 1
  store i32 %43, i32* %42, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %struct.TYPE_16__* %9 to { double, i32 }*
  %48 = getelementptr inbounds { double, i32 }, { double, i32 }* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = getelementptr inbounds { double, i32 }, { double, i32 }* %47, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = bitcast %struct.TYPE_16__* %13 to { double, i32 }*
  %53 = getelementptr inbounds { double, i32 }, { double, i32 }* %52, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = getelementptr inbounds { double, i32 }, { double, i32 }* %52, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call { double, i32 } @ttml_rebase_length(i32 %46, double %49, i32 %51, double %54, i32 %56)
  %58 = bitcast %struct.TYPE_16__* %15 to { double, i32 }*
  %59 = getelementptr inbounds { double, i32 }, { double, i32 }* %58, i32 0, i32 0
  %60 = extractvalue { double, i32 } %57, 0
  store double %60, double* %59, align 8
  %61 = getelementptr inbounds { double, i32 }, { double, i32 }* %58, i32 0, i32 1
  %62 = extractvalue { double, i32 } %57, 1
  store i32 %62, i32* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %7
  %66 = load i32, i32* @UPDT_REGION_ORIGIN_X_IS_RATIO, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = bitcast %struct.TYPE_16__* %14 to { double, i32 }*
  %73 = getelementptr inbounds { double, i32 }, { double, i32 }* %72, i32 0, i32 0
  %74 = load double, double* %73, align 8
  %75 = getelementptr inbounds { double, i32 }, { double, i32 }* %72, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @FillCoord(double %74, i32 %76, i32 %66, i32* %69, i32* %71)
  %78 = load i32, i32* @UPDT_REGION_ORIGIN_Y_IS_RATIO, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = bitcast %struct.TYPE_16__* %15 to { double, i32 }*
  %85 = getelementptr inbounds { double, i32 }, { double, i32 }* %84, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = getelementptr inbounds { double, i32 }, { double, i32 }* %84, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @FillCoord(double %86, i32 %88, i32 %78, i32* %81, i32* %83)
  %90 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %91 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %120

95:                                               ; preds = %7
  %96 = load i32, i32* @UPDT_REGION_EXTENT_X_IS_RATIO, align 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = bitcast %struct.TYPE_16__* %14 to { double, i32 }*
  %103 = getelementptr inbounds { double, i32 }, { double, i32 }* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = getelementptr inbounds { double, i32 }, { double, i32 }* %102, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @FillCoord(double %104, i32 %106, i32 %96, i32* %99, i32* %101)
  %108 = load i32, i32* @UPDT_REGION_EXTENT_Y_IS_RATIO, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = bitcast %struct.TYPE_16__* %15 to { double, i32 }*
  %115 = getelementptr inbounds { double, i32 }, { double, i32 }* %114, i32 0, i32 0
  %116 = load double, double* %115, align 8
  %117 = getelementptr inbounds { double, i32 }, { double, i32 }* %114, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @FillCoord(double %116, i32 %118, i32 %108, i32* %111, i32* %113)
  br label %120

120:                                              ; preds = %95, %65
  ret void
}

declare dso_local { double, i32 } @ttml_rebase_length(i32, double, i32, double, i32) #1

declare dso_local i32 @FillCoord(double, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
