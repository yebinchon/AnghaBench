; ModuleID = '/home/carl/AnghaBench/systemd/src/coredump/extr_coredump.c_maybe_remove_external_coredump.c'
source_filename = "/home/carl/AnghaBench/systemd/src/coredump/extr_coredump.c_maybe_remove_external_coredump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_storage = common dso_local global i64 0, align 8
@COREDUMP_STORAGE_EXTERNAL = common dso_local global i64 0, align 8
@arg_external_size_max = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Failed to unlink %s: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @maybe_remove_external_coredump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_remove_external_coredump(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* @arg_storage, align 8
  %7 = load i64, i64* @COREDUMP_STORAGE_EXTERNAL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @arg_external_size_max, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %31

14:                                               ; preds = %9, %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %31

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @unlink(i8* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ENOENT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* @errno, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @log_error_errno(i64 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %22, %18
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26, %17, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @log_error_errno(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
