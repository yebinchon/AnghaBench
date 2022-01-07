; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_livelist_delete_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_livelist_delete_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32* }

@SPA_FEATURE_LIVELIST = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_DELETED_CLONES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @livelist_delete_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @livelist_delete_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @zap_remove_int(i32* %25, i64 %26, i64 %27, i32* %28)
  %30 = call i32 @VERIFY0(i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @dsl_deadlist_free(i32* %31, i64 %32, i32* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = load i32, i32* @SPA_FEATURE_LIVELIST, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @spa_feature_decr(%struct.TYPE_5__* %35, i32 %36, i32* %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @zap_count(i32* %39, i64 %40, i64* %10)
  %42 = call i32 @VERIFY0(i32 %41)
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %2
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %48 = load i32, i32* @DMU_POOL_DELETED_CLONES, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @zap_remove(i32* %46, i32 %47, i32 %48, i32* %49)
  %51 = call i32 @VERIFY0(i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @zap_destroy(i32* %52, i64 %53, i32* %54)
  %56 = call i32 @VERIFY0(i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = call i32 @spa_notify_waiters(%struct.TYPE_5__* %59)
  br label %61

61:                                               ; preds = %45, %2
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_remove_int(i32*, i64, i64, i32*) #1

declare dso_local i32 @dsl_deadlist_free(i32*, i64, i32*) #1

declare dso_local i32 @spa_feature_decr(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @zap_count(i32*, i64, i64*) #1

declare dso_local i32 @zap_remove(i32*, i32, i32, i32*) #1

declare dso_local i32 @zap_destroy(i32*, i64, i32*) #1

declare dso_local i32 @spa_notify_waiters(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
