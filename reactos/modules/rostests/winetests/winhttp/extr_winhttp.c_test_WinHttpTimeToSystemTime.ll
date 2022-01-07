; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_WinHttpTimeToSystemTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_WinHttpTimeToSystemTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@test_WinHttpTimeToSystemTime.expected_time = internal constant %struct.TYPE_5__ { i32 2008, i32 7, i32 1, i32 28, i32 10, i32 5, i32 52, i32 0 }, align 4
@test_WinHttpTimeToSystemTime.time_string1 = internal constant [31 x i8] c"Mon, 28 Jul 2008 10:05:52 GMT\0A\00", align 16
@test_WinHttpTimeToSystemTime.time_string2 = internal constant [27 x i8] c" mon 28 jul 2008 10 05 52\0A\00", align 16
@.str = private unnamed_addr constant [35 x i8] c"WinHttpTimeToSystemTime succeeded\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"WinHttpTimeToSystemTime failed: %u\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"Returned SYSTEMTIME structure did not match expected SYSTEMTIME structure.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WinHttpTimeToSystemTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WinHttpTimeToSystemTime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = call i32 @WinHttpTimeToSystemTime(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @test_WinHttpTimeToSystemTime.time_string1, i64 0, i64 0), %struct.TYPE_5__* null)
  store i32 %5, i32* %1, align 4
  %6 = call i32 (...) @GetLastError()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = call i32 @SetLastError(i32 -559038737)
  %19 = call i32 @WinHttpTimeToSystemTime(i8* null, %struct.TYPE_5__* %2)
  store i32 %19, i32* %1, align 4
  %20 = call i32 (...) @GetLastError()
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @SetLastError(i32 -559038737)
  %33 = call i32 @WinHttpTimeToSystemTime(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @test_WinHttpTimeToSystemTime.time_string1, i64 0, i64 0), %struct.TYPE_5__* %2)
  store i32 %33, i32* %1, align 4
  %34 = call i32 (...) @GetLastError()
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @ERROR_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %0
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, -559038737
  %44 = zext i1 %43 to i32
  %45 = call i64 @broken(i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %41, %0
  %48 = phi i1 [ true, %0 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = call i64 @memcmp(%struct.TYPE_5__* %2, %struct.TYPE_5__* @test_WinHttpTimeToSystemTime.expected_time, i32 32)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @SetLastError(i32 -559038737)
  %57 = call i32 @WinHttpTimeToSystemTime(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @test_WinHttpTimeToSystemTime.time_string2, i64 0, i64 0), %struct.TYPE_5__* %2)
  store i32 %57, i32* %1, align 4
  %58 = call i32 (...) @GetLastError()
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @ERROR_SUCCESS, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %3, align 4
  %67 = icmp eq i32 %66, -559038737
  %68 = zext i1 %67 to i32
  %69 = call i64 @broken(i32 %68)
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %65, %47
  %72 = phi i1 [ true, %47 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %3, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = call i64 @memcmp(%struct.TYPE_5__* %2, %struct.TYPE_5__* @test_WinHttpTimeToSystemTime.expected_time, i32 32)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @WinHttpTimeToSystemTime(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @memcmp(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
