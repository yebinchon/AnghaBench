; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarUI8FromI2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarUI8FromI2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHORT = common dso_local global i32 0, align 4
@VarUI8FromI2 = common dso_local global i32 0, align 4
@EXPECT_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarUI8FromI2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarUI8FromI2() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SHORT, align 4
  %3 = call i32 @CONVVARS(i32 %2)
  store i32 -32768, i32* %1, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 32768
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load i32, i32* @VarUI8FromI2, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @CONVERT(i32 %8, i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, i32* @EXPECT_OVERFLOW, align 4
  br label %18

15:                                               ; preds = %7
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @EXPECTI8(i32 %16)
  br label %18

18:                                               ; preds = %15, %13
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @CONVVARS(i32) #1

declare dso_local i32 @CONVERT(i32, i32) #1

declare dso_local i32 @EXPECTI8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
