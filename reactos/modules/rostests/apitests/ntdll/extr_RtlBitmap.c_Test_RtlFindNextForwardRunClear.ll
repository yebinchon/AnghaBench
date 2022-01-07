; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlBitmap.c_Test_RtlFindNextForwardRunClear.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlBitmap.c_Test_RtlFindNextForwardRunClear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_RtlFindNextForwardRunClear() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32* @AllocateGuarded(i32 8)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 -101680974, i32* %6, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 1060126512, i32* %8, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @RtlInitializeBitMap(i32* %1, i32* %9, i32 0)
  %11 = call i32 @RtlFindNextForwardRunClear(i32* %1, i32 0, i32* %3)
  %12 = call i32 @ok_int(i32 %11, i32 0)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ok_int(i32 %13, i32 0)
  %15 = call i32 @RtlFindNextForwardRunClear(i32* %1, i32 1, i32* %3)
  %16 = call i32 @ok_int(i32 %15, i32 0)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ok_int(i32 %17, i32 1)
  store i32 -1, i32* %3, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @RtlInitializeBitMap(i32* %1, i32* %19, i32 8)
  %21 = call i32 @RtlFindNextForwardRunClear(i32* %1, i32 0, i32* %3)
  %22 = call i32 @ok_int(i32 %21, i32 1)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ok_int(i32 %23, i32 0)
  %25 = call i32 @RtlFindNextForwardRunClear(i32* %1, i32 1, i32* %3)
  %26 = call i32 @ok_int(i32 %25, i32 2)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ok_int(i32 %27, i32 2)
  %29 = call i32 @RtlFindNextForwardRunClear(i32* %1, i32 7, i32* %3)
  %30 = call i32 @ok_int(i32 %29, i32 0)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ok_int(i32 %31, i32 8)
  %33 = call i32 @RtlFindNextForwardRunClear(i32* %1, i32 17, i32* %3)
  %34 = call i32 @ok_int(i32 %33, i32 0)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ok_int(i32 %35, i32 17)
  %37 = call i32 @RtlFindNextForwardRunClear(i32* %1, i32 39, i32* %3)
  %38 = call i32 @ok_int(i32 %37, i32 0)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ok_int(i32 %39, i32 39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @FreeGuarded(i32* %41)
  ret void
}

declare dso_local i32* @AllocateGuarded(i32) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i32*, i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @RtlFindNextForwardRunClear(i32*, i32, i32*) #1

declare dso_local i32 @FreeGuarded(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
