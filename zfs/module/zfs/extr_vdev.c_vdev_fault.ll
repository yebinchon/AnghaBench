; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_fault.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32*, i32, i8*, i64, i8*, %struct.TYPE_11__, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@SCL_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@VDEV_AUX_EXTERNAL_PERSIST = common dso_local global i64 0, align 8
@VDEV_AUX_EXTERNAL = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i8* null, align 8
@VDEV_STATE_FAULTED = common dso_local global i32 0, align 4
@VDEV_STATE_DEGRADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_fault(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @SCL_NONE, align 4
  %12 = call i32 @spa_vdev_state_enter(i32* %10, i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** @B_TRUE, align 8
  %16 = call %struct.TYPE_12__* @spa_lookup_by_guid(i32* %13, i32 %14, i8* %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @ENODEV, align 4
  %21 = call i32 @spa_vdev_state_exit(i32* %19, %struct.TYPE_12__* null, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 9
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @ENOTSUP, align 4
  %32 = call i32 @spa_vdev_state_exit(i32* %30, %struct.TYPE_12__* null, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %103

33:                                               ; preds = %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @VDEV_AUX_EXTERNAL_PERSIST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i64, i64* @VDEV_AUX_EXTERNAL, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load i8*, i8** @B_FALSE, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* @VDEV_AUX_EXTERNAL, align 8
  store i64 %48, i64* %7, align 8
  br label %53

49:                                               ; preds = %33
  %50 = load i8*, i8** @B_TRUE, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %49, %40
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 5
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** @B_FALSE, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i64 1, i64* %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = load i8*, i8** @B_FALSE, align 8
  %66 = load i32, i32* @VDEV_STATE_FAULTED, align 4
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @vdev_set_state(%struct.TYPE_12__* %64, i8* %65, i32 %66, i64 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %99, label %73

73:                                               ; preds = %53
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %99

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = call i64 @vdev_dtl_required(%struct.TYPE_12__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i64 1, i64* %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %88 = call i32 @vdev_reopen(%struct.TYPE_12__* %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = call i64 @vdev_readable(%struct.TYPE_12__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = load i8*, i8** @B_FALSE, align 8
  %95 = load i32, i32* @VDEV_STATE_DEGRADED, align 4
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @vdev_set_state(%struct.TYPE_12__* %93, i8* %94, i32 %95, i64 %96)
  br label %98

98:                                               ; preds = %92, %82
  br label %99

99:                                               ; preds = %98, %78, %73, %53
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %102 = call i32 @spa_vdev_state_exit(i32* %100, %struct.TYPE_12__* %101, i32 0)
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %29, %18
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @spa_vdev_state_enter(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @spa_lookup_by_guid(i32*, i32, i8*) #1

declare dso_local i32 @spa_vdev_state_exit(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @vdev_set_state(%struct.TYPE_12__*, i8*, i32, i64) #1

declare dso_local i64 @vdev_dtl_required(%struct.TYPE_12__*) #1

declare dso_local i32 @vdev_reopen(%struct.TYPE_12__*) #1

declare dso_local i64 @vdev_readable(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
