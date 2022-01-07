; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_get_history.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_get_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@SPA_VERSION_ZPOOL_HISTORY = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zfs_ioc_pool_get_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_pool_get_history(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = call i32 @SET_ERROR(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FTAG, align 4
  %20 = call i32 @spa_open(i32 %18, i32** %4, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %68

24:                                               ; preds = %15
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @spa_version(i32* %25)
  %27 = load i64, i64* @SPA_VERSION_ZPOOL_HISTORY, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @spa_close(i32* %30, i32 %31)
  %33 = load i32, i32* @ENOTSUP, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %68

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @KM_SLEEP, align 4
  %38 = call i8* @vmem_alloc(i32 %36, i32 %37)
  store i8* %38, i8** %5, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @spa_history_get(i32* %39, i32* %41, i32* %43, i8* %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %35
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ddi_copyout(i8* %48, i8* %52, i32 %55, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %47, %35
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @FTAG, align 4
  %63 = call i32 @spa_close(i32* %61, i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @vmem_free(i8* %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %29, %22, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @spa_open(i32, i32**, i32) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i8* @vmem_alloc(i32, i32) #1

declare dso_local i32 @spa_history_get(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @ddi_copyout(i8*, i8*, i32, i32) #1

declare dso_local i32 @vmem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
