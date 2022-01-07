; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_uitools.c_test_FillRect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_uitools.c_test_FillRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"CreateDC rets %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"CreateCompatibleDC rets %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"CreateBitmap returns %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SelectObject returned NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"GetPixel returned %08x, expected 0xffffff\0A\00", align 1
@BLACK_BRUSH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"GetPixel returned %08x, expected 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FillRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FillRect() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [64 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %10 = call i32 @memset(i32* %9, i32 255, i32 256)
  %11 = call i32* @GetDC(i32 0)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32* @CreateCompatibleDC(i32* %17)
  store i32* %18, i32** %2, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  %24 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0
  %25 = call i32* @CreateBitmap(i32 32, i32 32, i32 1, i32 1, i32* %24)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @SelectObject(i32* %31, i32* %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @GetPixel(i32* %38, i32 0, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 16777215
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @BLACK_BRUSH, align 4
  %47 = call i32* @GetStockObject(i32 %46)
  %48 = call i32* @SelectObject(i32* %45, i32* %47)
  store i32* %48, i32** %7, align 8
  %49 = call i32 @SetRect(i32* %8, i32 0, i32 0, i32 5, i32 5)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @FillRect(i32* %50, i32* %8, i32 0)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32* @SelectObject(i32* %52, i32* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @GetPixel(i32* %55, i32 0, i32 0)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32* @SelectObject(i32* %62, i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @DeleteObject(i32* %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @DeleteDC(i32* %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @ReleaseDC(i32 0, i32* %69)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i32* @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32* @SelectObject(i32*, i32*) #1

declare dso_local i32 @GetPixel(i32*, i32, i32) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @FillRect(i32*, i32*, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @DeleteDC(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
