; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr__tfileio.c_test_files.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr__tfileio.c_test_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"performing test: %d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"zerosize.foo\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"System unable to truncate files yet, unlinking:\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"text.dos\00", align 1
@dos_data = common dso_local global i32 0, align 4
@TEST_B1_FILE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"binary.dos\00", align 1
@TEST_B2_FILE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"text.nix\00", align 1
@nix_data = common dso_local global i32 0, align 4
@TEST_B3_FILE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"binary.nix\00", align 1
@TEST_B4_FILE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"no test number selected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @test_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_files(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %6, i8* %7)
  %9 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i64 @test_file_truncate(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 (...) @test_unlink_files()
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %45 [
    i32 1, label %17
    i32 2, label %22
    i32 3, label %27
    i32 4, label %32
    i32 5, label %37
    i32 6, label %39
    i32 7, label %41
    i32 -1, label %43
  ]

17:                                               ; preds = %15
  %18 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* @dos_data, align 4
  %20 = load i32, i32* @TEST_B1_FILE_SIZE, align 4
  %21 = call i32 @test_text_fileio(i32 %18, i32 %19, i32 166, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %15
  %23 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* @dos_data, align 4
  %25 = load i32, i32* @TEST_B2_FILE_SIZE, align 4
  %26 = call i32 @test_binary_fileio(i32 %23, i32 %24, i32 %25, i32 166)
  store i32 %26, i32* %5, align 4
  br label %48

27:                                               ; preds = %15
  %28 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %29 = load i32, i32* @nix_data, align 4
  %30 = load i32, i32* @TEST_B3_FILE_SIZE, align 4
  %31 = call i32 @test_text_fileio(i32 %28, i32 %29, i32 162, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %15
  %33 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %34 = load i32, i32* @nix_data, align 4
  %35 = load i32, i32* @TEST_B4_FILE_SIZE, align 4
  %36 = call i32 @test_binary_fileio(i32 %33, i32 %34, i32 %35, i32 162)
  store i32 %36, i32* %5, align 4
  br label %48

37:                                               ; preds = %15
  %38 = call i32 (...) @test_console_io()
  store i32 %38, i32* %5, align 4
  br label %48

39:                                               ; preds = %15
  %40 = call i32 (...) @test_console_getchar()
  store i32 %40, i32* %5, align 4
  br label %48

41:                                               ; preds = %15
  %42 = call i32 (...) @test_console_putch()
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %15
  %44 = call i32 (...) @test_unlink_files()
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %15
  %46 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %47 = call i32 @_tprintf(i32 %46)
  br label %48

48:                                               ; preds = %45, %43, %41, %39, %37, %32, %27, %22, %17
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @test_file_truncate(i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @test_unlink_files(...) #1

declare dso_local i32 @test_text_fileio(i32, i32, i32, i32) #1

declare dso_local i32 @test_binary_fileio(i32, i32, i32, i32) #1

declare dso_local i32 @test_console_io(...) #1

declare dso_local i32 @test_console_getchar(...) #1

declare dso_local i32 @test_console_putch(...) #1

declare dso_local i32 @_tprintf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
