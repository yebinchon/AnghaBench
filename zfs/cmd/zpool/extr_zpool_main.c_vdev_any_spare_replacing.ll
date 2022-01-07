; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_vdev_any_spare_replacing.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_vdev_any_spare_replacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_REPLACING = common dso_local global i32 0, align 4
@VDEV_TYPE_SPARE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @vdev_any_spare_replacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vdev_any_spare_replacing(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %10 = call i32 @nvlist_lookup_string(i32* %8, i32 %9, i8** %7)
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @VDEV_TYPE_REPLACING, align 4
  %13 = call i64 @strcmp(i8* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @VDEV_TYPE_SPARE, align 4
  %18 = call i64 @strcmp(i8* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %1
  %21 = load i64, i64* @B_TRUE, align 8
  store i64 %21, i64* %2, align 8
  br label %48

22:                                               ; preds = %15
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %25 = call i64 @nvlist_lookup_nvlist_array(i32* %23, i32 %24, i32*** %4, i64* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %27, %22
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32**, i32*** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @vdev_any_spare_replacing(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @B_TRUE, align 8
  store i64 %41, i64* %2, align 8
  br label %48

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %29

46:                                               ; preds = %29
  %47 = load i64, i64* @B_FALSE, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %46, %40, %20
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
