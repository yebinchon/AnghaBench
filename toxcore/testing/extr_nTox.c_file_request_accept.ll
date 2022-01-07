; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_file_request_accept.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_file_request_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOX_FILE_KIND_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Refused invalid file type.\00", align 1
@TOX_FILE_CONTROL_CANCEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"[t] %u is sending us: %s of size %llu\00", align 1
@TOX_FILE_CONTROL_RESUME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Accepted file transfer. (saving file as: %u.%u.bin)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Could not accept file transfer.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_request_accept(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, i64 %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [512 x i8], align 16
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @TOX_FILE_KIND_DATA, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %8
  %22 = call i32 @new_lines(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* @TOX_FILE_CONTROL_CANCEL, align 4
  %27 = call i64 @tox_file_control(i32* %23, i64 %24, i64 %25, i32 %26, i32 0)
  br label %52

28:                                               ; preds = %8
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %30 = load i64, i64* %10, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i64, i64* %13, align 8
  %34 = call i32 (i8*, i8*, i64, i64, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %32, i64 %33)
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %36 = call i32 @new_lines(i8* %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* @TOX_FILE_CONTROL_RESUME, align 4
  %41 = call i64 @tox_file_control(i32* %37, i64 %38, i64 %39, i32 %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %28
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 (i8*, i8*, i64, i64, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %45, i64 %46)
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %49 = call i32 @new_lines(i8* %48)
  br label %52

50:                                               ; preds = %28
  %51 = call i32 @new_lines(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %21, %50, %43
  ret void
}

declare dso_local i32 @new_lines(i8*) #1

declare dso_local i64 @tox_file_control(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
