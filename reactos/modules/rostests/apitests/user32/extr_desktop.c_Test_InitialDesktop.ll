; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_desktop.c_Test_InitialDesktop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_desktop.c_Test_InitialDesktop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"WinSta0\\\00", align 1
@STATUS_DLL_INIT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"\\Default\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"WinSta0\\Default\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Winlogon\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"WinSta0/Default\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"NonExistantDesktop\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"NonExistantWinsta\\NonExistantDesktop\00", align 1
@.str.8 = private unnamed_addr constant [11 x i32] [i32 84, i32 101, i32 115, i32 116, i32 87, i32 105, i32 110, i32 115, i32 116, i32 97, i32 0], align 4
@WINSTA_ALL_ACCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"CreateWindowStation failed, got 0x%p, 0x%lx\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"SetProcessWindowStation failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i32] [i32 84, i32 101, i32 115, i32 116, i32 68, i32 101, i32 115, i32 107, i32 116, i32 111, i32 112, i32 0], align 4
@DESKTOP_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"CreateDesktop failed, got 0x%p, 0x%lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"TestDesktop\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"TestWinsta\\\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"\\TestDesktop\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"TestWinsta\\TestDesktop\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"CloseDesktop failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"CloseWindowStation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_InitialDesktop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %5, align 8
  %8 = call i32* (...) @GetProcessWindowStation()
  store i32* %8, i32** %4, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @test_CreateProcessWithDesktop(i32 0, i8* %9, i8* null, i32 0)
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @test_CreateProcessWithDesktop(i32 1, i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* @STATUS_DLL_INIT_FAILED, align 4
  %15 = call i32 @test_CreateProcessWithDesktop(i32 2, i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @STATUS_DLL_INIT_FAILED, align 4
  %18 = call i32 @test_CreateProcessWithDesktop(i32 3, i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @test_CreateProcessWithDesktop(i32 4, i8* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* @STATUS_DLL_INIT_FAILED, align 4
  %23 = call i32 @test_CreateProcessWithDesktop(i32 5, i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* @STATUS_DLL_INIT_FAILED, align 4
  %26 = call i32 @test_CreateProcessWithDesktop(i32 6, i8* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @STATUS_DLL_INIT_FAILED, align 4
  %29 = call i32 @test_CreateProcessWithDesktop(i32 7, i8* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* @STATUS_DLL_INIT_FAILED, align 4
  %32 = call i32 @test_CreateProcessWithDesktop(i32 8, i8* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @WINSTA_ALL_ACCESS, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32* @CreateInheritableWinsta(i8* bitcast ([11 x i32]* @.str.8 to i8*), i32 %33, i32 %34, i32* %7)
  store i32* %35, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @NO_ERROR, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %38, %1
  %43 = phi i1 [ false, %1 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32* %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @SetProcessWindowStation(i32* %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @FALSE, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %55 = load i32, i32* @DESKTOP_ALL_ACCESS, align 4
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i32* @CreateInheritableDesktop(i8* bitcast ([12 x i32]* @.str.11 to i8*), i32 %55, i32 %56, i32* %7)
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, -17960947
  br label %63

63:                                               ; preds = %60, %42
  %64 = phi i1 [ false, %42 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32* %66, i32 %67)
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @test_CreateProcessWithDesktop(i32 9, i8* %69, i8* null, i32 0)
  %71 = load i8*, i8** %2, align 8
  %72 = load i32, i32* @STATUS_DLL_INIT_FAILED, align 4
  %73 = call i32 @test_CreateProcessWithDesktop(i32 10, i8* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %72)
  %74 = load i8*, i8** %2, align 8
  %75 = load i32, i32* @STATUS_DLL_INIT_FAILED, align 4
  %76 = call i32 @test_CreateProcessWithDesktop(i32 11, i8* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %2, align 8
  %78 = load i32, i32* @STATUS_DLL_INIT_FAILED, align 4
  %79 = call i32 @test_CreateProcessWithDesktop(i32 12, i8* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %78)
  %80 = load i8*, i8** %2, align 8
  %81 = call i32 @test_CreateProcessWithDesktop(i32 13, i8* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 0)
  %82 = load i8*, i8** %2, align 8
  %83 = load i32, i32* @STATUS_DLL_INIT_FAILED, align 4
  %84 = call i32 @test_CreateProcessWithDesktop(i32 14, i8* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i64 @SetProcessWindowStation(i32* %85)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @FALSE, align 8
  %89 = icmp ne i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %92 = load i32*, i32** %5, align 8
  %93 = call i64 @CloseDesktop(i32* %92)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @FALSE, align 8
  %96 = icmp ne i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %99 = load i32*, i32** %3, align 8
  %100 = call i64 @CloseWindowStation(i32* %99)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @FALSE, align 8
  %103 = icmp ne i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32* @GetProcessWindowStation(...) #1

declare dso_local i32 @test_CreateProcessWithDesktop(i32, i8*, i8*, i32) #1

declare dso_local i32* @CreateInheritableWinsta(i8*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @SetProcessWindowStation(i32*) #1

declare dso_local i32* @CreateInheritableDesktop(i8*, i32, i32, i32*) #1

declare dso_local i64 @CloseDesktop(i32*) #1

declare dso_local i64 @CloseWindowStation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
