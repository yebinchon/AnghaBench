; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-vnode.c_vn_vtype_to_mode.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-vnode.c_vn_vtype_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VREG = common dso_local global i64 0, align 8
@S_IFREG = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@S_IFCHR = common dso_local global i32 0, align 4
@VBLK = common dso_local global i64 0, align 8
@S_IFBLK = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i64 0, align 8
@S_IFIFO = common dso_local global i32 0, align 4
@VLNK = common dso_local global i64 0, align 8
@S_IFLNK = common dso_local global i32 0, align 4
@VSOCK = common dso_local global i64 0, align 8
@S_IFSOCK = common dso_local global i32 0, align 4
@VNON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_vtype_to_mode(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @VREG, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @S_IFREG, align 4
  store i32 %8, i32* %2, align 4
  br label %47

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @VDIR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @S_IFDIR, align 4
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @VCHR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @S_IFCHR, align 4
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @VBLK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @S_IFBLK, align 4
  store i32 %26, i32* %2, align 4
  br label %47

27:                                               ; preds = %21
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @VFIFO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @S_IFIFO, align 4
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %27
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @VLNK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @S_IFLNK, align 4
  store i32 %38, i32* %2, align 4
  br label %47

39:                                               ; preds = %33
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @VSOCK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @S_IFSOCK, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @VNON, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43, %37, %31, %25, %19, %13, %7
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
