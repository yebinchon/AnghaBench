; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_test_GetFontUnicodeRanges.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_test_GetFontUnicodeRanges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"GetFontUnicodeRanges succeeded unexpectedly\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"GetFontUnicodeRanges failed unexpectedly\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"GetFontUnicodeRanges failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"found %u ranges\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetFontUnicodeRanges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetFontUnicodeRanges() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = call i32 @memset(%struct.TYPE_10__* %1, i32 0, i32 4)
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @lstrcpyA(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @create_font(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %1)
  store i32 %12, i32* %3, align 4
  %13 = call i32* @GetDC(i32 0)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @SelectObject(i32* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = call i64 @pGetFontUnicodeRanges(i32* null, %struct.TYPE_11__* null)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = call i32 @ok(i64 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @pGetFontUnicodeRanges(i32* %24, %struct.TYPE_11__* null)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ok(i64 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i64, i64* %5, align 8
  %30 = call %struct.TYPE_11__* @HeapAlloc(i32 %28, i32 0, i64 %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %6, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = call i64 @pGetFontUnicodeRanges(i32* %31, %struct.TYPE_11__* %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @ok(i64 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %38)
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = call i32 @HeapFree(i32 %40, i32 0, %struct.TYPE_11__* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @SelectObject(i32* %43, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @DeleteObject(i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @ReleaseDC(i32* null, i32* %48)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @lstrcpyA(i32, i8*) #1

declare dso_local i32 @create_font(i8*, %struct.TYPE_10__*) #1

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @SelectObject(i32*, i32) #1

declare dso_local i64 @pGetFontUnicodeRanges(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ok(i64, i8*) #1

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @trace(i8*, i64, ...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
