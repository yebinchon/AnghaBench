; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_znode.c_zfs_obj_to_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_znode.c_zfs_obj_to_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_obj_to_stats(i32* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  store i8 0, i8* %22, align 1
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @zfs_sa_setup(i32* %23, i32** %13)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %6, align 4
  br label %64

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @FTAG, align 4
  %33 = call i32 @zfs_grab_sa_handle(i32* %30, i32 %31, i32** %14, i32** %15, i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %6, align 4
  br label %64

38:                                               ; preds = %29
  %39 = load i32*, i32** %14, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @zfs_obj_to_stats_impl(i32* %39, i32* %40, i32* %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32*, i32** %14, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* @FTAG, align 4
  %49 = call i32 @zfs_release_sa_handle(i32* %46, i32* %47, i32 %48)
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %6, align 4
  br label %64

51:                                               ; preds = %38
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @zfs_obj_to_path_impl(i32* %52, i32 %53, i32* %54, i32* %55, i8* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @zfs_release_sa_handle(i32* %59, i32* %60, i32 %61)
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %51, %45, %36, %27
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @zfs_sa_setup(i32*, i32**) #1

declare dso_local i32 @zfs_grab_sa_handle(i32*, i32, i32**, i32**, i32) #1

declare dso_local i32 @zfs_obj_to_stats_impl(i32*, i32*, i32*) #1

declare dso_local i32 @zfs_release_sa_handle(i32*, i32*, i32) #1

declare dso_local i32 @zfs_obj_to_path_impl(i32*, i32, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
