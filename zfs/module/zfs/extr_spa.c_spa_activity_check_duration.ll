; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_activity_check_duration.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_activity_check_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@zfs_multihost_import_intervals = common dso_local global i32 0, align 4
@zfs_multihost_interval = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@MMP_IMPORT_SAFETY_FACTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"fail_intvals>0 import_delay=%llu ub_mmp mmp_fails=%llu ub_mmp mmp_interval=%llu import_intervals=%u\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"fail_intvals=0 import_delay=%llu ub_mmp mmp_interval=%llu ub_mmp_delay=%llu import_intervals=%u\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"import_delay=%llu ub_mmp_delay=%llu import_intervals=%u leaves=%u\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"pool last imported on non-MMP aware host using import_delay=%llu multihost_interval=%llu import_intervals=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @spa_activity_check_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_activity_check_duration(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load i32, i32* @zfs_multihost_import_intervals, align 4
  %9 = call i32 @MAX(i32 %8, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @zfs_multihost_interval, align 4
  %11 = call i32 @MMP_INTERVAL_OK(i32 %10)
  %12 = call i32 @MSEC2NSEC(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @NANOSEC, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %14, %15
  %17 = call i32 @MAX(i32 %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @MMP_IMPORT_SAFETY_FACTOR, align 4
  %19 = icmp sge i32 %18, 100
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = call i64 @MMP_INTERVAL_VALID(%struct.TYPE_8__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i64 @MMP_FAIL_INT_VALID(%struct.TYPE_8__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = call i32 @MMP_FAIL_INT(%struct.TYPE_8__* %30)
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = call i32 @MMP_FAIL_INT(%struct.TYPE_8__* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = call i32 @MMP_INTERVAL(%struct.TYPE_8__* %36)
  %38 = call i32 @MSEC2NSEC(i32 %37)
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* @MMP_IMPORT_SAFETY_FACTOR, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sdiv i32 %41, 100
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = call i32 @MMP_FAIL_INT(%struct.TYPE_8__* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @MMP_INTERVAL(%struct.TYPE_8__* %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i8*, i32, i32, i32, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45, i32 %47, i32 %48)
  br label %111

50:                                               ; preds = %29, %25, %2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = call i64 @MMP_INTERVAL_VALID(%struct.TYPE_8__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = call i64 @MMP_FAIL_INT_VALID(%struct.TYPE_8__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = call i32 @MMP_FAIL_INT(%struct.TYPE_8__* %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = call i32 @MMP_INTERVAL(%struct.TYPE_8__* %64)
  %66 = call i32 @MSEC2NSEC(i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 %70, %71
  %73 = call i32 @MAX(i32 %63, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = call i32 @MMP_INTERVAL(%struct.TYPE_8__* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (i8*, i32, i32, i32, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %76, i32 %79, i32 %80)
  br label %110

82:                                               ; preds = %58, %54, %50
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = call i64 @MMP_VALID(%struct.TYPE_8__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  %93 = load i32, i32* %5, align 4
  %94 = mul nsw i32 %92, %93
  %95 = call i32 @MAX(i32 %87, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @vdev_count_leaves(i32* %101)
  %103 = call i32 (i8*, i32, i32, i32, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %99, i32 %100, i32 %102)
  br label %109

104:                                              ; preds = %82
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (i8*, i32, i32, i32, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %86
  br label %110

110:                                              ; preds = %109, %62
  br label %111

111:                                              ; preds = %110, %33
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MSEC2NSEC(i32) #1

declare dso_local i32 @MMP_INTERVAL_OK(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @MMP_INTERVAL_VALID(%struct.TYPE_8__*) #1

declare dso_local i64 @MMP_FAIL_INT_VALID(%struct.TYPE_8__*) #1

declare dso_local i32 @MMP_FAIL_INT(%struct.TYPE_8__*) #1

declare dso_local i32 @MMP_INTERVAL(%struct.TYPE_8__*) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32, i32, ...) #1

declare dso_local i64 @MMP_VALID(%struct.TYPE_8__*) #1

declare dso_local i32 @vdev_count_leaves(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
