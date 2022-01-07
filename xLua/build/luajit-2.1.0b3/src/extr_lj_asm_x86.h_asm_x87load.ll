; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_x87load.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_x87load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@IR_KNUM = common dso_local global i64 0, align 8
@XI_FLDZ = common dso_local global i32 0, align 4
@XI_FLD1 = common dso_local global i32 0, align 4
@XO_FLDq = common dso_local global i32 0, align 4
@XOg_FLDq = common dso_local global i32 0, align 4
@IR_CONV = common dso_local global i64 0, align 8
@IRCONV_NUM_INT = common dso_local global i64 0, align 8
@XO_FILDd = common dso_local global i32 0, align 4
@XOg_FILDd = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i32 0, align 4
@RSET_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @asm_x87load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_x87load(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_6__* @IR(i32 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IR_KNUM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = call i32* @ir_knum(%struct.TYPE_6__* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @tvispzero(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @XI_FLDZ, align 4
  %24 = call i32 @emit_x87op(i32* %22, i32 %23)
  br label %40

25:                                               ; preds = %15
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @tvispone(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @XI_FLD1, align 4
  %32 = call i32 @emit_x87op(i32* %30, i32 %31)
  br label %39

33:                                               ; preds = %25
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @XO_FLDq, align 4
  %36 = load i32, i32* @XOg_FLDq, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @emit_rma(i32* %34, i32 %35, i32 %36, i32* %37)
  br label %39

39:                                               ; preds = %33, %29
  br label %40

40:                                               ; preds = %39, %21
  br label %93

41:                                               ; preds = %2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IR_CONV, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IRCONV_NUM_INT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %47
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = call i32 @ra_used(%struct.TYPE_6__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %83, label %57

57:                                               ; preds = %53
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @irref_isk(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %57
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @mayfuse(i32* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.TYPE_6__* @IR(i32 %73)
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %7, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* @XO_FILDd, align 4
  %77 = load i32, i32* @XOg_FILDd, align 4
  %78 = load i32, i32* @RID_ESP, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = call i32 @ra_spill(i32* %79, %struct.TYPE_6__* %80)
  %82 = call i32 @emit_rmro(i32* %75, i32 %76, i32 %77, i32 %78, i32 %81)
  br label %92

83:                                               ; preds = %63, %57, %53, %47, %41
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @XO_FLDq, align 4
  %86 = load i32, i32* @XOg_FLDq, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @RSET_EMPTY, align 4
  %90 = call i32 @asm_fuseload(i32* %87, i32 %88, i32 %89)
  %91 = call i32 @emit_mrm(i32* %84, i32 %85, i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %83, %70
  br label %93

93:                                               ; preds = %92, %40
  ret void
}

declare dso_local %struct.TYPE_6__* @IR(i32) #1

declare dso_local i32* @ir_knum(%struct.TYPE_6__*) #1

declare dso_local i64 @tvispzero(i32*) #1

declare dso_local i32 @emit_x87op(i32*, i32) #1

declare dso_local i64 @tvispone(i32*) #1

declare dso_local i32 @emit_rma(i32*, i32, i32, i32*) #1

declare dso_local i32 @ra_used(%struct.TYPE_6__*) #1

declare dso_local i32 @irref_isk(i32) #1

declare dso_local i64 @mayfuse(i32*, i32) #1

declare dso_local i32 @emit_rmro(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ra_spill(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @emit_mrm(i32*, i32, i32, i32) #1

declare dso_local i32 @asm_fuseload(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
