; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_GetComputerNameExA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_GetComputerNameExA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetComputerNameExA.MAX_COMP_NAME = internal constant i32 32767, align 4
@ComputerNameDnsDomain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Expected 0, got %d\0A\00", align 1
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Expected ERROR_MORE_DATA, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Win2k doesn't set the size\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"HeapAlloc failed with error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"GetComputerNameExA(ComputerNameDnsDomain) failed with error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"domain name is \22%s\22\0A\00", align 1
@ComputerNameDnsFullyQualified = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [72 x i8] c"GetComputerNameExA(ComputerNameDnsFullyQualified) failed with error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"fully qualified hostname is \22%s\22\0A\00", align 1
@ComputerNameDnsHostname = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [66 x i8] c"GetComputerNameExA(ComputerNameDnsHostname) failed with error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"hostname is \22%s\22\0A\00", align 1
@ComputerNameNetBIOS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [62 x i8] c"GetComputerNameExA(ComputerNameNetBIOS) failed with error %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"NetBIOS name is \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetComputerNameExA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetComputerNameExA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @ComputerNameDnsDomain, align 4
  %6 = call i32 @pGetComputerNameExA(i32 %5, i32* inttoptr (i64 3735928559 to i32*), i32* %1)
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @GetLastError()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ERROR_MORE_DATA, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @win_skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 32767, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %0
  %24 = call i32 (...) @GetProcessHeap()
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32* @HeapAlloc(i32 %24, i32 0, i32 %28)
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ComputerNameDnsDomain, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @pGetComputerNameExA(i32 %35, i32* %36, i32* %1)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %41)
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @HeapFree(i32 %43, i32 0, i32* %44)
  store i32 0, i32* %1, align 4
  %46 = load i32, i32* @ComputerNameDnsFullyQualified, align 4
  %47 = call i32 @pGetComputerNameExA(i32 %46, i32* inttoptr (i64 3735928559 to i32*), i32* %1)
  store i32 %47, i32* %2, align 4
  %48 = call i32 (...) @GetLastError()
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @ERROR_MORE_DATA, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %1, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %23
  store i32 32767, i32* %1, align 4
  br label %63

63:                                               ; preds = %62, %23
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32* @HeapAlloc(i32 %64, i32 0, i32 %68)
  store i32* %69, i32** %3, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = icmp ne i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 (...) @GetLastError()
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ComputerNameDnsFullyQualified, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @pGetComputerNameExA(i32 %75, i32* %76, i32* %1)
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %2, align 4
  %79 = call i32 (...) @GetLastError()
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32* %81)
  %83 = call i32 (...) @GetProcessHeap()
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @HeapFree(i32 %83, i32 0, i32* %84)
  store i32 0, i32* %1, align 4
  %86 = load i32, i32* @ComputerNameDnsHostname, align 4
  %87 = call i32 @pGetComputerNameExA(i32 %86, i32* inttoptr (i64 3735928559 to i32*), i32* %1)
  store i32 %87, i32* %2, align 4
  %88 = call i32 (...) @GetLastError()
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %2, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @ERROR_MORE_DATA, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %1, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %63
  store i32 32767, i32* %1, align 4
  br label %103

103:                                              ; preds = %102, %63
  %104 = call i32 (...) @GetProcessHeap()
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i32* @HeapAlloc(i32 %104, i32 0, i32 %108)
  store i32* %109, i32** %3, align 8
  %110 = load i32*, i32** %3, align 8
  %111 = icmp ne i32* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 (...) @GetLastError()
  %114 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @ComputerNameDnsHostname, align 4
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @pGetComputerNameExA(i32 %115, i32* %116, i32* %1)
  store i32 %117, i32* %2, align 4
  %118 = load i32, i32* %2, align 4
  %119 = call i32 (...) @GetLastError()
  %120 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32* %121)
  %123 = call i32 (...) @GetProcessHeap()
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @HeapFree(i32 %123, i32 0, i32* %124)
  store i32 0, i32* %1, align 4
  %126 = load i32, i32* @ComputerNameNetBIOS, align 4
  %127 = call i32 @pGetComputerNameExA(i32 %126, i32* inttoptr (i64 3735928559 to i32*), i32* %1)
  store i32 %127, i32* %2, align 4
  %128 = call i32 (...) @GetLastError()
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %2, align 4
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %2, align 4
  %133 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @ERROR_MORE_DATA, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %1, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %103
  store i32 32767, i32* %1, align 4
  br label %143

143:                                              ; preds = %142, %103
  %144 = call i32 (...) @GetProcessHeap()
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = call i32* @HeapAlloc(i32 %144, i32 0, i32 %148)
  store i32* %149, i32** %3, align 8
  %150 = load i32*, i32** %3, align 8
  %151 = icmp ne i32* %150, null
  %152 = zext i1 %151 to i32
  %153 = call i32 (...) @GetLastError()
  %154 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @ComputerNameNetBIOS, align 4
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @pGetComputerNameExA(i32 %155, i32* %156, i32* %1)
  store i32 %157, i32* %2, align 4
  %158 = load i32, i32* %2, align 4
  %159 = call i32 (...) @GetLastError()
  %160 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 %159)
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32* %161)
  %163 = call i32 (...) @GetProcessHeap()
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @HeapFree(i32 %163, i32 0, i32* %164)
  ret void
}

declare dso_local i32 @pGetComputerNameExA(i32, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @trace(i8*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
