; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlBitmap.c_Test_RtlSetAllBits.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlBitmap.c_Test_RtlSetAllBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_RtlSetAllBits() #0 {
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
  %10 = call i32 @memset(i32* %8, i32 204, i32 %9)
  %11 = call i32 @RtlSetAllBits(i32* %1)
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ok_hex(i32 %14, i32 -1)
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ok_hex(i32 %18, i32 -858993460)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @RtlInitializeBitMap(i32* %1, i32* %20, i32 0)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @memset(i32* %22, i32 204, i32 %23)
  %25 = call i32 @RtlSetAllBits(i32* %1)
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ok_hex(i32 %28, i32 -858993460)
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ok_hex(i32 %32, i32 -858993460)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @RtlInitializeBitMap(i32* %1, i32* %34, i32 64)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @memset(i32* %36, i32 204, i32 %37)
  %39 = call i32 @RtlSetAllBits(i32* %1)
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ok_hex(i32 %42, i32 -1)
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ok_hex(i32 %46, i32 -1)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @FreeGuarded(i32* %48)
  ret void
}

declare dso_local i32* @AllocateGuarded(i32) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @RtlSetAllBits(i32*) #1

declare dso_local i32 @ok_hex(i32, i32) #1

declare dso_local i32 @FreeGuarded(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
