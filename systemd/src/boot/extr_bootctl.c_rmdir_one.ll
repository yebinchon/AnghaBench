; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/extr_bootctl.c_rmdir_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/extr_bootctl.c_rmdir_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to remove directory \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Removed \22%s\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @rmdir_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmdir_one(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @prefix_roota(i8* %8, i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @rmdir(i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = load i32, i32* @ENOTEMPTY, align 4
  %18 = call i32 @IN_SET(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @LOG_DEBUG, align 4
  br label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @LOG_ERR, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load i32, i32* @errno, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @log_full_errno(i32 %26, i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @errno, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %25
  br label %39

36:                                               ; preds = %2
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @log_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %35
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i8* @prefix_roota(i8*, i8*) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_full_errno(i32, i32, i8*, i8*) #1

declare dso_local i32 @log_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
