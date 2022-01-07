; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_load_lightud64.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_load_lightud64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSET_GPR = common dso_local global i32 0, align 4
@CC_NE = common dso_local global i32 0, align 4
@XO_ARITHi8 = common dso_local global i32 0, align 4
@XOg_CMP = common dso_local global i32 0, align 4
@XOg_SAR = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@XO_MOV = common dso_local global i32 0, align 4
@RID_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @asm_load_lightud64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm_load_lightud64(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = call i64 @ra_used(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %13, %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @RSET_GPR, align 4
  %20 = call i32 @ra_dest(i32* %17, i32* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @RSET_GPR, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @rset_exclude(i32 %25, i32 %26)
  %28 = call i32 @ra_scratch(i32* %24, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @CC_NE, align 4
  %31 = call i32 @asm_guardcc(i32* %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @emit_i8(i32* %32, i32 -2)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @XO_ARITHi8, align 4
  %36 = load i32, i32* @XOg_CMP, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @emit_rr(i32* %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @XOg_SAR, align 4
  %41 = load i32, i32* @REX_64, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @emit_shifti(i32* %39, i32 %42, i32 %43, i32 47)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @XO_MOV, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @REX_64, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @emit_rr(i32* %45, i32 %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %23, %16
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %13
  %55 = load i32, i32* @RID_NONE, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @ra_used(i32*) #1

declare dso_local i32 @ra_dest(i32*, i32*, i32) #1

declare dso_local i32 @ra_scratch(i32*, i32) #1

declare dso_local i32 @rset_exclude(i32, i32) #1

declare dso_local i32 @asm_guardcc(i32*, i32) #1

declare dso_local i32 @emit_i8(i32*, i32) #1

declare dso_local i32 @emit_rr(i32*, i32, i32, i32) #1

declare dso_local i32 @emit_shifti(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
