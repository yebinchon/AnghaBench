; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_tox_test.c_write_file.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_tox_test.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@size_recv = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Bad position\00", align 1
@file_recv = common dso_local global i32 0, align 4
@num = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"FILE_CORRUPTED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_file(i32* %0, i32 %1, i32 %2, i64 %3, i32* %4, i64 %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i8*, i8** %14, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 974536
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  br label %53

22:                                               ; preds = %7
  %23 = load i64, i64* @size_recv, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @ck_abort_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %53

28:                                               ; preds = %22
  %29 = load i64, i64* %13, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* @file_recv, align 4
  br label %53

32:                                               ; preds = %28
  %33 = load i64, i64* %13, align 8
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %15, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %36 = load i32, i32* @num, align 4
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @memset(i32* %35, i32 %36, i64 %37)
  %39 = load i32, i32* @num, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @num, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @memcmp(i32* %35, i32* %41, i64 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @size_recv, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* @size_recv, align 8
  br label %51

49:                                               ; preds = %32
  %50 = call i32 @ck_abort_msg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %52)
  br label %53

53:                                               ; preds = %51, %31, %26, %21
  ret void
}

declare dso_local i32 @ck_abort_msg(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
