; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_get_props.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_get_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@FTAG = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @zfs_ioc_pool_get_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_pool_get_props(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32* null, i32** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @FTAG, align 4
  %10 = call i32 @spa_open(i32 %8, i32** %3, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @spa_lookup(i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @spa_prop_get(i32* %20, i32** %5)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %30

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @spa_prop_get(i32* %25, i32** %5)
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @spa_close(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @put_nvlist(%struct.TYPE_4__* %39, i32* %40)
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %33, %30
  %43 = load i32, i32* @EFAULT, align 4
  %44 = call i32 @SET_ERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @nvlist_free(i32* %46)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @spa_open(i32, i32**, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @spa_lookup(i32) #1

declare dso_local i32 @spa_prop_get(i32*, i32**) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i32 @put_nvlist(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
