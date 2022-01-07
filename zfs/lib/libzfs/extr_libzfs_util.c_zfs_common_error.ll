; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_zfs_common_error.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_zfs_common_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EZFS_PERM = common dso_local global i32 0, align 4
@EZFS_NODELEGATION = common dso_local global i32 0, align 4
@EZFS_IO = common dso_local global i32 0, align 4
@EZFS_FAULT = common dso_local global i32 0, align 4
@EZFS_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @zfs_common_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_common_error(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %41 [
    i32 128, label %11
    i32 133, label %11
    i32 132, label %17
    i32 129, label %23
    i32 131, label %29
    i32 130, label %35
  ]

11:                                               ; preds = %4, %4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @EZFS_PERM, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @zfs_verror(i32* %12, i32 %13, i8* %14, i32 %15)
  store i32 -1, i32* %5, align 4
  br label %42

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @EZFS_NODELEGATION, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @zfs_verror(i32* %18, i32 %19, i8* %20, i32 %21)
  store i32 -1, i32* %5, align 4
  br label %42

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @EZFS_IO, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @zfs_verror(i32* %24, i32 %25, i8* %26, i32 %27)
  store i32 -1, i32* %5, align 4
  br label %42

29:                                               ; preds = %4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @EZFS_FAULT, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @zfs_verror(i32* %30, i32 %31, i8* %32, i32 %33)
  store i32 -1, i32* %5, align 4
  br label %42

35:                                               ; preds = %4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @EZFS_INTR, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @zfs_verror(i32* %36, i32 %37, i8* %38, i32 %39)
  store i32 -1, i32* %5, align 4
  br label %42

41:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %35, %29, %23, %17, %11
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @zfs_verror(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
