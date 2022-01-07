; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_lj_opt_narrow_mod.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_lj_opt_narrow_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

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
define dso_local i32 @lj_opt_narrow_mod(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @conv_str_tonum(%struct.TYPE_6__* %13, i32 %14, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @conv_str_tonum(%struct.TYPE_6__* %17, i32 %18, i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* @LJ_DUALNUM, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @JIT_F_OPT_NARROW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %23, %5
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @tref_isinteger(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @tref_isinteger(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @tvisint(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @intV(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %62

46:                                               ; preds = %38
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @tviszero(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @IR_NE, align 4
  %52 = call i32 @IRTGI(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = call i32 @lj_ir_kint(%struct.TYPE_6__* %54, i32 0)
  %56 = call i32 @emitir(i32 %52, i32 %53, i32 %55)
  %57 = load i32, i32* @IR_MOD, align 4
  %58 = call i32 @IRTI(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @emitir(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %89

62:                                               ; preds = %46, %42, %34, %30, %23
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @lj_ir_tonum(%struct.TYPE_6__* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @lj_ir_tonum(%struct.TYPE_6__* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @IR_DIV, align 4
  %70 = call i32 @IRTN(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @emitir(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* @IR_FPMATH, align 4
  %75 = call i32 @IRTN(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @IRFPM_FLOOR, align 4
  %78 = call i32 @emitir(i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* @IR_MUL, align 4
  %80 = call i32 @IRTN(i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @emitir(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* @IR_SUB, align 4
  %85 = call i32 @IRTN(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @emitir(i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %62, %50
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @conv_str_tonum(%struct.TYPE_6__*, i32, i32*) #1

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
