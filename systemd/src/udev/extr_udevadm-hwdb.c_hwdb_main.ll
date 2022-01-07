; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-hwdb.c_hwdb_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-hwdb.c_hwdb_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_update = common dso_local global i64 0, align 8
@arg_test = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Either --update or --test must be used.\00", align 1
@arg_root = common dso_local global i32 0, align 4
@arg_hwdb_bin_dir = common dso_local global i32 0, align 4
@arg_strict = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwdb_main(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8**, i8*** %6, align 8
  %11 = call i32 @parse_argv(i32 %9, i8** %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i64, i64* @arg_update, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @arg_test, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @SYNTHETIC_ERRNO(i32 %23)
  %25 = call i32 @log_error_errno(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %19, %16
  %27 = load i64, i64* @arg_update, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* @arg_root, align 4
  %31 = load i32, i32* @arg_hwdb_bin_dir, align 4
  %32 = load i32, i32* @arg_strict, align 4
  %33 = call i32 @hwdb_update(i32 %30, i32 %31, i32 %32, i32 1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %46

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i64, i64* @arg_test, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* @arg_test, align 8
  %44 = call i32 @hwdb_query(i64 %43)
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %36, %22, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @parse_argv(i32, i8**) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @hwdb_update(i32, i32, i32, i32) #1

declare dso_local i32 @hwdb_query(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
