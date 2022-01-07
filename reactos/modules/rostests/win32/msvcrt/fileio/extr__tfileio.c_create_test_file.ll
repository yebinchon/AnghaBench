; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr__tfileio.c_create_test_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr__tfileio.c_create_test_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@status_flagged = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"STATUS: Attempting to create output file %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"STATUS: Attempting to verify output file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SUCCESS: %s verified ok\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ERROR: failed to create file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @create_test_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_test_file(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i64, i64* @status_flagged, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = call i32 @_T(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @_tprintf(i32 %13, i32* %14)
  br label %16

16:                                               ; preds = %12, %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @create_output_file(i32* %17, i32* %18, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = load i64, i64* @status_flagged, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 @_T(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @_tprintf(i32 %26, i32* %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @verify_output_file(i32* %30, i32* %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i64, i64* @status_flagged, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @_tprintf(i32 %39, i32* %40)
  br label %42

42:                                               ; preds = %38, %35
  br label %44

43:                                               ; preds = %29
  store i32 2, i32* %5, align 4
  br label %50

44:                                               ; preds = %42
  br label %49

45:                                               ; preds = %16
  %46 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @_tprintf(i32 %46, i32* %47)
  store i32 1, i32* %5, align 4
  br label %50

49:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %45, %43
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @_tprintf(i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @create_output_file(i32*, i32*, i32*) #1

declare dso_local i64 @verify_output_file(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
