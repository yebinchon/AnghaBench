; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_largest_unflushed_free.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_largest_unflushed_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32, i32 }

@TXG_DEFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @metaslab_largest_unflushed_free(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = call i32 @MUTEX_HELD(i32* %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %98

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = call i64 @zfs_btree_numnodes(i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @metaslab_size_tree_full_load(i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = call i32* @zfs_btree_last(i32* %35, i32* null)
  store i32* %36, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i64 0, i64* %2, align 8
  br label %98

40:                                               ; preds = %33
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @rs_get_start(i32* %41, i32* %44)
  store i64 %45, i64* %5, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @rs_get_end(i32* %46, i32* %49)
  %51 = load i64, i64* %5, align 8
  %52 = sub nsw i64 %50, %51
  store i64 %52, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %80, %40
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TXG_DEFER_SIZE, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @range_tree_find_in(i32 %64, i64 %65, i64 %66, i64* %8, i64* %9)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i64 0, i64* %2, align 8
  br label %98

75:                                               ; preds = %70
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %5, align 8
  %78 = sub nsw i64 %76, %77
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %75, %57
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %53

83:                                               ; preds = %53
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @range_tree_find_in(i32 %86, i64 %87, i64 %88, i64* %11, i64* %12)
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %5, align 8
  %95 = sub nsw i64 %93, %94
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %92, %83
  %97 = load i64, i64* %6, align 8
  store i64 %97, i64* %2, align 8
  br label %98

98:                                               ; preds = %96, %74, %39, %22
  %99 = load i64, i64* %2, align 8
  ret i64 %99
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @zfs_btree_numnodes(i32*) #1

declare dso_local i32 @metaslab_size_tree_full_load(i32*) #1

declare dso_local i32* @zfs_btree_last(i32*, i32*) #1

declare dso_local i64 @rs_get_start(i32*, i32*) #1

declare dso_local i64 @rs_get_end(i32*, i32*) #1

declare dso_local i64 @range_tree_find_in(i32, i64, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
