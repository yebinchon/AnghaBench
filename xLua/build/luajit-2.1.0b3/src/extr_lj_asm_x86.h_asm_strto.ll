; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_strto.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_strto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@lj_ir_callinfo = common dso_local global i32* null, align 8
@IRCALL_lj_strscan_num = common dso_local global i64 0, align 8
@RSET_SCRATCH = common dso_local global i32 0, align 4
@RSET_FPR = common dso_local global i32 0, align 4
@CC_E = common dso_local global i32 0, align 4
@XO_TEST = common dso_local global i32 0, align 4
@RID_RET = common dso_local global i32 0, align 4
@ASMREF_TMP1 = common dso_local global i32 0, align 4
@XO_LEA = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @asm_strto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_strto(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i32*, i32** @lj_ir_callinfo, align 8
  %9 = load i64, i64* @IRCALL_lj_strscan_num, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @RSET_SCRATCH, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RSET_FPR, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @RSET_FPR, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ra_hasreg(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rset_set(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %17, %2
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ra_evictset(i32* %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @CC_E, align 4
  %35 = call i32 @asm_guardcc(i32* %33, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @XO_TEST, align 4
  %38 = load i32, i32* @RID_RET, align 4
  %39 = load i32, i32* @RID_RET, align 4
  %40 = call i32 @emit_rr(i32* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @ASMREF_TMP1, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %50 = call i32 @asm_gencall(i32* %47, i32* %48, i32* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @XO_LEA, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @ASMREF_TMP1, align 4
  %55 = call i32 @ra_releasetmp(i32* %53, i32 %54)
  %56 = load i32, i32* @REX_64, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RID_ESP, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sps_scale(i32 %61)
  %63 = call i32 @emit_rmro(i32* %51, i32 %52, i32 %57, i32 %58, i32 %62)
  ret void
}

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @rset_set(i32, i32) #1

declare dso_local i32 @ra_evictset(i32*, i32) #1

declare dso_local i32 @asm_guardcc(i32*, i32) #1

declare dso_local i32 @emit_rr(i32*, i32, i32, i32) #1

declare dso_local i32 @asm_gencall(i32*, i32*, i32*) #1

declare dso_local i32 @emit_rmro(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ra_releasetmp(i32*, i32) #1

declare dso_local i32 @sps_scale(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
