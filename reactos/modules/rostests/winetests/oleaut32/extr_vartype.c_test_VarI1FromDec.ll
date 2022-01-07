; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarI1FromDec.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarI1FromDec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECIMAL = common dso_local global i32 0, align 4
@VarI1FromDec = common dso_local global i32 0, align 4
@EXPECT_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarI1FromDec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarI1FromDec() #0 {
  %1 = load i32, i32* @DECIMAL, align 4
  %2 = call i32 @CONVVARS(i32 %1)
  %3 = load i32, i32* @VarI1FromDec, align 4
  %4 = call i32 @CONVERT_BADDEC(i32 %3)
  %5 = load i32, i32* @VarI1FromDec, align 4
  %6 = call i32 @CONVERT_DEC(i32 %5, i32 0, i32 128, i32 0, i32 129)
  %7 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %8 = load i32, i32* @VarI1FromDec, align 4
  %9 = call i32 @CONVERT_DEC(i32 %8, i32 0, i32 128, i32 0, i32 128)
  %10 = call i32 @EXPECT(i32 -128)
  %11 = load i32, i32* @VarI1FromDec, align 4
  %12 = call i32 @CONVERT_DEC(i32 %11, i32 0, i32 128, i32 0, i32 1)
  %13 = call i32 @EXPECT(i32 -1)
  %14 = load i32, i32* @VarI1FromDec, align 4
  %15 = call i32 @CONVERT_DEC(i32 %14, i32 0, i32 0, i32 0, i32 0)
  %16 = call i32 @EXPECT(i32 0)
  %17 = load i32, i32* @VarI1FromDec, align 4
  %18 = call i32 @CONVERT_DEC(i32 %17, i32 0, i32 0, i32 0, i32 1)
  %19 = call i32 @EXPECT(i32 1)
  %20 = load i32, i32* @VarI1FromDec, align 4
  %21 = call i32 @CONVERT_DEC(i32 %20, i32 0, i32 0, i32 0, i32 127)
  %22 = call i32 @EXPECT(i32 127)
  %23 = load i32, i32* @VarI1FromDec, align 4
  %24 = call i32 @CONVERT_DEC(i32 %23, i32 0, i32 0, i32 0, i32 128)
  %25 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %26 = load i32, i32* @VarI1FromDec, align 4
  %27 = call i32 @CONVERT_DEC(i32 %26, i32 2, i32 128, i32 0, i32 12800)
  %28 = call i32 @EXPECT(i32 -128)
  %29 = load i32, i32* @VarI1FromDec, align 4
  %30 = call i32 @CONVERT_DEC(i32 %29, i32 2, i32 0, i32 0, i32 12700)
  %31 = call i32 @EXPECT(i32 127)
  ret void
}

declare dso_local i32 @CONVVARS(i32) #1

declare dso_local i32 @CONVERT_BADDEC(i32) #1

declare dso_local i32 @CONVERT_DEC(i32, i32, i32, i32, i32) #1

declare dso_local i32 @EXPECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
