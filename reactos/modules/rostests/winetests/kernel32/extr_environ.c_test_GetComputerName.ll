; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_GetComputerName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_GetComputerName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"GetComputerNameA should have failed with ERROR_BUFFER_OVERFLOW instead of %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"HeapAlloc failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"GetComputerNameA failed with error %d\0A\00", align 1
@MAX_COMPUTERNAME_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"computer name is \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"size should be same as length, name_len=%d, size=%d\0A\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"GetComputerNameW is not implemented\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"GetComputerNameW should have failed with ERROR_BUFFER_OVERFLOW instead of %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"GetComputerNameW failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetComputerName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetComputerName() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 @GetComputerNameA(i32* inttoptr (i64 3735928559 to i32*), i32* %1)
  store i32 %7, i32* %2, align 4
  %8 = call i32 (...) @GetLastError()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %0
  %16 = phi i1 [ false, %0 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32, i8*, i32, ...) @ok(i32 %17, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32* @HeapAlloc(i32 %25, i32 0, i32 %29)
  store i32* %30, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @GetComputerNameA(i32* %36, i32* %1)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @HeapFree(i32 %41, i32 0, i32* %42)
  br label %44

44:                                               ; preds = %22, %15
  %45 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32* @HeapAlloc(i32 %47, i32 0, i32 %51)
  store i32* %52, i32** %3, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 (i32, i8*, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @GetComputerNameA(i32* %58, i32* %1)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (...) @GetLastError()
  %62 = call i32 (i32, i8*, i32, ...) @ok(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @strlen(i32* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %1, align 4
  %73 = call i32 (i32, i8*, i32, ...) @ok(i32 %70, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72)
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @HeapFree(i32 %74, i32 0, i32* %75)
  store i32 0, i32* %1, align 4
  %77 = call i32 @SetLastError(i32 -559038737)
  %78 = call i32 @GetComputerNameW(i32* inttoptr (i64 3735928559 to i32*), i32* %1)
  store i32 %78, i32* %2, align 4
  %79 = call i32 (...) @GetLastError()
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %44
  %84 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %118

85:                                               ; preds = %44
  %86 = load i32, i32* %2, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  %91 = icmp eq i32 %89, %90
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi i1 [ false, %85 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i32, i8*, i32, ...) @ok(i32 %94, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  %99 = call i32 (...) @GetProcessHeap()
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32* @HeapAlloc(i32 %99, i32 0, i32 %103)
  store i32* %104, i32** %4, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = icmp ne i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 (...) @GetLastError()
  %109 = call i32 (i32, i8*, i32, ...) @ok(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @GetComputerNameW(i32* %110, i32* %1)
  store i32 %111, i32* %2, align 4
  %112 = load i32, i32* %2, align 4
  %113 = call i32 (...) @GetLastError()
  %114 = call i32 (i32, i8*, i32, ...) @ok(i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = call i32 (...) @GetProcessHeap()
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @HeapFree(i32 %115, i32 0, i32* %116)
  br label %118

118:                                              ; preds = %92, %83
  ret void
}

declare dso_local i32 @GetComputerNameA(i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @trace(i8*, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetComputerNameW(i32*, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
