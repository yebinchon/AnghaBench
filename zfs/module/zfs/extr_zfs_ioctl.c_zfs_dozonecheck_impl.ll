; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_dozonecheck_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_dozonecheck_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curproc = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*)* @zfs_dozonecheck_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_dozonecheck_impl(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @curproc, align 4
  %10 = call i64 @INGLOBALZONE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @zone_dataset_visible(i8* %13, i32* %8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @ENOENT, align 4
  %18 = call i32 @SET_ERROR(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %48

19:                                               ; preds = %12, %3
  %20 = load i32, i32* @curproc, align 4
  %21 = call i64 @INGLOBALZONE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @secpolicy_zfs(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EPERM, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %48

33:                                               ; preds = %27, %23
  br label %47

34:                                               ; preds = %19
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @EPERM, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @EPERM, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %4, align 4
  br label %48

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %33
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %43, %37, %30, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @INGLOBALZONE(i32) #1

declare dso_local i32 @zone_dataset_visible(i8*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @secpolicy_zfs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
