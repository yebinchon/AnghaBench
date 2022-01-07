; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_pool_os.c_find_start_block.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_pool_os.c_find_start_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXOFFSET_T = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @find_start_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_start_block(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i64, i64* @MAXOFFSET_T, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %12 = call i64 @nvlist_lookup_nvlist_array(i32* %10, i32 %11, i32*** %4, i64* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @ZPOOL_CONFIG_WHOLE_DISK, align 4
  %17 = call i64 @nvlist_lookup_uint64(i32* %15, i32 %16, i32* %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %14
  %23 = load i64, i64* @MAXOFFSET_T, align 8
  store i64 %23, i64* %2, align 8
  br label %54

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @read_efi_label(i32* %25, i64* %7)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @MAXOFFSET_T, align 8
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %2, align 8
  br label %54

32:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32**, i32*** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @find_start_block(i32* %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @MAXOFFSET_T, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %2, align 8
  br label %54

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %33

52:                                               ; preds = %33
  %53 = load i64, i64* @MAXOFFSET_T, align 8
  store i64 %53, i64* %2, align 8
  br label %54

54:                                               ; preds = %52, %46, %30, %22
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i64 @read_efi_label(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
