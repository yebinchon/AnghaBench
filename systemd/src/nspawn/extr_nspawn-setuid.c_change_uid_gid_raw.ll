; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-setuid.c_change_uid_gid_raw.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-setuid.c_change_uid_gid_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to set auxiliary groups: %m\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"setresgid() failed: %m\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"setresuid() failed: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_uid_gid_raw(i64 %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @uid_is_valid(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @gid_is_valid(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* @STDIN_FILENO, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @fchown(i32 %20, i64 %21, i64 %22)
  %24 = load i32, i32* @STDOUT_FILENO, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @fchown(i32 %24, i64 %25, i64 %26)
  %28 = load i32, i32* @STDERR_FILENO, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @fchown(i32 %28, i64 %29, i64 %30)
  %32 = load i64, i64* %9, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = call i64 @setgroups(i64 %32, i64* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @log_error_errno(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %5, align 4
  br label %58

39:                                               ; preds = %19
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @setresgid(i64 %40, i64 %41, i64 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @log_error_errno(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %5, align 4
  br label %58

48:                                               ; preds = %39
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @setresuid(i64 %49, i64 %50, i64 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @log_error_errno(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %54, %45, %36
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @uid_is_valid(i64) #1

declare dso_local i32 @gid_is_valid(i64) #1

declare dso_local i32 @fchown(i32, i64, i64) #1

declare dso_local i64 @setgroups(i64, i64*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i64 @setresgid(i64, i64, i64) #1

declare dso_local i64 @setresuid(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
