; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_ld_log_sm_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_ld_log_sm_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid maptype_t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*)* @spa_ld_log_sm_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_log_sm_cb(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %9, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.TYPE_9__* @vdev_lookup_top(i32* %27, i32 %28)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %11, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %31 = call i32 @vdev_is_concrete(%struct.TYPE_9__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

34:                                               ; preds = %2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = lshr i64 %38, %41
  %43 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %37, i64 %42
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %12, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = call i64 @metaslab_unflushed_txg(%struct.TYPE_12__* %55)
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %92

59:                                               ; preds = %34
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %89 [
    i32 129, label %63
    i32 128, label %76
  ]

63:                                               ; preds = %59
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @range_tree_remove_xor_add_segment(i64 %64, i32 %68, i32 %71, i32 %74)
  br label %91

76:                                               ; preds = %59
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @range_tree_remove_xor_add_segment(i64 %77, i32 %81, i32 %84, i32 %87)
  br label %91

89:                                               ; preds = %59
  %90 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %76, %63
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %58, %33
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_9__* @vdev_lookup_top(i32*, i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_9__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @metaslab_unflushed_txg(%struct.TYPE_12__*) #1

declare dso_local i32 @range_tree_remove_xor_add_segment(i64, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
