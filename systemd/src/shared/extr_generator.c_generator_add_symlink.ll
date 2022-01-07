; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_generator.c_generator_add_symlink.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_generator.c_generator_add_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to create symlink \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generator_add_symlink(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @path_is_absolute(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  br label %20

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* (i8*, i8*, ...) @strjoina(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i8* [ %16, %15 ], [ %19, %17 ]
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @basename(i8* %25)
  %27 = call i8* (i8*, i8*, ...) @strjoina(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @mkdir_parents_label(i8* %28, i32 493)
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i64 @symlink(i8* %30, i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %20
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EEXIST, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* @errno, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @log_error_errno(i64 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %20
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @path_is_absolute(i8*) #1

declare dso_local i8* @strjoina(i8*, i8*, ...) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @mkdir_parents_label(i8*, i32) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i32 @log_error_errno(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
