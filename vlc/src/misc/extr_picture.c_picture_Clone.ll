; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_picture.c_picture_Clone.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_picture.c_picture_Clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_20__*, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_20__* (%struct.TYPE_20__*)* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }

@picture_DestroyClone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @picture_Clone(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  %8 = load i32, i32* @picture_DestroyClone, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %62, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %13
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  store i32 %27, i32* %33, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i32 %41, i32* %47, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %19
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %13

65:                                               ; preds = %13
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = call %struct.TYPE_17__* @picture_NewFromResource(i32* %67, %struct.TYPE_18__* %3)
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %5, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = icmp ne %struct.TYPE_17__* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %65
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = bitcast %struct.TYPE_17__* %76 to %struct.TYPE_19__*
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %79, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %81 = call i32 @picture_Hold(%struct.TYPE_17__* %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = icmp ne %struct.TYPE_20__* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %74
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_20__* (%struct.TYPE_20__*)*, %struct.TYPE_20__* (%struct.TYPE_20__*)** %90, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %93, align 8
  %95 = call %struct.TYPE_20__* %91(%struct.TYPE_20__* %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  store %struct.TYPE_20__* %95, %struct.TYPE_20__** %97, align 8
  br label %98

98:                                               ; preds = %86, %74
  br label %99

99:                                               ; preds = %98, %65
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %100
}

declare dso_local %struct.TYPE_17__* @picture_NewFromResource(i32*, %struct.TYPE_18__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @picture_Hold(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
