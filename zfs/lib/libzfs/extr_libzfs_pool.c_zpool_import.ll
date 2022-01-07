; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_import.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@EZFS_NOMEM = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot import '%s'\00", align 1
@ZPOOL_PROP_ALTROOT = common dso_local global i32 0, align 4
@ZPOOL_PROP_CACHEFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ZFS_IMPORT_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_import(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %4
  %15 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %16 = call i64 @nvlist_alloc(i32** %10, i32 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @EZFS_NOMEM, align 4
  %21 = load i32, i32* @TEXT_DOMAIN, align 4
  %22 = call i32 @dgettext(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @zfs_error_fmt(i32* %19, i32 %20, i32 %22, i8* %23)
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %14
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* @ZPOOL_PROP_ALTROOT, align 4
  %28 = call i32 @zpool_prop_to_name(i32 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @nvlist_add_string(i32* %26, i32 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @ZPOOL_PROP_CACHEFILE, align 4
  %35 = call i32 @zpool_prop_to_name(i32 %34)
  %36 = call i64 @nvlist_add_string(i32* %33, i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32, %25
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @nvlist_free(i32* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @EZFS_NOMEM, align 4
  %43 = load i32, i32* @TEXT_DOMAIN, align 4
  %44 = call i32 @dgettext(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @zfs_error_fmt(i32* %41, i32 %42, i32 %44, i8* %45)
  store i32 %46, i32* %5, align 4
  br label %58

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* @ZFS_IMPORT_NORMAL, align 4
  %54 = call i32 @zpool_import_props(i32* %49, i32* %50, i8* %51, i32* %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @nvlist_free(i32* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %48, %38, %18
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @zfs_error_fmt(i32*, i32, i32, i8*) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @zpool_import_props(i32*, i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
