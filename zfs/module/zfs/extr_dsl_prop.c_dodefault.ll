; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_prop.c_dodefault.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_prop.c_dodefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPROP_INVAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@PROP_TYPE_STRING = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i8*)* @dodefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dodefault(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @ZPROP_INVAL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @zfs_prop_readonly(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @zfs_prop_setonce(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %56

24:                                               ; preds = %17, %13
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @zfs_prop_get_type(i64 %25)
  %27 = load i64, i64* @PROP_TYPE_STRING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EOVERFLOW, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %5, align 4
  br label %56

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @zfs_prop_default_string(i64 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @strncpy(i8* %36, i32 %38, i32 %39)
  br label %55

41:                                               ; preds = %24
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 8
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @EOVERFLOW, align 4
  %49 = call i32 @SET_ERROR(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %56

50:                                               ; preds = %44
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @zfs_prop_default_numeric(i64 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = bitcast i8* %53 to i32*
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %35
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %47, %32, %21
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @zfs_prop_readonly(i64) #1

declare dso_local i32 @zfs_prop_setonce(i64) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @zfs_prop_get_type(i64) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @zfs_prop_default_string(i64) #1

declare dso_local i32 @zfs_prop_default_numeric(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
