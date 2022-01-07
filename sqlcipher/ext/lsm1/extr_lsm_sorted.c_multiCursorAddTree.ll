; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorAddTree.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorAddTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@LSM_OK = common dso_local global i32 0, align 4
@TREE_NONE = common dso_local global i32 0, align 4
@TREE_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32)* @multiCursorAddTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiCursorAddTree(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @LSM_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TREE_NONE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = call i64 @lsmTreeHasOld(%struct.TYPE_10__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = call i32 @lsmTreeCursorNew(%struct.TYPE_10__* %30, i32 1, i32* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %29, %20, %16, %3
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @LSM_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @TREE_BOTH, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = call i32 @lsmTreeCursorNew(%struct.TYPE_10__* %45, i32 0, i32* %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %44, %40, %36
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i64 @lsmTreeHasOld(%struct.TYPE_10__*) #1

declare dso_local i32 @lsmTreeCursorNew(%struct.TYPE_10__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
