; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deleg.c_dsl_check_user_access.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deleg.c_dsl_check_user_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_DELEG_USER = common dso_local global i32 0, align 4
@ZFS_DELEG_GROUP = common dso_local global i32 0, align 4
@ZFS_DELEG_EVERYONE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32*)* @dsl_check_user_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_check_user_access(i32* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @crgetuid(i32* %16)
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ZFS_DELEG_USER, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @dsl_check_access(i32* %18, i32 %19, i32 %20, i32 %21, i32* %15, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %76

26:                                               ; preds = %5
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @crgetgid(i32* %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ZFS_DELEG_GROUP, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @dsl_check_access(i32* %29, i32 %30, i32 %31, i32 %32, i32* %15, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %76

37:                                               ; preds = %26
  store i32 -1, i32* %15, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ZFS_DELEG_EVERYONE, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @dsl_check_access(i32* %38, i32 %39, i32 %40, i32 %41, i32* %15, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %76

46:                                               ; preds = %37
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @crgetngroups(i32* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = call i32* @crgetgroups(i32* %49)
  store i32* %50, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %70, %46
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ZFS_DELEG_GROUP, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 @dsl_check_access(i32* %61, i32 %62, i32 %63, i32 %64, i32* %15, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %76

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %51

73:                                               ; preds = %51
  %74 = load i32, i32* @EPERM, align 4
  %75 = call i32 @SET_ERROR(i32 %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %68, %45, %36, %25
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @crgetuid(i32*) #1

declare dso_local i64 @dsl_check_access(i32*, i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @crgetgid(i32*) #1

declare dso_local i32 @crgetngroups(i32*) #1

declare dso_local i32* @crgetgroups(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
