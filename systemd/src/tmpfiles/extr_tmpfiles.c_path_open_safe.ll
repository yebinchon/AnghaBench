; ModuleID = '/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_path_open_safe.c'
source_filename = "/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_path_open_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to open invalid path '%s'.\00", align 1
@arg_root = common dso_local global i32 0, align 4
@CHASE_SAFE = common dso_local global i32 0, align 4
@CHASE_WARN = common dso_local global i32 0, align 4
@CHASE_NOFOLLOW = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to validate path %s: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @path_open_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_open_safe(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @assert(i8* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @path_is_normalized(i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = call i32 @SYNTHETIC_ERRNO(i32 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @log_error_errno(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 %15, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @arg_root, align 4
  %19 = load i32, i32* @CHASE_SAFE, align 4
  %20 = load i32, i32* @CHASE_WARN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CHASE_NOFOLLOW, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @chase_symlinks(i8* %17, i32 %18, i32 %23, i32* null, i32* %5)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ENOLINK, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @log_error_errno(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %2, align 4
  br label %45

36:                                               ; preds = %27, %16
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %32, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @path_is_normalized(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @chase_symlinks(i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
