; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_free.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }

@B_FALSE = common dso_local global i32 0, align 4
@zfs_sync_pass_deferred_free = common dso_local global i64 0, align 8
@SPA_FEATURE_LOG_SPACEMAP = common dso_local global i32 0, align 4
@TXG_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zio_free(%struct.TYPE_8__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* @B_FALSE, align 4
  %10 = call i32 @zfs_blkptr_verify(%struct.TYPE_8__* %7, i32* %8, i32 %9)
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @BP_IS_EMBEDDED(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %59

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @metaslab_check_free(%struct.TYPE_8__* %16, i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @BP_IS_GANG(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %15
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @BP_GET_DEDUP(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = call i64 @spa_sync_pass(%struct.TYPE_8__* %33)
  %35 = load i64, i64* @zfs_sync_pass_deferred_free, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = load i32, i32* @SPA_FEATURE_LOG_SPACEMAP, align 4
  %40 = call i32 @spa_feature_is_active(%struct.TYPE_8__* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37, %26, %22, %15
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @TXG_MASK, align 8
  %48 = and i64 %46, %47
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @bplist_append(i32* %49, i32* %50)
  br label %59

52:                                               ; preds = %37, %32
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @zio_free_sync(i32* null, %struct.TYPE_8__* %53, i64 %54, i32* %55, i32 0)
  %57 = call i32 @zio_wait(i32 %56)
  %58 = call i32 @VERIFY0(i32 %57)
  br label %59

59:                                               ; preds = %14, %52, %42
  ret void
}

declare dso_local i32 @zfs_blkptr_verify(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i64 @BP_IS_EMBEDDED(i32*) #1

declare dso_local i32 @metaslab_check_free(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @BP_IS_GANG(i32*) #1

declare dso_local i64 @BP_GET_DEDUP(i32*) #1

declare dso_local i64 @spa_sync_pass(%struct.TYPE_8__*) #1

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bplist_append(i32*, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zio_wait(i32) #1

declare dso_local i32 @zio_free_sync(i32*, %struct.TYPE_8__*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
