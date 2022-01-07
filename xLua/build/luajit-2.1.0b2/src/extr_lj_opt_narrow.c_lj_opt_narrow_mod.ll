; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_narrow.c_lj_opt_narrow_mod.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_narrow.c_lj_opt_narrow_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i64 0, align 8
@JIT_F_OPT_NARROW = common dso_local global i32 0, align 4
@IR_NE = common dso_local global i32 0, align 4
@IR_MOD = common dso_local global i32 0, align 4
@IR_DIV = common dso_local global i32 0, align 4
@IR_FPMATH = common dso_local global i32 0, align 4
@IRFPM_FLOOR = common dso_local global i32 0, align 4
@IR_MUL = common dso_local global i32 0, align 4
@IR_SUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_opt_narrow_mod(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = call i64 @tvisstr(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @strV(i32* %15)
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @lj_strscan_num(i32 %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %23 = call i32 @lj_trace_err(%struct.TYPE_6__* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %14, %4
  %25 = load i64, i64* @LJ_DUALNUM, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @JIT_F_OPT_NARROW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @tref_isinteger(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @tref_isinteger(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @tvisint(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @intV(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %66

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @tviszero(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @IR_NE, align 4
  %56 = call i32 @IRTGI(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = call i32 @lj_ir_kint(%struct.TYPE_6__* %58, i32 0)
  %60 = call i32 @emitir(i32 %56, i32 %57, i32 %59)
  %61 = load i32, i32* @IR_MOD, align 4
  %62 = call i32 @IRTI(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @emitir(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %93

66:                                               ; preds = %50, %46, %38, %34, %27
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @lj_ir_tonum(%struct.TYPE_6__* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @lj_ir_tonum(%struct.TYPE_6__* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @IR_DIV, align 4
  %74 = call i32 @IRTN(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @emitir(i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @IR_FPMATH, align 4
  %79 = call i32 @IRTN(i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @IRFPM_FLOOR, align 4
  %82 = call i32 @emitir(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* @IR_MUL, align 4
  %84 = call i32 @IRTN(i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @emitir(i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* @IR_SUB, align 4
  %89 = call i32 @IRTN(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @emitir(i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %66, %54
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i32 @lj_strscan_num(i32, i32*) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @tref_isinteger(i32) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i64 @intV(i32*) #1

declare dso_local i32 @tviszero(i32*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @IRTI(i32) #1

declare dso_local i32 @lj_ir_tonum(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @IRTN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
