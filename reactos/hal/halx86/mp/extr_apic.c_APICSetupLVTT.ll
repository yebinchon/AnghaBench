; ModuleID = '/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_apic.c_APICSetupLVTT.c'
source_filename = "/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_apic.c_APICSetupLVTT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APIC_VER = common dso_local global i32 0, align 4
@APIC_TIMER_BASE_DIV = common dso_local global i32 0, align 4
@APIC_LVT_PERIODIC = common dso_local global i32 0, align 4
@LOCAL_TIMER_VECTOR = common dso_local global i32 0, align 4
@APIC_LVTT = common dso_local global i32 0, align 4
@APIC_TDCR = common dso_local global i32 0, align 4
@APIC_TDCR_1 = common dso_local global i32 0, align 4
@APIC_TDCR_16 = common dso_local global i32 0, align 4
@APIC_ICRT = common dso_local global i32 0, align 4
@APIC_DIVISOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @APICSetupLVTT(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @APIC_VER, align 4
  %6 = call i32 @APICRead(i32 %5)
  %7 = call i32 @GET_APIC_VERSION(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @APIC_INTEGRATED(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @APIC_TIMER_BASE_DIV, align 4
  %13 = call i32 @SET_APIC_TIMER_BASE(i32 %12)
  %14 = load i32, i32* @APIC_LVT_PERIODIC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @LOCAL_TIMER_VECTOR, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %4, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @APIC_LVT_PERIODIC, align 4
  %20 = load i32, i32* @LOCAL_TIMER_VECTOR, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i32, i32* @APIC_LVTT, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @APICWrite(i32 %23, i32 %24)
  %26 = load i32, i32* @APIC_TDCR, align 4
  %27 = call i32 @APICRead(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @APIC_TDCR_1, align 4
  %29 = load i32, i32* @APIC_TIMER_BASE_DIV, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @APIC_TDCR_16, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @APIC_TDCR, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @APICWrite(i32 %37, i32 %38)
  %40 = load i32, i32* @APIC_ICRT, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @APIC_DIVISOR, align 4
  %43 = sdiv i32 %41, %42
  %44 = call i32 @APICWrite(i32 %40, i32 %43)
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @GET_APIC_VERSION(i32) #1

declare dso_local i32 @APICRead(i32) #1

declare dso_local i32 @APIC_INTEGRATED(i32) #1

declare dso_local i32 @SET_APIC_TIMER_BASE(i32) #1

declare dso_local i32 @APICWrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
