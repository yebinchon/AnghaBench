; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_tointg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_tointg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSET_FPR = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@CC_P = common dso_local global i32 0, align 4
@CC_NE = common dso_local global i32 0, align 4
@XO_UCOMISD = common dso_local global i32 0, align 4
@XO_CVTSI2SD = common dso_local global i32 0, align 4
@XO_XORPS = common dso_local global i32 0, align 4
@XO_CVTTSD2SI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @asm_tointg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_tointg(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @RSET_FPR, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @rset_exclude(i32 %10, i32 %11)
  %13 = call i32 @ra_scratch(i32* %9, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @RSET_GPR, align 4
  %17 = call i32 @ra_dest(i32* %14, i32* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @CC_P, align 4
  %20 = call i32 @asm_guardcc(i32* %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @CC_NE, align 4
  %23 = call i32 @asm_guardcc(i32* %21, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @XO_UCOMISD, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @emit_rr(i32* %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @XO_CVTSI2SD, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @emit_rr(i32* %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @XO_XORPS, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @emit_rr(i32* %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @XO_CVTTSD2SI, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @emit_rr(i32* %39, i32 %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @ra_scratch(i32*, i32) #1

declare dso_local i32 @rset_exclude(i32, i32) #1

declare dso_local i32 @ra_dest(i32*, i32*, i32) #1

declare dso_local i32 @asm_guardcc(i32*, i32) #1

declare dso_local i32 @emit_rr(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
