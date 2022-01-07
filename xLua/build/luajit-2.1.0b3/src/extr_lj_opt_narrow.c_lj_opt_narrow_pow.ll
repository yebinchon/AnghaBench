; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_lj_opt_narrow_pow.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_lj_opt_narrow_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

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
define dso_local i32 @lj_opt_narrow_pow(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @conv_str_tonum(i32* %15, i32 %16, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @lj_ir_tonum(i32* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @conv_str_tonum(i32* %22, i32 %23, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = call i64 @tvisint(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @numV(i32* %30)
  %32 = call i64 @numisint(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %95

34:                                               ; preds = %29, %5
  store i32 0, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @tref_isk(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @tref_ref(i32 %39)
  %41 = call i32 @IR(i32 %40)
  %42 = call %struct.TYPE_5__* @ir_knum(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load i32*, i32** %11, align 8
  %49 = call i64 @numberVint(i32* %48)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp sge i64 %50, -65536
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %13, align 8
  %54 = icmp sle i64 %53, 65536
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %47
  br label %96

56:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  br label %57

57:                                               ; preds = %56, %38, %34
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @tref_isinteger(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @IR_CONV, align 4
  %63 = call i32 @IRTGI(i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IRCONV_INT_NUM, align 4
  %66 = load i32, i32* @IRCONV_CHECK, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @emitir(i32 %63, i32 %64, i32 %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %61, %57
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @tref_isk(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @IR_ADD, align 4
  %78 = call i32 @IRTI(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @lj_ir_kint(i32* %80, i32 65536)
  %82 = call i32 @emitir(i32 %78, i32 %79, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* @IR_ULE, align 4
  %84 = call i32 @IRTGI(i32 %83)
  %85 = load i32, i32* %14, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @lj_ir_kint(i32* %86, i32 131072)
  %88 = call i32 @emitir(i32 %84, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %76, %72, %69
  %90 = load i32, i32* @IR_POW, align 4
  %91 = call i32 @IRTN(i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @emitir(i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  br label %146

95:                                               ; preds = %29
  br label %96

96:                                               ; preds = %95, %55
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @tref_isk(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @tref_ref(i32 %101)
  %103 = call i32 @IR(i32 %102)
  %104 = call %struct.TYPE_5__* @ir_knum(i32 %103)
  %105 = call i64 @tvispone(%struct.TYPE_5__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %6, align 4
  br label %146

109:                                              ; preds = %100, %96
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @lj_ir_tonum(i32* %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @tref_isk(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %109
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @tref_ref(i32 %117)
  %119 = call i32 @IR(i32 %118)
  %120 = call %struct.TYPE_5__* @ir_knum(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load double, double* %121, align 8
  %123 = fcmp oeq double %122, 5.000000e-01
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i32, i32* @IR_FPMATH, align 4
  %126 = call i32 @IRTN(i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @IRFPM_SQRT, align 4
  %129 = call i32 @emitir(i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %6, align 4
  br label %146

130:                                              ; preds = %116, %109
  %131 = load i32, i32* @IR_FPMATH, align 4
  %132 = call i32 @IRTN(i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @IRFPM_LOG2, align 4
  %135 = call i32 @emitir(i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* @IR_MUL, align 4
  %137 = call i32 @IRTN(i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @emitir(i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* @IR_FPMATH, align 4
  %142 = call i32 @IRTN(i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @IRFPM_EXP2, align 4
  %145 = call i32 @emitir(i32 %142, i32 %143, i32 %144)
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %130, %124, %107, %89
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i32 @conv_str_tonum(i32*, i32, i32*) #1

declare dso_local i32 @lj_ir_tonum(i32*, i32) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i64 @numisint(i32) #1

declare dso_local i32 @numV(i32*) #1

declare dso_local i64 @tref_isk(i32) #1

declare dso_local %struct.TYPE_5__* @ir_knum(i32) #1

declare dso_local i32 @IR(i32) #1

declare dso_local i32 @tref_ref(i32) #1

declare dso_local i64 @numberVint(i32*) #1

declare dso_local i32 @tref_isinteger(i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @IRTI(i32) #1

declare dso_local i32 @lj_ir_kint(i32*, i32) #1

declare dso_local i32 @IRTN(i32) #1

declare dso_local i64 @tvispone(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
