; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_collect_leaves.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_collect_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4
@VDEV_NAME_PATH = common dso_local global i32 0, align 4
@VDEV_TYPE_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @zpool_collect_leaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zpool_collect_leaves(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %13 = call i32 @nvlist_lookup_nvlist_array(i32* %11, i32 %12, i32*** %8, i64* %7)
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load i32, i32* @g_zfs, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @VDEV_NAME_PATH, align 4
  %21 = call i8* @zpool_vdev_name(i32 %17, i32* %18, i32* %19, i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* @VDEV_TYPE_INDIRECT, align 4
  %24 = call i64 @strcmp(i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @fnvlist_add_boolean(i32* %27, i8* %28)
  br label %30

30:                                               ; preds = %26, %16
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @free(i8* %31)
  br label %48

33:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = load i32**, i32*** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %6, align 8
  call void @zpool_collect_leaves(i32* %39, i32* %43, i32* %44)
  br label %45

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %34

48:                                               ; preds = %30, %34
  ret void
}

declare dso_local i32 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i8* @zpool_vdev_name(i32, i32*, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
