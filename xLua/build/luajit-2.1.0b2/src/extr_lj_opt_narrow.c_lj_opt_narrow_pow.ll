; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_narrow.c_lj_opt_narrow_pow.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_narrow.c_lj_opt_narrow_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@IR_STRTO = common dso_local global i32 0, align 4
@IRT_NUM = common dso_local global i32 0, align 4
@IR_CONV = common dso_local global i32 0, align 4
@IRCONV_INT_NUM = common dso_local global i32 0, align 4
@IRCONV_CHECK = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i32 0, align 4
@IR_ULE = common dso_local global i32 0, align 4
@IR_POW = common dso_local global i32 0, align 4
@IR_FPMATH = common dso_local global i32 0, align 4
@IRFPM_SQRT = common dso_local global i32 0, align 4
@IRFPM_LOG2 = common dso_local global i32 0, align 4
@IR_MUL = common dso_local global i32 0, align 4
@IRFPM_EXP2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_opt_narrow_pow(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i64 @tvisstr(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @strV(i32* %17)
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @lj_strscan_num(i32 %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %25 = call i32 @lj_trace_err(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %16, %4
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @tvisint(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @numV(i32* %31)
  %33 = call i64 @numisint(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %106

35:                                               ; preds = %30, %26
  store i32 0, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @tref_isk(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @tref_ref(i32 %40)
  %42 = call i32 @IR(i32 %41)
  %43 = call %struct.TYPE_5__* @ir_knum(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @numberVint(i32* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp sge i64 %51, -65536
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64, i64* %11, align 8
  %55 = icmp sle i64 %54, 65536
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %48
  br label %107

57:                                               ; preds = %53
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %39, %35
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @tref_isinteger(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @tref_isstr(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @IR_STRTO, align 4
  %68 = load i32, i32* @IRT_NUM, align 4
  %69 = call i32 @IRTG(i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @emitir(i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* @IR_CONV, align 4
  %74 = call i32 @IRTGI(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @IRCONV_INT_NUM, align 4
  %77 = load i32, i32* @IRCONV_CHECK, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @emitir(i32 %74, i32 %75, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %72, %58
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @tref_isk(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @IR_ADD, align 4
  %89 = call i32 @IRTI(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @lj_ir_kint(i32* %91, i32 65536)
  %93 = call i32 @emitir(i32 %89, i32 %90, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* @IR_ULE, align 4
  %95 = call i32 @IRTGI(i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @lj_ir_kint(i32* %97, i32 131072)
  %99 = call i32 @emitir(i32 %95, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %87, %83, %80
  %101 = load i32, i32* @IR_POW, align 4
  %102 = call i32 @IRTN(i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @emitir(i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %5, align 4
  br label %157

106:                                              ; preds = %30
  br label %107

107:                                              ; preds = %106, %56
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @tref_isk(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @tref_ref(i32 %112)
  %114 = call i32 @IR(i32 %113)
  %115 = call %struct.TYPE_5__* @ir_knum(i32 %114)
  %116 = call i64 @tvispone(%struct.TYPE_5__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %5, align 4
  br label %157

120:                                              ; preds = %111, %107
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @lj_ir_tonum(i32* %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @tref_isk(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @tref_ref(i32 %128)
  %130 = call i32 @IR(i32 %129)
  %131 = call %struct.TYPE_5__* @ir_knum(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load double, double* %132, align 8
  %134 = fcmp oeq double %133, 5.000000e-01
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load i32, i32* @IR_FPMATH, align 4
  %137 = call i32 @IRTN(i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @IRFPM_SQRT, align 4
  %140 = call i32 @emitir(i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %5, align 4
  br label %157

141:                                              ; preds = %127, %120
  %142 = load i32, i32* @IR_FPMATH, align 4
  %143 = call i32 @IRTN(i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @IRFPM_LOG2, align 4
  %146 = call i32 @emitir(i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* @IR_MUL, align 4
  %148 = call i32 @IRTN(i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @emitir(i32 %148, i32 %149, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* @IR_FPMATH, align 4
  %153 = call i32 @IRTN(i32 %152)
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @IRFPM_EXP2, align 4
  %156 = call i32 @emitir(i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %141, %135, %118, %100
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i32 @lj_strscan_num(i32, i32*) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i32 @lj_trace_err(i32*, i32) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i64 @numisint(i32) #1

declare dso_local i32 @numV(i32*) #1

declare dso_local i64 @tref_isk(i32) #1

declare dso_local %struct.TYPE_5__* @ir_knum(i32) #1

declare dso_local i32 @IR(i32) #1

declare dso_local i32 @tref_ref(i32) #1

declare dso_local i64 @numberVint(i32*) #1

declare dso_local i32 @tref_isinteger(i32) #1

declare dso_local i64 @tref_isstr(i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @IRTI(i32) #1

declare dso_local i32 @lj_ir_kint(i32*, i32) #1

declare dso_local i32 @IRTN(i32) #1

declare dso_local i64 @tvispone(%struct.TYPE_5__*) #1

declare dso_local i32 @lj_ir_tonum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
