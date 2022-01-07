; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarDecRound.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarDecRound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECIMAL_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarDecRound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarDecRound() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @CLEAR(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @SETDEC(i32 %6, i32 0, i32 0, i32 0, i32 1)
  %8 = call i32 @VarDecRound(i32* %2, i32 3, i32* %3)
  store i32 %8, i32* %1, align 4
  %9 = call i32 @EXPECTDEC(i32 0, i32 0, i32 0, i32 1)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @CLEAR(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @SETDEC(i32 %12, i32 0, i32 0, i32 0, i32 1)
  %14 = call i32 @VarDecRound(i32* %2, i32 0, i32* %3)
  store i32 %14, i32* %1, align 4
  %15 = call i32 @EXPECTDEC(i32 0, i32 0, i32 0, i32 1)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @CLEAR(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @SETDEC(i32 %18, i32 1, i32 0, i32 0, i32 1)
  %20 = call i32 @VarDecRound(i32* %2, i32 0, i32* %3)
  store i32 %20, i32* %1, align 4
  %21 = call i32 @EXPECTDEC(i32 0, i32 0, i32 0, i32 0)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @CLEAR(i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @SETDEC(i32 %24, i32 1, i32 0, i32 0, i32 1)
  %26 = call i32 @VarDecRound(i32* %2, i32 1, i32* %3)
  store i32 %26, i32* %1, align 4
  %27 = call i32 @EXPECTDEC(i32 1, i32 0, i32 0, i32 1)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @CLEAR(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @SETDEC(i32 %30, i32 2, i32 0, i32 0, i32 11)
  %32 = call i32 @VarDecRound(i32* %2, i32 1, i32* %3)
  store i32 %32, i32* %1, align 4
  %33 = call i32 @EXPECTDEC(i32 1, i32 0, i32 0, i32 1)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @CLEAR(i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @SETDEC(i32 %36, i32 2, i32 0, i32 0, i32 15)
  %38 = call i32 @VarDecRound(i32* %2, i32 1, i32* %3)
  store i32 %38, i32* %1, align 4
  %39 = call i32 @EXPECTDEC(i32 1, i32 0, i32 0, i32 2)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @CLEAR(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @SETDEC(i32 %42, i32 6, i32 0, i32 0, i32 550001)
  %44 = call i32 @VarDecRound(i32* %2, i32 1, i32* %3)
  store i32 %44, i32* %1, align 4
  %45 = call i32 @EXPECTDEC(i32 1, i32 0, i32 0, i32 6)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @CLEAR(i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @DECIMAL_NEG, align 4
  %50 = call i32 @SETDEC(i32 %48, i32 0, i32 %49, i32 0, i32 1)
  %51 = call i32 @VarDecRound(i32* %2, i32 0, i32* %3)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* @DECIMAL_NEG, align 4
  %53 = call i32 @EXPECTDEC(i32 0, i32 %52, i32 0, i32 1)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @CLEAR(i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @DECIMAL_NEG, align 4
  %58 = call i32 @SETDEC(i32 %56, i32 1, i32 %57, i32 0, i32 1)
  %59 = call i32 @VarDecRound(i32* %2, i32 0, i32* %3)
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* @DECIMAL_NEG, align 4
  %61 = call i32 @EXPECTDEC(i32 0, i32 %60, i32 0, i32 0)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @CLEAR(i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @DECIMAL_NEG, align 4
  %66 = call i32 @SETDEC(i32 %64, i32 1, i32 %65, i32 0, i32 1)
  %67 = call i32 @VarDecRound(i32* %2, i32 1, i32* %3)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* @DECIMAL_NEG, align 4
  %69 = call i32 @EXPECTDEC(i32 1, i32 %68, i32 0, i32 1)
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @CLEAR(i32 %70)
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @DECIMAL_NEG, align 4
  %74 = call i32 @SETDEC(i32 %72, i32 2, i32 %73, i32 0, i32 11)
  %75 = call i32 @VarDecRound(i32* %2, i32 1, i32* %3)
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* @DECIMAL_NEG, align 4
  %77 = call i32 @EXPECTDEC(i32 1, i32 %76, i32 0, i32 1)
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @CLEAR(i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @DECIMAL_NEG, align 4
  %82 = call i32 @SETDEC(i32 %80, i32 2, i32 %81, i32 0, i32 15)
  %83 = call i32 @VarDecRound(i32* %2, i32 1, i32* %3)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* @DECIMAL_NEG, align 4
  %85 = call i32 @EXPECTDEC(i32 1, i32 %84, i32 0, i32 2)
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @CLEAR(i32 %86)
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @DECIMAL_NEG, align 4
  %90 = call i32 @SETDEC(i32 %88, i32 6, i32 %89, i32 0, i32 550001)
  %91 = call i32 @VarDecRound(i32* %2, i32 1, i32* %3)
  store i32 %91, i32* %1, align 4
  %92 = load i32, i32* @DECIMAL_NEG, align 4
  %93 = call i32 @EXPECTDEC(i32 1, i32 %92, i32 0, i32 6)
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @CLEAR(i32 %94)
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @SETDEC64(i32 %96, i32 0, i32 0, i32 -1, i32 -1, i32 -1)
  %98 = call i32 @VarDecRound(i32* %2, i32 0, i32* %3)
  store i32 %98, i32* %1, align 4
  %99 = call i32 @EXPECTDEC64(i32 0, i32 0, i32 -1, i32 -1, i32 -1)
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @CLEAR(i32 %100)
  %102 = load i32, i32* %2, align 4
  %103 = call i32 @SETDEC64(i32 %102, i32 28, i32 0, i32 -1, i32 -1, i32 -1)
  %104 = call i32 @VarDecRound(i32* %2, i32 0, i32* %3)
  store i32 %104, i32* %1, align 4
  %105 = call i32 @EXPECTDEC64(i32 0, i32 0, i32 0, i32 0, i32 8)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @CLEAR(i32 %106)
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @DECIMAL_NEG, align 4
  %110 = call i32 @SETDEC64(i32 %108, i32 0, i32 %109, i32 -1, i32 -1, i32 -1)
  %111 = call i32 @VarDecRound(i32* %2, i32 0, i32* %3)
  store i32 %111, i32* %1, align 4
  %112 = load i32, i32* @DECIMAL_NEG, align 4
  %113 = call i32 @EXPECTDEC64(i32 0, i32 %112, i32 -1, i32 -1, i32 -1)
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @CLEAR(i32 %114)
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @DECIMAL_NEG, align 4
  %118 = call i32 @SETDEC64(i32 %116, i32 28, i32 %117, i32 -1, i32 -1, i32 -1)
  %119 = call i32 @VarDecRound(i32* %2, i32 0, i32* %3)
  store i32 %119, i32* %1, align 4
  %120 = load i32, i32* @DECIMAL_NEG, align 4
  %121 = call i32 @EXPECTDEC64(i32 0, i32 %120, i32 0, i32 0, i32 8)
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @CLEAR(i32 %122)
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @SETDEC(i32 %124, i32 2, i32 0, i32 0, i32 0)
  %126 = call i32 @VarDecRound(i32* %2, i32 1, i32* %3)
  store i32 %126, i32* %1, align 4
  %127 = call i32 @EXPECTDEC(i32 1, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @SETDEC(i32, i32, i32, i32, i32) #1

declare dso_local i32 @VarDecRound(i32*, i32, i32*) #1

declare dso_local i32 @EXPECTDEC(i32, i32, i32, i32) #1

declare dso_local i32 @SETDEC64(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EXPECTDEC64(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
