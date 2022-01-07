; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_mirror.c_vdev_mirror_open.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_mirror.c_vdev_mirror_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32, i64, i64, %struct.TYPE_7__** }
%struct.TYPE_6__ = type { i32 }

@VDEV_AUX_BAD_LABEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VDEV_AUX_CHILDREN_OFFLINE = common dso_local global i32 0, align 4
@VDEV_AUX_NO_REPLICAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64*, i64*, i64*)* @vdev_mirror_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_mirror_open(%struct.TYPE_7__* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* @VDEV_AUX_BAD_LABEL, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %106

25:                                               ; preds = %4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = call i32 @vdev_open_children(%struct.TYPE_7__* %26)
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %80, %25
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %13, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %80

52:                                               ; preds = %34
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  %60 = call i64 @MIN(i64 %55, i64 %59)
  %61 = add nsw i64 %60, 1
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 1
  %70 = call i64 @MIN(i64 %65, i64 %69)
  %71 = add nsw i64 %70, 1
  %72 = load i64*, i64** %8, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i64*, i64** %9, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @MAX(i64 %74, i32 %77)
  %79 = load i64*, i64** %9, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %52, %46
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %28

83:                                               ; preds = %28
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = call i64 @vdev_children_are_offline(%struct.TYPE_7__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* @VDEV_AUX_CHILDREN_OFFLINE, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  br label %103

98:                                               ; preds = %89
  %99 = load i32, i32* @VDEV_AUX_NO_REPLICAS, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %5, align 4
  br label %106

105:                                              ; preds = %83
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %103, %18
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vdev_open_children(%struct.TYPE_7__*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i64 @vdev_children_are_offline(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
