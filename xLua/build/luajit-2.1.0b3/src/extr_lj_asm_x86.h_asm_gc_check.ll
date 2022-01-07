; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_gc_check.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_gc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32 }

@lj_ir_callinfo = common dso_local global i32* null, align 8
@IRCALL_lj_gc_step_jit = common dso_local global i64 0, align 8
@RSET_SCRATCH = common dso_local global i32 0, align 4
@CC_NE = common dso_local global i32 0, align 4
@XO_TEST = common dso_local global i32 0, align 4
@RID_RET = common dso_local global i32 0, align 4
@ASMREF_TMP1 = common dso_local global i32 0, align 4
@ASMREF_TMP2 = common dso_local global i32 0, align 4
@CC_B = common dso_local global i32 0, align 4
@XOg_CMP = common dso_local global i32 0, align 4
@REX_GC64 = common dso_local global i32 0, align 4
@gc = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@GG_DISP2G = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@RID_DISPATCH = common dso_local global i32 0, align 4
@XO_LEA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @asm_gc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_gc_check(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load i32*, i32** @lj_ir_callinfo, align 8
  %8 = load i64, i64* @IRCALL_lj_gc_step_jit, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32* %9, i32** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = load i32, i32* @RSET_SCRATCH, align 4
  %12 = call i32 @ra_evictset(%struct.TYPE_17__* %10, i32 %11)
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = call i32 @emit_label(%struct.TYPE_17__* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = load i32, i32* @CC_NE, align 4
  %17 = call i32 @asm_guardcc(%struct.TYPE_17__* %15, i32 %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = load i32, i32* @XO_TEST, align 4
  %20 = load i32, i32* @RID_RET, align 4
  %21 = load i32, i32* @RID_RET, align 4
  %22 = call i32 @emit_rr(%struct.TYPE_17__* %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @ASMREF_TMP1, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @ASMREF_TMP2, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %30 = call i32 @asm_gencall(%struct.TYPE_17__* %27, i32* %28, i32* %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %32 = load i32, i32* @ASMREF_TMP1, align 4
  %33 = call i32 @ra_releasetmp(%struct.TYPE_17__* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @J2G(i32 %38)
  %40 = call i32 @emit_loada(%struct.TYPE_17__* %34, i32 %35, i32 %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %43 = load i32, i32* @ASMREF_TMP2, align 4
  %44 = call i32 @ra_releasetmp(%struct.TYPE_17__* %42, i32 %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @emit_loadi(%struct.TYPE_17__* %41, i32 %44, i64 %47)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %50 = load i32, i32* @CC_B, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @emit_sjcc(%struct.TYPE_17__* %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %54 = load i32, i32* @XOg_CMP, align 4
  %55 = call i32 @XO_ARITH(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @REX_GC64, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gc, i32 0, i32 1), align 4
  %60 = call i32 @emit_opgl(%struct.TYPE_17__* %53, i32 %55, i32 %58, i32 %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gc, i32 0, i32 0), align 4
  %64 = call i32 @emit_getgl(%struct.TYPE_17__* %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %68 = call i32 @checkmclim(%struct.TYPE_17__* %67)
  ret void
}

declare dso_local i32 @ra_evictset(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @emit_label(%struct.TYPE_17__*) #1

declare dso_local i32 @asm_guardcc(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @emit_rr(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @asm_gencall(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @ra_releasetmp(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @emit_loada(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @J2G(i32) #1

declare dso_local i32 @emit_loadi(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i32 @emit_sjcc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @emit_opgl(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @XO_ARITH(i32) #1

declare dso_local i32 @emit_getgl(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @checkmclim(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
