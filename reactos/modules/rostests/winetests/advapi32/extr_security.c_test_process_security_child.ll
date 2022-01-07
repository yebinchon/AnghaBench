; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_process_security_child.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_process_security_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCESS_TERMINATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"OpenProcess(PROCESS_TERMINATE) with err:%d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"duplicating handle err:%d\0A\00", align 1
@PROCESS_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [84 x i8] c"duplicating handle should have failed with STATUS_ACCESS_DENIED, instead of err:%d\0A\00", align 1
@PROCESS_VM_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"OpenProcess(PROCESS_VM_READ) should have failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"OpenProcess(PROCESS_ALL_ACCESS) should have failed\0A\00", align 1
@PROCESS_ALL_ACCESS_NT4 = common dso_local global i32 0, align 4
@STANDARD_RIGHTS_ALL = common dso_local global i32 0, align 4
@SPECIFIC_RIGHTS_ALL = common dso_local global i32 0, align 4
@PROCESS_QUERY_LIMITED_INFORMATION = common dso_local global i32 0, align 4
@THREAD_TERMINATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"OpenThread(THREAD_TERMINATE) with err:%d\0A\00", align 1
@THREAD_SET_THREAD_TOKEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"OpenThread(THREAD_SET_THREAD_TOKEN) should have failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_process_security_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_process_security_child() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @PROCESS_TERMINATE, align 4
  %6 = load i32, i32* @FALSE, align 4
  %7 = call i32 (...) @GetCurrentProcessId()
  %8 = call i32* @OpenProcess(i32 %5, i32 %6, i32 %7)
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 (...) @GetLastError()
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @PROCESS_TERMINATE, align 4
  %16 = call i32 @TEST_GRANTED_ACCESS(i32* %14, i32 %15)
  %17 = call i32* (...) @GetCurrentProcess()
  %18 = load i32*, i32** %1, align 8
  %19 = call i32* (...) @GetCurrentProcess()
  %20 = load i32, i32* @TRUE, align 4
  %21 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %22 = call i32 @DuplicateHandle(i32* %17, i32* %18, i32* %19, i32** %2, i32 0, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i64 (...) @GetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @PROCESS_TERMINATE, align 4
  %28 = call i32 @TEST_GRANTED_ACCESS(i32* %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @CloseHandle(i32* %29)
  %31 = call i32 @SetLastError(i32 -559038737)
  %32 = call i32* (...) @GetCurrentProcess()
  %33 = load i32*, i32** %1, align 8
  %34 = call i32* (...) @GetCurrentProcess()
  %35 = load i32, i32* @PROCESS_ALL_ACCESS, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @DuplicateHandle(i32* %32, i32* %33, i32* %34, i32** %2, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %3, align 4
  %38 = call i64 (...) @GetLastError()
  store i64 %38, i64* %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %0
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %41, %0
  %46 = phi i1 [ false, %0 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %4, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @CloseHandle(i32* %50)
  %52 = load i32, i32* @PROCESS_VM_READ, align 4
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 (...) @GetCurrentProcessId()
  %55 = call i32* @OpenProcess(i32 %52, i32 %53, i32 %54)
  store i32* %55, i32** %1, align 8
  %56 = load i32*, i32** %1, align 8
  %57 = icmp eq i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @PROCESS_ALL_ACCESS, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 (...) @GetCurrentProcessId()
  %63 = call i32* @OpenProcess(i32 %60, i32 %61, i32 %62)
  store i32* %63, i32** %1, align 8
  %64 = load i32*, i32** %1, align 8
  %65 = icmp eq i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i32* (...) @GetCurrentProcess()
  %69 = call i32* (...) @GetCurrentProcess()
  %70 = call i32* (...) @GetCurrentProcess()
  %71 = load i32, i32* @TRUE, align 4
  %72 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %73 = call i32 @DuplicateHandle(i32* %68, i32* %69, i32* %70, i32** %1, i32 0, i32 %71, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i64 (...) @GetLastError()
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = load i32, i32* @PROCESS_ALL_ACCESS_NT4, align 4
  %79 = load i32, i32* @STANDARD_RIGHTS_ALL, align 4
  %80 = load i32, i32* @SPECIFIC_RIGHTS_ALL, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @TEST_GRANTED_ACCESS2(i32* %77, i32 %78, i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @CloseHandle(i32* %83)
  %85 = call i32* (...) @GetCurrentProcess()
  %86 = call i32* (...) @GetCurrentProcess()
  %87 = call i32* (...) @GetCurrentProcess()
  %88 = load i32, i32* @PROCESS_ALL_ACCESS, align 4
  %89 = load i32, i32* @TRUE, align 4
  %90 = call i32 @DuplicateHandle(i32* %85, i32* %86, i32* %87, i32** %1, i32 %88, i32 %89, i32 0)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i64 (...) @GetLastError()
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = load i32, i32* @PROCESS_ALL_ACCESS_NT4, align 4
  %96 = load i32, i32* @PROCESS_ALL_ACCESS, align 4
  %97 = load i32, i32* @PROCESS_QUERY_LIMITED_INFORMATION, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @TEST_GRANTED_ACCESS2(i32* %94, i32 %95, i32 %98)
  %100 = call i32* (...) @GetCurrentProcess()
  %101 = load i32*, i32** %1, align 8
  %102 = call i32* (...) @GetCurrentProcess()
  %103 = load i32, i32* @PROCESS_VM_READ, align 4
  %104 = load i32, i32* @TRUE, align 4
  %105 = call i32 @DuplicateHandle(i32* %100, i32* %101, i32* %102, i32** %2, i32 %103, i32 %104, i32 0)
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i64 (...) @GetLastError()
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %107)
  %109 = load i32*, i32** %2, align 8
  %110 = load i32, i32* @PROCESS_VM_READ, align 4
  %111 = call i32 @TEST_GRANTED_ACCESS(i32* %109, i32 %110)
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @CloseHandle(i32* %112)
  %114 = load i32*, i32** %1, align 8
  %115 = call i32 @CloseHandle(i32* %114)
  %116 = load i32, i32* @THREAD_TERMINATE, align 4
  %117 = load i32, i32* @FALSE, align 4
  %118 = call i32 (...) @GetCurrentThreadId()
  %119 = call i32* @OpenThread(i32 %116, i32 %117, i32 %118)
  store i32* %119, i32** %1, align 8
  %120 = load i32*, i32** %1, align 8
  %121 = icmp ne i32* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i64 (...) @GetLastError()
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %123)
  %125 = load i32*, i32** %1, align 8
  %126 = load i32, i32* @PROCESS_TERMINATE, align 4
  %127 = call i32 @TEST_GRANTED_ACCESS(i32* %125, i32 %126)
  %128 = load i32*, i32** %1, align 8
  %129 = call i32 @CloseHandle(i32* %128)
  %130 = load i32, i32* @THREAD_SET_THREAD_TOKEN, align 4
  %131 = load i32, i32* @FALSE, align 4
  %132 = call i32 (...) @GetCurrentThreadId()
  %133 = call i32* @OpenThread(i32 %130, i32 %131, i32 %132)
  store i32* %133, i32** %1, align 8
  %134 = load i32*, i32** %1, align 8
  %135 = icmp eq i32* %134, null
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32* @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @TEST_GRANTED_ACCESS(i32*, i32) #1

declare dso_local i32 @DuplicateHandle(i32*, i32*, i32*, i32**, i32, i32, i32) #1

declare dso_local i32* @GetCurrentProcess(...) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @TEST_GRANTED_ACCESS2(i32*, i32, i32) #1

declare dso_local i32* @OpenThread(i32, i32, i32) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
