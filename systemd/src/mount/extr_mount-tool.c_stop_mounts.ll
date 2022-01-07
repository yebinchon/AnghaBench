; ModuleID = '/home/carl/AnghaBench/systemd/src/mount/extr_mount-tool.c_stop_mounts.c'
source_filename = "/home/carl/AnghaBench/systemd/src/mount/extr_mount-tool.c_stop_mounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Refusing to operate on root directory: %s\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Path contains non-normalized components: %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c".mount\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c".automount\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @stop_mounts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_mounts(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @path_equal(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = call i32 @SYNTHETIC_ERRNO(i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @log_error_errno(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @path_is_normalized(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @SYNTHETIC_ERRNO(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @log_error_errno(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %15
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @stop_mount(i32* %25, i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @stop_mount(i32* %33, i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %38, %30, %19, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @path_equal(i8*, i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @path_is_normalized(i8*) #1

declare dso_local i32 @stop_mount(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
