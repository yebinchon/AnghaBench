; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_hold.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"holds\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"cleanup_fd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_hold(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @fnvlist_lookup_nvlist(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32* @nvlist_next_nvpair(i32* %16, i32* null)
  store i32* %17, i32** %8, align 8
  br label %18

18:                                               ; preds = %37, %3
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @nvpair_value_string(i32* %22, i8** %13)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @SET_ERROR(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %67

29:                                               ; preds = %21
  %30 = load i8*, i8** %13, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @SET_ERROR(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @nvlist_next_nvpair(i32* %38, i32* %39)
  store i32* %40, i32** %8, align 8
  br label %18

41:                                               ; preds = %18
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @nvlist_lookup_int32(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @zfs_onexit_fd_hold(i32 %46, i64* %12)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @SET_ERROR(i32 %51)
  store i32 %52, i32* %4, align 4
  br label %67

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @dsl_dataset_user_hold(i32* %55, i64 %56, i32* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @zfs_onexit_fd_rele(i32 %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @SET_ERROR(i32 %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %50, %33, %26
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @nvlist_lookup_int32(i32*, i8*, i32*) #1

declare dso_local i32 @zfs_onexit_fd_hold(i32, i64*) #1

declare dso_local i32 @dsl_dataset_user_hold(i32*, i64, i32*) #1

declare dso_local i32 @zfs_onexit_fd_rele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
