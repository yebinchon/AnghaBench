; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_df_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_df_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@metaslab_df_alloc_threshold = common dso_local global i64 0, align 8
@metaslab_df_free_pct = common dso_local global i32 0, align 4
@metaslab_df_max_search = common dso_local global i32 0, align 4
@metaslab_df_use_largest_segment = common dso_local global i64 0, align 8
@metaslabstat_df_find_under_floor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @metaslab_df_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metaslab_df_alloc(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 0, %13
  %15 = and i32 %12, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @highbit64(i32 %19)
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %7, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = call i32 @range_tree_space(%struct.TYPE_12__* %27)
  %29 = mul nsw i32 %28, 100
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %29, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 5
  %36 = call i32 @MUTEX_HELD(i32* %35)
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = call i64 @metaslab_largest_allocatable(%struct.TYPE_13__* %38)
  %40 = load i64, i64* @metaslab_df_alloc_threshold, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @metaslab_df_free_pct, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %2
  store i32 -1, i32* %9, align 4
  br label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @metaslab_df_max_search, align 4
  %52 = call i32 @metaslab_block_picker(%struct.TYPE_12__* %48, i32* %49, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %47, %46
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %104

56:                                               ; preds = %53
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = call i64 @zfs_btree_numnodes(i32* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = call i32 @metaslab_size_tree_full_load(%struct.TYPE_12__* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i64, i64* @metaslab_df_use_largest_segment, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = call i32* @zfs_btree_last(i32* %71, i32* null)
  store i32* %72, i32** %10, align 8
  br label %82

73:                                               ; preds = %66
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32* @metaslab_block_find(i32* %75, %struct.TYPE_12__* %76, i32 %79, i32 %80, i32* %11)
  store i32* %81, i32** %10, align 8
  br label %82

82:                                               ; preds = %73, %69
  %83 = load i32*, i32** %10, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = call i32 @rs_get_start(i32* %86, %struct.TYPE_12__* %87)
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = call i32 @rs_get_end(i32* %91, %struct.TYPE_12__* %92)
  %94 = icmp sle i32 %90, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %85
  %96 = load i32*, i32** %10, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = call i32 @rs_get_start(i32* %96, %struct.TYPE_12__* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32*, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %95, %85, %82
  br label %104

104:                                              ; preds = %103, %53
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i32 @highbit64(i32) #1

declare dso_local i32 @range_tree_space(%struct.TYPE_12__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @metaslab_largest_allocatable(%struct.TYPE_13__*) #1

declare dso_local i32 @metaslab_block_picker(%struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i64 @zfs_btree_numnodes(i32*) #1

declare dso_local i32 @metaslab_size_tree_full_load(%struct.TYPE_12__*) #1

declare dso_local i32* @zfs_btree_last(i32*, i32*) #1

declare dso_local i32* @metaslab_block_find(i32*, %struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @rs_get_start(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @rs_get_end(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
