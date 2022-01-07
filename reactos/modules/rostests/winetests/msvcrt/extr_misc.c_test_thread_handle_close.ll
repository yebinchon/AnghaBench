; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_misc.c_test_thread_handle_close.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_misc.c_test_thread_handle_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_thread_func = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"_beginthread failed (%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i32 0, align 4
@test_thread_func_ex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"_beginthreadex failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_thread_handle_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_thread_handle_close() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @test_thread_func, align 4
  %4 = call i64 @_beginthread(i32 %3, i32 0, i8* null)
  %5 = inttoptr i64 %4 to i32*
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %8 = icmp ne i32* %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @INFINITE, align 4
  %14 = call i32 @WaitForSingleObject(i32* %12, i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @CloseHandle(i32* %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @test_thread_func, align 4
  %24 = call i64 @_beginthread(i32 %23, i32 0, i8* inttoptr (i64 1 to i8*))
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %28 = icmp ne i32* %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = load i32, i32* @INFINITE, align 4
  %34 = call i32 @WaitForSingleObject(i32* %32, i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @CloseHandle(i32* %35)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @test_thread_func, align 4
  %44 = call i64 @_beginthread(i32 %43, i32 0, i8* inttoptr (i64 2 to i8*))
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %1, align 8
  %46 = load i32*, i32** %1, align 8
  %47 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %48 = icmp ne i32* %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = call i32 @Sleep(i32 150)
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @INFINITE, align 4
  %55 = call i32 @WaitForSingleObject(i32* %53, i32 %54)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @WAIT_OBJECT_0, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @CloseHandle(i32* %62)
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @test_thread_func, align 4
  %68 = call i64 @_beginthread(i32 %67, i32 0, i8* inttoptr (i64 3 to i8*))
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %1, align 8
  %70 = load i32*, i32** %1, align 8
  %71 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %72 = icmp ne i32* %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* @errno, align 4
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = call i32 @Sleep(i32 150)
  %77 = load i32*, i32** %1, align 8
  %78 = load i32, i32* @INFINITE, align 4
  %79 = call i32 @WaitForSingleObject(i32* %77, i32 %78)
  store i32 %79, i32* %2, align 4
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @WAIT_OBJECT_0, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @CloseHandle(i32* %86)
  store i32 %87, i32* %2, align 4
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @test_thread_func_ex, align 4
  %92 = call i64 @_beginthreadex(i32* null, i32 0, i32 %91, i32* null, i32 0, i32* null)
  %93 = inttoptr i64 %92 to i32*
  store i32* %93, i32** %1, align 8
  %94 = load i32*, i32** %1, align 8
  %95 = icmp ne i32* %94, null
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* @errno, align 4
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = call i32 @Sleep(i32 150)
  %100 = load i32*, i32** %1, align 8
  %101 = load i32, i32* @INFINITE, align 4
  %102 = call i32 @WaitForSingleObject(i32* %100, i32 %101)
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @WAIT_OBJECT_0, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @CloseHandle(i32* %109)
  store i32 %110, i32* %2, align 4
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  ret void
}

declare dso_local i64 @_beginthread(i32, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @WaitForSingleObject(i32*, i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @_beginthreadex(i32*, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
