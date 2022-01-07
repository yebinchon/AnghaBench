; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_misc.c_test_SetupLogError.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_misc.c_test_SetupLogError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Test without opening\0D\0A\00", align 1
@LogSevInformation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SetupLogError succeeded\0A\00", align 1
@ERROR_FILE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"got wrong error: %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"SetupOpenLog() failed on insufficient permissions\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"SetupOpenLog failed, error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Test with wrong log severity\0D\0A\00", align 1
@LogSevMaximum = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"Test without EOL\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SetupLogError failed\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"SetupLogError failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupLogError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupLogError() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = load i32, i32* @LogSevInformation, align 4
  %5 = call i32 @SetupLogErrorA(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = call i32 (...) @GetLastError()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @ERROR_FILE_INVALID, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = call i32 @SetLastError(i32 -559038737)
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @SetupOpenLog(i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %0
  %24 = call i32 (...) @GetLastError()
  %25 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @skip(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %80

29:                                               ; preds = %23, %0
  %30 = load i32, i32* %1, align 4
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = call i32 @SetLastError(i32 -559038737)
  %34 = load i32, i32* @LogSevMaximum, align 4
  %35 = call i32 @SetupLogErrorA(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %1, align 4
  %36 = call i32 (...) @GetLastError()
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, -559038737
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %2, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @LogSevInformation, align 4
  %48 = call i32 @SetupLogErrorA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %51 = call i32 @SetLastError(i32 -559038737)
  %52 = load i32, i32* @LogSevInformation, align 4
  %53 = call i32 @SetupLogErrorA(i8* null, i32 %52)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %29
  %57 = load i32, i32* %1, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = call i32 (...) @GetLastError()
  %61 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %62 = icmp eq i32 %60, %61
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i1 [ false, %56 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i64 @broken(i32 %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %63, %29
  %69 = phi i1 [ true, %29 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 (...) @GetLastError()
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  %73 = call i32 @SetLastError(i32 -559038737)
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i32 @SetupOpenLog(i32 %74)
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* %1, align 4
  %77 = call i32 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = call i32 (...) @SetupCloseLog()
  br label %80

80:                                               ; preds = %68, %27
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SetupLogErrorA(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetupOpenLog(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @SetupCloseLog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
