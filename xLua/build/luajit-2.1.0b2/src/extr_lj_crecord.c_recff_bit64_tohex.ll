; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_recff_bit64_tohex.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_recff_bit64_tohex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, i32 }
%struct.TYPE_13__ = type { i32* }

@STRFMT_UINT = common dso_local global i32 0, align 4
@STRFMT_T_HEX = common dso_local global i32 0, align 4
@CTID_INT32 = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i32 0, align 4
@STRFMT_F_UPPER = common dso_local global i32 0, align 4
@STRFMT_SH_PREC = common dso_local global i32 0, align 4
@IR_BAND = common dso_local global i32 0, align 4
@IRT_U64 = common dso_local global i32 0, align 4
@IRT_INT = common dso_local global i32 0, align 4
@IRCALL_lj_strfmt_putfxint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @recff_bit64_tohex(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = call i32 @J2G(%struct.TYPE_12__* %14)
  %16 = call i32* @ctype_ctsG(i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i64 @crec_bit64_type(i32* %17, i32* %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i32, i32* @STRFMT_UINT, align 4
  %29 = load i32, i32* @STRFMT_T_HEX, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %3
  store i64 0, i64* %13, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @lj_carith_check64(i32 %36, i32 2, i64* %13)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i64, i64* @CTID_INT32, align 8
  %45 = call i32 @ctype_get(i32* %43, i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = call i64 @crec_ct_tv(%struct.TYPE_12__* %42, i32 %45, i32 0, i64 %46, i32* %50)
  store i64 %51, i64* %10, align 8
  br label %56

52:                                               ; preds = %33
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @lj_opt_narrow_tobit(%struct.TYPE_12__* %53, i64 %54)
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %52, %41
  %57 = load i32, i32* @IR_EQ, align 4
  %58 = call i32 @IRTGI(i32 %57)
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @lj_ir_kint(%struct.TYPE_12__* %60, i32 %61)
  %63 = call i64 @emitir(i32 %58, i64 %59, i32 %62)
  br label %69

64:                                               ; preds = %3
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 16, i32 8
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %64, %56
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* @STRFMT_F_UPPER, align 4
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  %81 = and i32 %80, 255
  %82 = load i32, i32* @STRFMT_SH_PREC, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %78
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @ctype_get(i32* %90, i64 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = call i64 @crec_ct_tv(%struct.TYPE_12__* %89, i32 %92, i32 0, i64 %97, i32* %101)
  store i64 %102, i64* %9, align 8
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %117

105:                                              ; preds = %88
  %106 = load i32, i32* @IR_BAND, align 4
  %107 = load i32, i32* @IRT_U64, align 4
  %108 = call i32 @IRT(i32 %106, i32 %107)
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = load i32, i32* %12, align 4
  %112 = mul nsw i32 4, %111
  %113 = shl i32 1, %112
  %114 = sub nsw i32 %113, 1
  %115 = call i32 @lj_ir_kint64(%struct.TYPE_12__* %110, i32 %114)
  %116 = call i64 @emitir(i32 %108, i64 %109, i32 %115)
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %105, %88
  br label %146

118:                                              ; preds = %78
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @lj_opt_narrow_tobit(%struct.TYPE_12__* %119, i64 %124)
  store i64 %125, i64* %9, align 8
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 8
  br i1 %127, label %128, label %139

128:                                              ; preds = %118
  %129 = load i32, i32* @IR_BAND, align 4
  %130 = call i32 @IRTI(i32 %129)
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = load i32, i32* %12, align 4
  %134 = mul nsw i32 4, %133
  %135 = shl i32 1, %134
  %136 = sub i32 %135, 1
  %137 = call i32 @lj_ir_kint(%struct.TYPE_12__* %132, i32 %136)
  %138 = call i64 @emitir(i32 %130, i64 %131, i32 %137)
  store i64 %138, i64* %9, align 8
  br label %139

139:                                              ; preds = %128, %118
  %140 = load i64, i64* %9, align 8
  %141 = load i32, i32* @IRT_U64, align 4
  %142 = load i32, i32* @IRT_INT, align 4
  %143 = call i64 @emitconv(i64 %140, i32 %141, i32 %142, i32 0)
  store i64 %143, i64* %9, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = call i32 @lj_needsplit(%struct.TYPE_12__* %144)
  br label %146

146:                                              ; preds = %139, %117
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = load i32, i32* @IRCALL_lj_strfmt_putfxint, align 4
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @lj_ir_kint(%struct.TYPE_12__* %150, i32 %151)
  %153 = load i64, i64* %9, align 8
  %154 = call i64 @lj_ir_call(%struct.TYPE_12__* %147, i32 %148, i64 %149, i32 %152, i64 %153)
  ret i64 %154
}

declare dso_local i32* @ctype_ctsG(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_12__*) #1

declare dso_local i64 @crec_bit64_type(i32*, i32*) #1

declare dso_local i64 @lj_carith_check64(i32, i32, i64*) #1

declare dso_local i64 @crec_ct_tv(%struct.TYPE_12__*, i32, i32, i64, i32*) #1

declare dso_local i32 @ctype_get(i32*, i64) #1

declare dso_local i64 @lj_opt_narrow_tobit(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @emitir(i32, i64, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @lj_ir_kint64(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @IRTI(i32) #1

declare dso_local i64 @emitconv(i64, i32, i32, i32) #1

declare dso_local i32 @lj_needsplit(%struct.TYPE_12__*) #1

declare dso_local i64 @lj_ir_call(%struct.TYPE_12__*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
