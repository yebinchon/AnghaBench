; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zil.c_zil_async_to_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zil.c_zil_async_to_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@UINT64_MAX = common dso_local global i64 0, align 8
@ZILTEST_TXG = common dso_local global i64 0, align 8
@TXG_CONCURRENT_STATES = common dso_local global i64 0, align 8
@TXG_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zil_async_to_sync(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @spa_freeze_txg(i32 %14)
  %16 = load i64, i64* @UINT64_MAX, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @ZILTEST_TXG, align 8
  store i64 %19, i64* %5, align 8
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @spa_last_synced_txg(i32 %23)
  %25 = add i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %20, %18
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %98, %26
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @TXG_CONCURRENT_STATES, align 8
  %32 = add i64 %30, %31
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %101

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @TXG_MASK, align 8
  %40 = and i64 %38, %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %40
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %10, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = call i32 @mutex_enter(i32* %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %34
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = call i32 @mutex_exit(i32* %52)
  br label %98

54:                                               ; preds = %34
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32* %58, i32** %8, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load i32*, i32** %8, align 8
  %63 = call %struct.TYPE_12__* @avl_find(i32* %62, i64* %4, i32* %9)
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %7, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = icmp ne %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = call i32 @list_move_tail(i32* %70, i32* %72)
  br label %74

74:                                               ; preds = %66, %61
  br label %94

75:                                               ; preds = %54
  store i8* null, i8** %11, align 8
  br label %76

76:                                               ; preds = %80, %75
  %77 = load i32*, i32** %8, align 8
  %78 = call %struct.TYPE_12__* @avl_destroy_nodes(i32* %77, i8** %11)
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %7, align 8
  %79 = icmp ne %struct.TYPE_12__* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = call i32 @list_move_tail(i32* %84, i32* %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = call i32 @list_destroy(i32* %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = call i32 @kmem_free(%struct.TYPE_12__* %91, i32 4)
  br label %76

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93, %74
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = call i32 @mutex_exit(i32* %96)
  br label %98

98:                                               ; preds = %94, %50
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %28

101:                                              ; preds = %28
  ret void
}

declare dso_local i64 @spa_freeze_txg(i32) #1

declare dso_local i64 @spa_last_synced_txg(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local %struct.TYPE_12__* @avl_find(i32*, i64*, i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @avl_destroy_nodes(i32*, i8**) #1

declare dso_local i32 @list_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
