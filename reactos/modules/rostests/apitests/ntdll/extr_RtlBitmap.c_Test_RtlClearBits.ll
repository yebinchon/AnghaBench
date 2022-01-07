; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlBitmap.c_Test_RtlClearBits.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlBitmap.c_Test_RtlClearBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_RtlClearBits() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 8, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32* @AllocateGuarded(i32 %4)
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @RtlInitializeBitMap(i32* %1, i32* %6, i32 19)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @memset(i32* %8, i32 255, i32 %9)
  %11 = call i32 @RtlClearBits(i32* %1, i32 0, i32 0)
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ok_hex(i32 %14, i32 -1)
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ok_hex(i32 %18, i32 -1)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @memset(i32* %20, i32 255, i32 %21)
  %23 = call i32 @RtlClearBits(i32* %1, i32 0, i32 1)
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ok_hex(i32 %26, i32 -2)
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ok_hex(i32 %30, i32 -1)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @memset(i32* %32, i32 255, i32 %33)
  %35 = call i32 @RtlClearBits(i32* %1, i32 21, i32 1)
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ok_hex(i32 %38, i32 -2097153)
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ok_hex(i32 %42, i32 -1)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @memset(i32* %44, i32 255, i32 %45)
  %47 = call i32 @RtlClearBits(i32* %1, i32 7, i32 9)
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ok_hex(i32 %50, i32 -65409)
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ok_hex(i32 %54, i32 -1)
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @memset(i32* %56, i32 255, i32 %57)
  %59 = call i32 @RtlClearBits(i32* %1, i32 13, i32 22)
  %60 = load i32*, i32** %2, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ok_hex(i32 %62, i32 8191)
  %64 = load i32*, i32** %2, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ok_hex(i32 %66, i32 -8)
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @memset(i32* %68, i32 255, i32 %69)
  %71 = call i32 @RtlClearBits(i32* %1, i32 63, i32 1)
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ok_hex(i32 %74, i32 -1)
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ok_hex(i32 %78, i32 2147483647)
  %80 = load i32*, i32** %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @memset(i32* %80, i32 204, i32 %81)
  %83 = call i32 @RtlClearBits(i32* %1, i32 3, i32 6)
  %84 = call i32 @RtlClearBits(i32* %1, i32 11, i32 5)
  %85 = call i32 @RtlClearBits(i32* %1, i32 21, i32 7)
  %86 = call i32 @RtlClearBits(i32* %1, i32 37, i32 4)
  %87 = load i32*, i32** %2, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ok_hex(i32 %89, i32 -1072954364)
  %91 = load i32*, i32** %2, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ok_hex(i32 %93, i32 -858993652)
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @FreeGuarded(i32* %95)
  ret void
}

declare dso_local i32* @AllocateGuarded(i32) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @RtlClearBits(i32*, i32, i32) #1

declare dso_local i32 @ok_hex(i32, i32) #1

declare dso_local i32 @FreeGuarded(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
