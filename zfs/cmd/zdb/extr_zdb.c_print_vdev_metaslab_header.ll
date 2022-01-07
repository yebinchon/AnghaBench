; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_print_vdev_metaslab_header.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_print_vdev_metaslab_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VDEV_BIAS_LOG = common dso_local global i64 0, align 8
@VDEV_ALLOC_BIAS_LOG = common dso_local global i8* null, align 8
@VDEV_BIAS_SPECIAL = common dso_local global i64 0, align 8
@VDEV_ALLOC_BIAS_SPECIAL = common dso_local global i8* null, align 8
@VDEV_BIAS_DEDUP = common dso_local global i64 0, align 8
@VDEV_ALLOC_BIAS_DEDUP = common dso_local global i8* null, align 8
@VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"\09vdev %10llu   %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"   ms_unflushed_phys object %llu\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\0A\09%-10s%5llu   %-19s   %-15s   %-12s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"metaslabs\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"spacemap\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\09%15s   %19s   %15s   %12s\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"---------------\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"-------------------\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"------------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @print_vdev_metaslab_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_vdev_metaslab_header(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @VDEV_BIAS_LOG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %1
  %19 = load i8*, i8** @VDEV_ALLOC_BIAS_LOG, align 8
  store i8* %19, i8** %4, align 8
  br label %34

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @VDEV_BIAS_SPECIAL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** @VDEV_ALLOC_BIAS_SPECIAL, align 8
  store i8* %25, i8** %4, align 8
  br label %33

26:                                               ; preds = %20
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @VDEV_BIAS_DEDUP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** @VDEV_ALLOC_BIAS_DEDUP, align 8
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32, %24
  br label %34

34:                                               ; preds = %33, %18
  store i64 0, i64* %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @spa_meta_objset(i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS, align 4
  %48 = call i32 @zap_lookup(i32 %43, i64 %46, i32 %47, i32 8, i32 1, i64* %5)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ASSERT0(i32 %53)
  br label %55

55:                                               ; preds = %52, %39
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %61)
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i64, i64* %5, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %56
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %75 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @zap_lookup(i32, i64, i32, i32, i32, i64*) #1

declare dso_local i32 @spa_meta_objset(i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
