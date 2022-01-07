; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fs-util.c_rename_noreplace.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fs-util.c_rename_noreplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rename_noreplace(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* @RENAME_NOREPLACE, align 4
  %16 = call i64 @renameat2(i32 %11, i8* %12, i32 %13, i8* %14, i32 %15)
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %88

19:                                               ; preds = %4
  %20 = load i32, i32* @errno, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = load i32, i32* @ENOTTY, align 4
  %24 = call i32 (i32, i32, i32, i32, ...) @IN_SET(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @errno, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %88

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @linkat(i32 %30, i8* %31, i32 %32, i8* %33, i32 0)
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @unlinkat(i32 %37, i8* %38, i32 0)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @errno, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @unlinkat(i32 %44, i8* %45, i32 0)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %88

48:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %88

49:                                               ; preds = %29
  %50 = load i32, i32* @errno, align 4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = load i32, i32* @ENOSYS, align 4
  %53 = load i32, i32* @ENOTTY, align 4
  %54 = load i32, i32* @EPERM, align 4
  %55 = call i32 (i32, i32, i32, i32, ...) @IN_SET(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @errno, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %88

60:                                               ; preds = %49
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* @F_OK, align 4
  %64 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %65 = call i64 @faccessat(i32 %61, i8* %62, i32 %63, i32 %64)
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EEXIST, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %88

70:                                               ; preds = %60
  %71 = load i32, i32* @errno, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @errno, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %88

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = call i64 @renameat(i32 %78, i8* %79, i32 %80, i8* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @errno, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %88

87:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %84, %74, %67, %57, %48, %41, %26, %18
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i64 @renameat2(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32, i32, ...) #1

declare dso_local i64 @linkat(i32, i8*, i32, i8*, i32) #1

declare dso_local i64 @unlinkat(i32, i8*, i32) #1

declare dso_local i64 @faccessat(i32, i8*, i32, i32) #1

declare dso_local i64 @renameat(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
