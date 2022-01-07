; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_negative_source_length.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_negative_source_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@foobarW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WideCharToMultiByte(-2002): len=%d error=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"WideCharToMultiByte(-2002): expected \22foobar\22 got \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"MultiByteToWideChar(-2002): len=%d error=%u\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"MultiByteToWideChar(-1): len=%d error=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_negative_source_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_negative_source_length() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca [10 x i8], align 1
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %6 = call i32 @memset(i8* %5, i8 signext 120, i32 10)
  %7 = load i32, i32* @CP_ACP, align 4
  %8 = load i32, i32* @foobarW, align 4
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %10 = call i32 @WideCharToMultiByte(i32 %7, i32 0, i32 %8, i32 -2002, i8* %9, i32 10, i32* null, i32* null)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = call i32 (...) @GetLastError()
  %15 = icmp eq i32 %14, -559038737
  br label %16

16:                                               ; preds = %13, %0
  %17 = phi i1 [ false, %0 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %1, align 4
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %23 = call i32 @lstrcmpA(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = call i32 @SetLastError(i32 -559038737)
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %31 = call i32 @memset(i8* %30, i8 signext 120, i32 10)
  %32 = load i32, i32* @CP_ACP, align 4
  %33 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %34 = call i32 @MultiByteToWideChar(i32 %32, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -2002, i8* %33, i32 10)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = icmp eq i32 %35, 7
  br i1 %36, label %37, label %45

37:                                               ; preds = %16
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %39 = load i32, i32* @foobarW, align 4
  %40 = call i32 @lstrcmpW(i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = call i32 (...) @GetLastError()
  %44 = icmp eq i32 %43, -559038737
  br label %45

45:                                               ; preds = %42, %37, %16
  %46 = phi i1 [ false, %37 ], [ false, %16 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %1, align 4
  %49 = call i32 (...) @GetLastError()
  %50 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %49)
  %51 = call i32 @SetLastError(i32 -559038737)
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %53 = call i32 @memset(i8* %52, i8 signext 120, i32 10)
  %54 = load i32, i32* @CP_ACP, align 4
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %56 = call i32 @MultiByteToWideChar(i32 %54, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -1, i8* %55, i32 6)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = call i32 (...) @GetLastError()
  %61 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %62 = icmp eq i32 %60, %61
  br label %63

63:                                               ; preds = %59, %45
  %64 = phi i1 [ false, %45 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %1, align 4
  %67 = call i32 (...) @GetLastError()
  %68 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @lstrcmpA(i8*, i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @lstrcmpW(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
