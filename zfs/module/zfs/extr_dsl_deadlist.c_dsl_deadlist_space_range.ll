; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_space_range.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_space_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@AVL_AFTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_deadlist_space_range(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %6
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = load i64*, i64** %11, align 8
  %27 = load i64*, i64** %12, align 8
  %28 = call i32 @bpobj_space_range(i32* %22, i64 %23, i64 %24, i64* %25, i64* %26, i64* %27)
  %29 = call i32 @VERIFY0(i32 %28)
  br label %92

30:                                               ; preds = %6
  %31 = load i64*, i64** %12, align 8
  store i64 0, i64* %31, align 8
  %32 = load i64*, i64** %11, align 8
  store i64 0, i64* %32, align 8
  %33 = load i64*, i64** %10, align 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = call i32 @mutex_enter(i32* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = call i32 @dsl_deadlist_load_cache(%struct.TYPE_10__* %37)
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = call %struct.TYPE_11__* @avl_find(i32* %42, %struct.TYPE_11__* %14, i32* %15)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %13, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %45 = icmp eq %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @AVL_AFTER, align 4
  %51 = call %struct.TYPE_11__* @avl_nearest(i32* %48, i32 %49, i32 %50)
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %13, align 8
  br label %52

52:                                               ; preds = %46, %30
  br label %53

53:                                               ; preds = %83, %52
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp slt i64 %59, %60
  br label %62

62:                                               ; preds = %56, %53
  %63 = phi i1 [ false, %53 ], [ %61, %56 ]
  br i1 %63, label %64, label %88

64:                                               ; preds = %62
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %10, align 8
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %67
  store i64 %70, i64* %68, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %11, align 8
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %73
  store i64 %76, i64* %74, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %12, align 8
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %79
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %64
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %87 = call %struct.TYPE_11__* @AVL_NEXT(i32* %85, %struct.TYPE_11__* %86)
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %13, align 8
  br label %53

88:                                               ; preds = %62
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = call i32 @mutex_exit(i32* %90)
  br label %92

92:                                               ; preds = %88, %20
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @bpobj_space_range(i32*, i64, i64, i64*, i64*, i64*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dsl_deadlist_load_cache(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @avl_find(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local %struct.TYPE_11__* @avl_nearest(i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @AVL_NEXT(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
