; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlBitmap.c_Test_RtlFindClearBits.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlBitmap.c_Test_RtlFindClearBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_RtlFindClearBits() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32* @AllocateGuarded(i32 8)
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 101680973, i32* %5, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 1060126512, i32* %7, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @RtlInitializeBitMap(i32* %1, i32* %8, i32 0)
  %10 = call i32 @RtlFindClearBits(i32* %1, i32 0, i32 0)
  %11 = call i32 @ok_int(i32 %10, i32 0)
  %12 = call i32 @RtlFindClearBits(i32* %1, i32 0, i32 3)
  %13 = call i32 @ok_int(i32 %12, i32 0)
  %14 = call i32 @RtlFindClearBits(i32* %1, i32 1, i32 0)
  %15 = call i32 @ok_int(i32 %14, i32 -1)
  %16 = call i32 @RtlFindClearBits(i32* %1, i32 1, i32 1)
  %17 = call i32 @ok_int(i32 %16, i32 -1)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @RtlInitializeBitMap(i32* %1, i32* %18, i32 8)
  %20 = call i32 @RtlFindClearBits(i32* %1, i32 0, i32 3)
  %21 = call i32 @ok_int(i32 %20, i32 0)
  %22 = call i32 @RtlFindClearBits(i32* %1, i32 1, i32 0)
  %23 = call i32 @ok_int(i32 %22, i32 1)
  %24 = call i32 @RtlFindClearBits(i32* %1, i32 1, i32 1)
  %25 = call i32 @ok_int(i32 %24, i32 1)
  %26 = call i32 @RtlFindClearBits(i32* %1, i32 1, i32 2)
  %27 = call i32 @ok_int(i32 %26, i32 4)
  %28 = call i32 @RtlFindClearBits(i32* %1, i32 2, i32 0)
  %29 = call i32 @ok_int(i32 %28, i32 4)
  %30 = call i32 @RtlFindClearBits(i32* %1, i32 3, i32 0)
  %31 = call i32 @ok_int(i32 %30, i32 -1)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @RtlInitializeBitMap(i32* %1, i32* %32, i32 32)
  %34 = call i32 @RtlFindClearBits(i32* %1, i32 0, i32 3)
  %35 = call i32 @ok_int(i32 %34, i32 0)
  %36 = call i32 @RtlFindClearBits(i32* %1, i32 0, i32 21)
  %37 = call i32 @ok_int(i32 %36, i32 16)
  %38 = call i32 @RtlFindClearBits(i32* %1, i32 0, i32 12)
  %39 = call i32 @ok_int(i32 %38, i32 8)
  %40 = call i32 @RtlFindClearBits(i32* %1, i32 0, i32 31)
  %41 = call i32 @ok_int(i32 %40, i32 24)
  %42 = call i32 @RtlFindClearBits(i32* %1, i32 0, i32 32)
  %43 = call i32 @ok_int(i32 %42, i32 0)
  %44 = call i32 @RtlFindClearBits(i32* %1, i32 0, i32 39)
  %45 = call i32 @ok_int(i32 %44, i32 0)
  %46 = call i32 @RtlFindClearBits(i32* %1, i32 4, i32 0)
  %47 = call i32 @ok_int(i32 %46, i32 11)
  %48 = call i32 @RtlFindClearBits(i32* %1, i32 5, i32 0)
  %49 = call i32 @ok_int(i32 %48, i32 20)
  %50 = call i32 @RtlFindClearBits(i32* %1, i32 4, i32 11)
  %51 = call i32 @ok_int(i32 %50, i32 11)
  %52 = call i32 @RtlFindClearBits(i32* %1, i32 4, i32 12)
  %53 = call i32 @ok_int(i32 %52, i32 20)
  %54 = call i32 @RtlFindClearBits(i32* %1, i32 2, i32 11)
  %55 = call i32 @ok_int(i32 %54, i32 11)
  %56 = call i32 @RtlFindClearBits(i32* %1, i32 2, i32 12)
  %57 = call i32 @ok_int(i32 %56, i32 12)
  %58 = call i32 @RtlFindClearBits(i32* %1, i32 1, i32 32)
  %59 = call i32 @ok_int(i32 %58, i32 1)
  %60 = call i32 @RtlFindClearBits(i32* %1, i32 4, i32 32)
  %61 = call i32 @ok_int(i32 %60, i32 11)
  %62 = call i32 @RtlFindClearBits(i32* %1, i32 5, i32 32)
  %63 = call i32 @ok_int(i32 %62, i32 20)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @RtlInitializeBitMap(i32* %1, i32* %64, i32 64)
  %66 = call i32 @RtlFindClearBits(i32* %1, i32 5, i32 64)
  %67 = call i32 @ok_int(i32 %66, i32 20)
  %68 = call i32 @RtlFindClearBits(i32* %1, i32 9, i32 28)
  %69 = call i32 @ok_int(i32 %68, i32 27)
  %70 = call i32 @RtlFindClearBits(i32* %1, i32 10, i32 0)
  %71 = call i32 @ok_int(i32 %70, i32 -1)
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 -13615312, i32* %73, align 4
  %74 = call i32 @RtlFindClearBits(i32* %1, i32 1, i32 56)
  %75 = call i32 @ok_int(i32 %74, i32 1)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @FreeGuarded(i32* %76)
  ret void
}

declare dso_local i32* @AllocateGuarded(i32) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i32*, i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @RtlFindClearBits(i32*, i32, i32) #1

declare dso_local i32 @FreeGuarded(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
