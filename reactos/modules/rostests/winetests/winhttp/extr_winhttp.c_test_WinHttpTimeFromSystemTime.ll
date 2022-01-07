; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_WinHttpTimeFromSystemTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_WinHttpTimeFromSystemTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@test_WinHttpTimeFromSystemTime.time = internal constant %struct.TYPE_3__ { i32 2008, i32 7, i32 1, i32 28, i32 10, i32 5, i32 52, i32 0 }, align 4
@test_WinHttpTimeFromSystemTime.expected_string = internal constant [30 x i8] c"Mon, 28 Jul 2008 10:05:52 GMT\00", align 16
@WINHTTP_TIME_FORMAT_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WinHttpTimeFromSystemTime succeeded\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"WinHttpTimeFromSystemTime failed: %u\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Time string returned did not match expected time string.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WinHttpTimeFromSystemTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WinHttpTimeFromSystemTime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @WINHTTP_TIME_FORMAT_BUFSIZE, align 4
  %6 = add nsw i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = call i32 @SetLastError(i32 -559038737)
  %11 = call i32 @WinHttpTimeFromSystemTime(%struct.TYPE_3__* @test_WinHttpTimeFromSystemTime.time, i8* null)
  store i32 %11, i32* %1, align 4
  %12 = call i32 (...) @GetLastError()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call i32 @SetLastError(i32 -559038737)
  %25 = call i32 @WinHttpTimeFromSystemTime(%struct.TYPE_3__* null, i8* %9)
  store i32 %25, i32* %1, align 4
  %26 = call i32 (...) @GetLastError()
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = call i32 @SetLastError(i32 -559038737)
  %39 = call i32 @WinHttpTimeFromSystemTime(%struct.TYPE_3__* @test_WinHttpTimeFromSystemTime.time, i8* %9)
  store i32 %39, i32* %1, align 4
  %40 = call i32 (...) @GetLastError()
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @ERROR_SUCCESS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %0
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, -559038737
  %50 = zext i1 %49 to i32
  %51 = call i64 @broken(i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %47, %0
  %54 = phi i1 [ true, %0 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = call i64 @memcmp(i8* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @test_WinHttpTimeFromSystemTime.expected_string, i64 0, i64 0), i32 30)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %62)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @WinHttpTimeFromSystemTime(%struct.TYPE_3__*, i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
