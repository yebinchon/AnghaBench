; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_sync_one.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_sync_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"force\00", align 1
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"sync '%s' failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_sync_one(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @zpool_get_handle(i32* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @zpool_get_name(i32* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = call i32* (...) @fnvlist_alloc()
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fnvlist_add_boolean_value(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @lzc_sync(i8* %22, i32* %23, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @nvlist_free(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TEXT_DOMAIN, align 4
  %32 = call i32 @dgettext(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @zpool_standard_error_fmt(i32* %29, i32 %30, i32 %32, i8* %33)
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @nvlist_free(i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32* @zpool_get_handle(i32*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_boolean_value(i32*, i8*, i32) #1

declare dso_local i32 @lzc_sync(i8*, i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @zpool_standard_error_fmt(i32*, i32, i32, i8*) #1

declare dso_local i32 @dgettext(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
