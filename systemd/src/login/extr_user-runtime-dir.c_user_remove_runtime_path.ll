; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_user-runtime-dir.c_user_remove_runtime_path.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_user-runtime-dir.c_user_remove_runtime_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [72 x i8] c"Failed to remove runtime directory %s (before unmounting), ignoring: %m\00", align 1
@MNT_DETACH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Failed to unmount user runtime directory %s, ignoring: %m\00", align 1
@REMOVE_ROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Failed to remove runtime directory %s (after unmounting): %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @user_remove_runtime_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_remove_runtime_path(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @assert(i8* %5)
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @path_is_absolute(i8* %7)
  %9 = call i32 @assert(i8* %8)
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @rm_rf(i8* %10, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @log_debug_errno(i32 %15, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @MNT_DETACH, align 4
  %21 = call i32 @umount2(i8* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i32, i32* @errno, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = call i32 @IN_SET(i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @errno, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @log_debug_errno(i32 %31, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %24, %18
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @REMOVE_ROOT, align 4
  %37 = call i32 @rm_rf(i8* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @log_error_errno(i32 %46, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %40, %34
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @path_is_absolute(i8*) #1

declare dso_local i32 @rm_rf(i8*, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*, i8*) #1

declare dso_local i32 @umount2(i8*, i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
