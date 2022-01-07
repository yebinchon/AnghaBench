; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_tbar.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_tbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@GCtab = common dso_local global i32 0, align 4
@gclist = common dso_local global i32 0, align 4
@gc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@LJ_GC_BLACK = common dso_local global i32 0, align 4
@XO_ARITHib = common dso_local global i32 0, align 4
@XOg_AND = common dso_local global i32 0, align 4
@marked = common dso_local global i32 0, align 4
@CC_Z = common dso_local global i32 0, align 4
@XO_GROUP3b = common dso_local global i32 0, align 4
@XOg_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @asm_tbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_tbar(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RSET_GPR, align 4
  %13 = call i32 @ra_alloc1(i32* %8, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @RSET_GPR, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @rset_exclude(i32 %15, i32 %16)
  %18 = call i32 @ra_scratch(i32* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @emit_label(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GCtab, align 4
  %25 = load i32, i32* @gclist, align 4
  %26 = call i32 @offsetof(i32 %24, i32 %25)
  %27 = call i32 @emit_movtomro(i32* %21, i32 %22, i32 %23, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gc, i32 0, i32 0), align 4
  %31 = call i32 @emit_setgl(i32* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gc, i32 0, i32 0), align 4
  %35 = call i32 @emit_getgl(i32* %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @LJ_GC_BLACK, align 4
  %38 = xor i32 %37, -1
  %39 = call i32 @emit_i8(i32* %36, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @XO_ARITHib, align 4
  %42 = load i32, i32* @XOg_AND, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @GCtab, align 4
  %45 = load i32, i32* @marked, align 4
  %46 = call i32 @offsetof(i32 %44, i32 %45)
  %47 = call i32 @emit_rmro(i32* %40, i32 %41, i32 %42, i32 %43, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @CC_Z, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @emit_sjcc(i32* %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @LJ_GC_BLACK, align 4
  %54 = call i32 @emit_i8(i32* %52, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @XO_GROUP3b, align 4
  %57 = load i32, i32* @XOg_TEST, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @GCtab, align 4
  %60 = load i32, i32* @marked, align 4
  %61 = call i32 @offsetof(i32 %59, i32 %60)
  %62 = call i32 @emit_rmro(i32* %55, i32 %56, i32 %57, i32 %58, i32 %61)
  ret void
}

declare dso_local i32 @ra_alloc1(i32*, i32, i32) #1

declare dso_local i32 @ra_scratch(i32*, i32) #1

declare dso_local i32 @rset_exclude(i32, i32) #1

declare dso_local i32 @emit_label(i32*) #1

declare dso_local i32 @emit_movtomro(i32*, i32, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @emit_setgl(i32*, i32, i32) #1

declare dso_local i32 @emit_getgl(i32*, i32, i32) #1

declare dso_local i32 @emit_i8(i32*, i32) #1

declare dso_local i32 @emit_rmro(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @emit_sjcc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
