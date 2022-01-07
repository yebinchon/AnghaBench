; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_GetComputerNameExW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_GetComputerNameExW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ComputerNameDnsDomain = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"GetComputerNameExW should have failed with ERROR_MORE_DATA instead of %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"HeapAlloc failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"GetComputerNameExW(ComputerNameDnsDomain) failed with error %d\0A\00", align 1
@ComputerNameDnsFullyQualified = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"GetComputerNameExW(ComputerNameDnsFullyQualified) failed with error %d\0A\00", align 1
@ComputerNameDnsHostname = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"GetComputerNameExW(ComputerNameDnsHostname) failed with error %d\0A\00", align 1
@ComputerNameNetBIOS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"GetComputerNameExW(ComputerNameNetBIOS) failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetComputerNameExW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetComputerNameExW() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %5 = load i32, i32* @ComputerNameDnsDomain, align 4
  %6 = call i32 @pGetComputerNameExW(i32 %5, i32* inttoptr (i64 3735928559 to i32*), i64* %1)
  store i32 %6, i32* %2, align 4
  %7 = call i64 (...) @GetLastError()
  store i64 %7, i64* %4, align 8
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @ERROR_MORE_DATA, align 8
  %13 = icmp eq i64 %11, %12
  br label %14

14:                                               ; preds = %10, %0
  %15 = phi i1 [ false, %0 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i64, i64* %1, align 8
  %21 = mul i64 %20, 4
  %22 = call i32* @HeapAlloc(i32 %19, i32 0, i64 %21)
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @ComputerNameDnsDomain, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @pGetComputerNameExW(i32 %28, i32* %29, i64* %1)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i64 (...) @GetLastError()
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @HeapFree(i32 %34, i32 0, i32* %35)
  store i64 0, i64* %1, align 8
  %37 = load i32, i32* @ComputerNameDnsFullyQualified, align 4
  %38 = call i32 @pGetComputerNameExW(i32 %37, i32* inttoptr (i64 3735928559 to i32*), i64* %1)
  store i32 %38, i32* %2, align 4
  %39 = call i64 (...) @GetLastError()
  store i64 %39, i64* %4, align 8
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %14
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @ERROR_MORE_DATA, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %42, %14
  %47 = phi i1 [ false, %14 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load i64, i64* %1, align 8
  %53 = mul i64 %52, 4
  %54 = call i32* @HeapAlloc(i32 %51, i32 0, i64 %53)
  store i32* %54, i32** %3, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @ComputerNameDnsFullyQualified, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @pGetComputerNameExW(i32 %60, i32* %61, i64* %1)
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i64 (...) @GetLastError()
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @HeapFree(i32 %66, i32 0, i32* %67)
  store i64 0, i64* %1, align 8
  %69 = load i32, i32* @ComputerNameDnsHostname, align 4
  %70 = call i32 @pGetComputerNameExW(i32 %69, i32* inttoptr (i64 3735928559 to i32*), i64* %1)
  store i32 %70, i32* %2, align 4
  %71 = call i64 (...) @GetLastError()
  store i64 %71, i64* %4, align 8
  %72 = load i32, i32* %2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %46
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @ERROR_MORE_DATA, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %74, %46
  %79 = phi i1 [ false, %46 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = call i32 (...) @GetProcessHeap()
  %84 = load i64, i64* %1, align 8
  %85 = mul i64 %84, 4
  %86 = call i32* @HeapAlloc(i32 %83, i32 0, i64 %85)
  store i32* %86, i32** %3, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = icmp ne i32* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i64 (...) @GetLastError()
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* @ComputerNameDnsHostname, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @pGetComputerNameExW(i32 %92, i32* %93, i64* %1)
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* %2, align 4
  %96 = call i64 (...) @GetLastError()
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i64 %96)
  %98 = call i32 (...) @GetProcessHeap()
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @HeapFree(i32 %98, i32 0, i32* %99)
  store i64 0, i64* %1, align 8
  %101 = load i32, i32* @ComputerNameNetBIOS, align 4
  %102 = call i32 @pGetComputerNameExW(i32 %101, i32* inttoptr (i64 3735928559 to i32*), i64* %1)
  store i32 %102, i32* %2, align 4
  %103 = call i64 (...) @GetLastError()
  store i64 %103, i64* %4, align 8
  %104 = load i32, i32* %2, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %78
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @ERROR_MORE_DATA, align 8
  %109 = icmp eq i64 %107, %108
  br label %110

110:                                              ; preds = %106, %78
  %111 = phi i1 [ false, %78 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %113)
  %115 = call i32 (...) @GetProcessHeap()
  %116 = load i64, i64* %1, align 8
  %117 = mul i64 %116, 4
  %118 = call i32* @HeapAlloc(i32 %115, i32 0, i64 %117)
  store i32* %118, i32** %3, align 8
  %119 = load i32*, i32** %3, align 8
  %120 = icmp ne i32* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i64 (...) @GetLastError()
  %123 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %122)
  %124 = load i32, i32* @ComputerNameNetBIOS, align 4
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @pGetComputerNameExW(i32 %124, i32* %125, i64* %1)
  store i32 %126, i32* %2, align 4
  %127 = load i32, i32* %2, align 4
  %128 = call i64 (...) @GetLastError()
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i64 %128)
  %130 = call i32 (...) @GetProcessHeap()
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @HeapFree(i32 %130, i32 0, i32* %131)
  ret void
}

declare dso_local i32 @pGetComputerNameExW(i32, i32*, i64*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
