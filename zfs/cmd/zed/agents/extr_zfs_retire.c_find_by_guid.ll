; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c_find_by_guid.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c_find_by_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@find_pool = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32**)* @find_by_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_by_guid(i32* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @find_pool, align 4
  %18 = call i32 @zpool_iter(i32* %16, i32 %17, %struct.TYPE_3__* %10)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %49

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32* @zpool_get_config(i32* %24, i32* null)
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %28 = call i64 @nvlist_lookup_nvlist(i32* %26, i32 %27, i32** %13)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @zpool_close(i32* %31)
  store i32* null, i32** %5, align 8
  br label %49

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32* @find_vdev(i32* %37, i32* %38, i32 %39)
  %41 = load i32**, i32*** %9, align 8
  store i32* %40, i32** %41, align 8
  %42 = icmp eq i32* %40, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @zpool_close(i32* %44)
  store i32* null, i32** %5, align 8
  br label %49

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32*, i32** %11, align 8
  store i32* %48, i32** %5, align 8
  br label %49

49:                                               ; preds = %47, %43, %30, %20
  %50 = load i32*, i32** %5, align 8
  ret i32* %50
}

declare dso_local i32 @zpool_iter(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i32* @find_vdev(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
