; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fs-util.c_unlink_or_warn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fs-util.c_unlink_or_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EROFS = common dso_local global i64 0, align 8
@F_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to remove \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unlink_or_warn(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @unlink(i8* %4)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOENT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @EROFS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @F_OK, align 4
  %18 = call i64 @access(i8* %16, i32 %17)
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %11
  %21 = load i64, i64* @errno, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @log_error_errno(i64 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %7, %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @unlink(i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @log_error_errno(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
