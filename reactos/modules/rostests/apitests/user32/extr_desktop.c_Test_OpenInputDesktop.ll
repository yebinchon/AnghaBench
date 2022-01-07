; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_desktop.c_Test_OpenInputDesktop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_desktop.c_Test_OpenInputDesktop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@DESKTOP_ALL_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"OpenInputDesktop failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"GetThreadDesktop failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"OpenInputDesktop returned thread desktop\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Second call to OpenInputDesktop failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Second call to OpenInputDesktop returned same handle\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CloseDesktop failed\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"SetThreadDesktop for input desktop failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"SetThreadDesktop for initial desktop failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"GetProcessWindowStation failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i32] [i32 84, i32 101, i32 115, i32 116, i32 87, i32 105, i32 110, i32 115, i32 116, i32 97, i32 0], align 4
@WINSTA_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"CreateWindowStationW failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"SetProcessWindowStation failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"OpenInputDesktop should fail\0A\00", align 1
@ERROR_INVALID_FUNCTION = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"Got last error: %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"CloseWindowStation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_OpenInputDesktop() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 0, i64* %5, align 8
  %8 = load i64, i64* @FALSE, align 8
  %9 = load i32, i32* @DESKTOP_ALL_ACCESS, align 4
  %10 = call i32* @OpenInputDesktop(i32 0, i64 %8, i32 %9)
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @GetCurrentThreadId()
  %16 = call i32* @GetThreadDesktop(i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %1, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = icmp ne i32* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* @FALSE, align 8
  %27 = load i32, i32* @DESKTOP_ALL_ACCESS, align 4
  %28 = call i32* @OpenInputDesktop(i32 0, i64 %26, i32 %27)
  store i32* %28, i32** %2, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = load i32*, i32** %1, align 8
  %35 = icmp ne i32* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = call i64 @CloseDesktop(i32* %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32*, i32** %1, align 8
  %44 = call i64 @SetThreadDesktop(i32* %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @TRUE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %50 = load i32*, i32** %3, align 8
  %51 = call i64 @SetThreadDesktop(i32* %50)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @TRUE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %57 = load i32*, i32** %1, align 8
  %58 = call i64 @CloseDesktop(i32* %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %62 = call i64 (...) @GetProcessWindowStation()
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %67 = load i32, i32* @WINSTA_ALL_ACCESS, align 4
  %68 = call i64 @CreateWindowStationW(i8* bitcast ([11 x i32]* @.str.9 to i8*), i32 0, i32 %67, i32* null)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @SetProcessWindowStation(i64 %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @FALSE, align 8
  %77 = icmp ne i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %80 = load i64, i64* @FALSE, align 8
  %81 = load i32, i32* @DESKTOP_ALL_ACCESS, align 4
  %82 = call i32* @OpenInputDesktop(i32 0, i64 %80, i32 %81)
  store i32* %82, i32** %1, align 8
  %83 = load i32*, i32** %1, align 8
  %84 = icmp eq i32* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %87 = call i64 (...) @GetLastError()
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @ERROR_INVALID_FUNCTION, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %7, align 8
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i64 %92)
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @SetProcessWindowStation(i64 %94)
  store i64 %95, i64* %4, align 8
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* @FALSE, align 8
  %98 = icmp ne i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %101 = load i64, i64* %5, align 8
  %102 = call i64 @CloseWindowStation(i64 %101)
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* %4, align 8
  %104 = load i64, i64* @FALSE, align 8
  %105 = icmp ne i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32* @OpenInputDesktop(i32, i64, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @GetThreadDesktop(i32) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i64 @CloseDesktop(i32*) #1

declare dso_local i64 @SetThreadDesktop(i32*) #1

declare dso_local i64 @GetProcessWindowStation(...) #1

declare dso_local i64 @CreateWindowStationW(i8*, i32, i32, i32*) #1

declare dso_local i64 @SetProcessWindowStation(i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @CloseWindowStation(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
