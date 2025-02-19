; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_num_normal_vdevs.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_num_normal_vdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ALLOCATION_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @num_normal_vdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_normal_vdevs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %6, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %10 = call i64 @nvlist_lookup_nvlist_array(i32* %8, i32 %9, i32*** %3, i64* %5)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @verify(i32 %12)
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %41, %1
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load i64, i64* @B_FALSE, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i32**, i32*** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %25 = call i32 @nvlist_lookup_uint64(i32* %23, i32 %24, i64* %7)
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %41

29:                                               ; preds = %18
  %30 = load i32**, i32*** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @ZPOOL_CONFIG_ALLOCATION_BIAS, align 4
  %35 = call i64 @nvlist_exists(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %41

38:                                               ; preds = %29
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %38, %37, %28
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %14

44:                                               ; preds = %14
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  ret i32 %46
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
