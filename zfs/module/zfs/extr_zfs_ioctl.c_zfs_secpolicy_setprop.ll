; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_setprop.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_setprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curproc = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*)* @zfs_secpolicy_setprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_secpolicy_setprop(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %17 [
    i32 128, label %18
    i32 130, label %26
    i32 132, label %26
    i32 129, label %26
    i32 131, label %59
  ]

17:                                               ; preds = %4
  br label %80

18:                                               ; preds = %4
  %19 = load i32, i32* @curproc, align 4
  %20 = call i32 @INGLOBALZONE(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EPERM, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %86

25:                                               ; preds = %18
  br label %80

26:                                               ; preds = %4, %4, %4
  %27 = load i32, i32* @curproc, align 4
  %28 = call i32 @INGLOBALZONE(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %12, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @zfs_prop_to_name(i32 128)
  %37 = call i32 @dsl_prop_get_integer(i8* %35, i32 %36, i32* %11, i8* %34)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EPERM, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %54

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @strlen(i8* %34)
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %42
  %51 = load i32, i32* @EPERM, align 4
  %52 = call i32 @SET_ERROR(i32 %51)
  store i32 %52, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %54

53:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %53, %50, %39
  %55 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %14, align 4
  switch i32 %56, label %88 [
    i32 0, label %57
    i32 1, label %86
  ]

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %26
  br label %80

59:                                               ; preds = %4
  %60 = call i32 (...) @is_system_labeled()
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @EPERM, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %5, align 4
  br label %86

65:                                               ; preds = %59
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @nvpair_value_string(i32* %66, i8** %10)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 (...) @CRED()
  %73 = call i32 @zfs_set_slabel_policy(i8* %70, i8* %71, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %5, align 4
  br label %86

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %58, %25, %17
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @zfs_prop_to_name(i32 %82)
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @zfs_secpolicy_write_perms(i8* %81, i32 %83, i32* %84)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %80, %76, %62, %54, %22
  %87 = load i32, i32* %5, align 4
  ret i32 %87

88:                                               ; preds = %54
  unreachable
}

declare dso_local i32 @INGLOBALZONE(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dsl_prop_get_integer(i8*, i32, i32*, i8*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @is_system_labeled(...) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @zfs_set_slabel_policy(i8*, i8*, i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
