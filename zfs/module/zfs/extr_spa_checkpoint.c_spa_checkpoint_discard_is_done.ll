; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_checkpoint.c_spa_checkpoint_discard_is_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_checkpoint.c_spa_checkpoint_discard_is_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }

@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @spa_checkpoint_discard_is_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_checkpoint_discard_is_done(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i32 @spa_has_checkpoint(%struct.TYPE_11__* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %17 = call i32 @spa_feature_is_active(%struct.TYPE_11__* %15, i32 %16)
  %18 = call i32 @ASSERT(i32 %17)
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %48, %1
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @B_FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %53

37:                                               ; preds = %25
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %40, i64 %41
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ASSERT0(i32 %46)
  br label %48

48:                                               ; preds = %37
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %19

51:                                               ; preds = %19
  %52 = load i32, i32* @B_TRUE, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %35
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_has_checkpoint(%struct.TYPE_11__*) #1

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ASSERT0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
