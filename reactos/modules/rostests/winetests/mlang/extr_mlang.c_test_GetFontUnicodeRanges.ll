; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_GetFontUnicodeRanges.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_GetFontUnicodeRanges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"expected E_FAIL, got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"expected S_OK, got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"expected count > 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_GetFontUnicodeRanges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetFontUnicodeRanges(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %10 = call i32* @CreateCompatibleDC(i32 0)
  store i32* %10, i32** %8, align 8
  %11 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 4)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @lstrcpyA(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @CreateFontIndirectA(%struct.TYPE_4__* %7)
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @SelectObject(i32* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %4, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @IMLangFontLink2_GetFontUnicodeRanges(i32* %19, i32* null, i32* %4, i32* null)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @E_FAIL, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %3, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @IMLangFontLink2_GetFontUnicodeRanges(i32* %27, i32* %28, i32* null, i32* null)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @E_INVALIDARG, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %3, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  store i32 0, i32* %4, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @IMLangFontLink2_GetFontUnicodeRanges(i32* %36, i32* %37, i32* %4, i32* null)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %3, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32* @HeapAlloc(i32 %47, i32 0, i32 %51)
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %2, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @IMLangFontLink2_GetFontUnicodeRanges(i32* %53, i32* %54, i32* %4, i32* %55)
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %3, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %4, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i64 @IMLangFontLink2_GetFontUnicodeRanges(i32* %65, i32* %66, i32* %4, i32* %67)
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %3, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = call i32 (...) @GetProcessHeap()
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @HeapFree(i32 %75, i32 0, i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @SelectObject(i32* %78, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @DeleteObject(i32 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @DeleteDC(i32* %83)
  ret void
}

declare dso_local i32* @CreateCompatibleDC(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @lstrcpyA(i32, i8*) #1

declare dso_local i32 @CreateFontIndirectA(%struct.TYPE_4__*) #1

declare dso_local i32 @SelectObject(i32*, i32) #1

declare dso_local i64 @IMLangFontLink2_GetFontUnicodeRanges(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DeleteDC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
