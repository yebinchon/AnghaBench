; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_metaslab_groups.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_metaslab_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_15__*, %struct.TYPE_13__** }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"\09vdev %10llu\09\09metaslabs%5llu\09\09fragmentation\00", align 1
@ZFS_FRAG_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%3s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%3llu%%\0A\00", align 1
@RANGE_TREE_HISTOGRAM_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"\09pool %s\09fragmentation\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\09%3s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\09%3llu%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @dump_metaslab_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_metaslab_groups(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = call %struct.TYPE_16__* @spa_normal_class(%struct.TYPE_14__* %12)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %4, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = call i32 @metaslab_class_histogram_verify(%struct.TYPE_16__* %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %77, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %25, i64 %27
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %7, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %8, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = icmp eq %struct.TYPE_15__* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %22
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = icmp ne %struct.TYPE_16__* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %22
  br label %77

42:                                               ; preds = %35
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = call i32 @metaslab_group_histogram_verify(%struct.TYPE_15__* %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = call i64 @metaslab_group_fragmentation(%struct.TYPE_15__* %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ZFS_FRAG_INVALID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %42
  %64 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %71

65:                                               ; preds = %42
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %65, %63
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RANGE_TREE_HISTOGRAM_SIZE, align 4
  %76 = call i32 @dump_histogram(i32 %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %71, %41
  %78 = load i32, i32* %6, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %16

80:                                               ; preds = %16
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %82 = call i8* @spa_name(%struct.TYPE_14__* %81)
  %83 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = call i64 @metaslab_class_fragmentation(%struct.TYPE_16__* %84)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @ZFS_FRAG_INVALID, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %95

91:                                               ; preds = %80
  %92 = load i64, i64* %5, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %91, %89
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RANGE_TREE_HISTOGRAM_SIZE, align 4
  %100 = call i32 @dump_histogram(i32 %98, i32 %99, i32 0)
  ret void
}

declare dso_local %struct.TYPE_16__* @spa_normal_class(%struct.TYPE_14__*) #1

declare dso_local i32 @metaslab_class_histogram_verify(%struct.TYPE_16__*) #1

declare dso_local i32 @metaslab_group_histogram_verify(%struct.TYPE_15__*) #1

declare dso_local i64 @metaslab_group_fragmentation(%struct.TYPE_15__*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @dump_histogram(i32, i32, i32) #1

declare dso_local i8* @spa_name(%struct.TYPE_14__*) #1

declare dso_local i64 @metaslab_class_fragmentation(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
