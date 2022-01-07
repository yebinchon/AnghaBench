; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_label_paths.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_label_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @label_paths(i32* %0, i32* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8**, i8*** %8, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8**, i8*** %9, align 8
  store i8* null, i8** %14, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %17 = call i64 @nvlist_lookup_nvlist(i32* %15, i32 %16, i32** %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %22 = call i64 @nvlist_lookup_uint64(i32* %20, i32 %21, i32* %11)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %27 = call i64 @nvlist_lookup_uint64(i32* %25, i32 %26, i32* %12)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %19, %4
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* %5, align 4
  br label %39

31:                                               ; preds = %24
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i8**, i8*** %8, align 8
  %37 = load i8**, i8*** %9, align 8
  %38 = call i32 @label_paths_impl(i32* %32, i32* %33, i32 %34, i32 %35, i8** %36, i8** %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %29
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @label_paths_impl(i32*, i32*, i32, i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
