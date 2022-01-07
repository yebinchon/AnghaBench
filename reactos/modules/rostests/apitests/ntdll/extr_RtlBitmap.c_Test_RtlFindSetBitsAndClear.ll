; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlBitmap.c_Test_RtlFindSetBitsAndClear.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlBitmap.c_Test_RtlFindSetBitsAndClear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_RtlFindSetBitsAndClear() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32* @AllocateGuarded(i32 8)
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 -101680974, i32* %5, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 1060126512, i32* %7, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @RtlInitializeBitMap(i32* %1, i32* %8, i32 0)
  %10 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 0, i32 0)
  %11 = call i32 @ok_int(i32 %10, i32 0)
  %12 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 0, i32 3)
  %13 = call i32 @ok_int(i32 %12, i32 0)
  %14 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 1, i32 0)
  %15 = call i32 @ok_int(i32 %14, i32 -1)
  %16 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 1, i32 1)
  %17 = call i32 @ok_int(i32 %16, i32 -1)
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ok_hex(i32 %20, i32 -101680974)
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 -101680974, i32* %23, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @RtlInitializeBitMap(i32* %1, i32* %24, i32 8)
  %26 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 1, i32 0)
  %27 = call i32 @ok_int(i32 %26, i32 1)
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ok_hex(i32 %30, i32 -101680976)
  %32 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 1, i32 1)
  %33 = call i32 @ok_int(i32 %32, i32 4)
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ok_hex(i32 %36, i32 -101680992)
  %38 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 1, i32 2)
  %39 = call i32 @ok_int(i32 %38, i32 5)
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ok_hex(i32 %42, i32 -101681024)
  %44 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 2, i32 0)
  %45 = call i32 @ok_int(i32 %44, i32 -1)
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ok_hex(i32 %48, i32 -101681024)
  %50 = load i32*, i32** %2, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 -101680974, i32* %51, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @RtlInitializeBitMap(i32* %1, i32* %52, i32 32)
  %54 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 4, i32 0)
  %55 = call i32 @ok_int(i32 %54, i32 11)
  %56 = load i32*, i32** %2, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ok_hex(i32 %58, i32 -101711694)
  %60 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 5, i32 0)
  %61 = call i32 @ok_int(i32 %60, i32 20)
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ok_hex(i32 %64, i32 -134217550)
  %66 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 4, i32 11)
  %67 = call i32 @ok_int(i32 %66, i32 27)
  %68 = load i32*, i32** %2, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ok_hex(i32 %70, i32 -2147483470)
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 -101680974, i32* %73, align 4
  %74 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 4, i32 12)
  %75 = call i32 @ok_int(i32 %74, i32 20)
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ok_hex(i32 %78, i32 -117409614)
  %80 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 2, i32 11)
  %81 = call i32 @ok_int(i32 %80, i32 11)
  %82 = load i32*, i32** %2, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ok_hex(i32 %84, i32 -117415758)
  %86 = call i32 @RtlFindSetBitsAndClear(i32* %1, i32 2, i32 12)
  %87 = call i32 @ok_int(i32 %86, i32 13)
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ok_hex(i32 %90, i32 -117440334)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @FreeGuarded(i32* %92)
  ret void
}

declare dso_local i32* @AllocateGuarded(i32) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i32*, i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @RtlFindSetBitsAndClear(i32*, i32, i32) #1

declare dso_local i32 @ok_hex(i32, i32) #1

declare dso_local i32 @FreeGuarded(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
