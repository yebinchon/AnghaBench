; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_clone.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_clone(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i8* @fnvlist_lookup_string(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @nvlist_lookup_nvlist(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32** %9)
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strchr(i8* %15, i8 signext 64)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strchr(i8* %19, i8 signext 37)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %18
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @dataset_namecheck(i8* %26, i32* null, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = call i32 @SET_ERROR(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %52

32:                                               ; preds = %25
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @dmu_objset_clone(i8* %33, i8* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @zfs_set_prop_nvlist(i8* %39, i32 %40, i32* %41, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @dsl_destroy_head(i8* %47)
  br label %49

49:                                               ; preds = %46, %38
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %29, %22
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i8* @fnvlist_lookup_string(i32*, i8*) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @dataset_namecheck(i8*, i32*, i32*) #1

declare dso_local i32 @dmu_objset_clone(i8*, i8*) #1

declare dso_local i32 @zfs_set_prop_nvlist(i8*, i32, i32*, i32*) #1

declare dso_local i32 @dsl_destroy_head(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
