; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_intarith.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_intarith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, i32* }
%struct.TYPE_21__ = type { i64, i64, i32 }
%struct.TYPE_20__ = type { i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@XI_TESTb = common dso_local global i64 0, align 8
@CC_O = common dso_local global i32 0, align 4
@XOg_X_IMUL = common dso_local global i64 0, align 8
@XO_IMUL = common dso_local global i32 0, align 4
@XO_IMULi8 = common dso_local global i32 0, align 4
@XO_IMULi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_21__*, i64)* @asm_intarith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_intarith(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @RSET_GPR, align 4
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %26, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %3
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @LJ_64, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @XI_TESTb, align 8
  %44 = icmp slt i64 %42, %43
  br label %45

45:                                               ; preds = %37, %31
  %46 = phi i1 [ false, %31 ], [ %44, %37 ]
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 3, i32 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %34, i64 %49
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 15
  %55 = icmp slt i32 %54, 14
  br i1 %55, label %56, label %73

56:                                               ; preds = %45
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 15
  %61 = icmp sge i32 %60, 12
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 4
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  br label %73

73:                                               ; preds = %67, %45
  br label %74

74:                                               ; preds = %73, %3
  %75 = load i64, i64* %8, align 8
  %76 = call %struct.TYPE_20__* @IR(i64 %75)
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i64 @ra_hasreg(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @rset_clear(i32 %83, i32 %84)
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @ra_noweak(%struct.TYPE_22__* %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %74
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @ra_dest(%struct.TYPE_22__* %90, %struct.TYPE_21__* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %11, align 4
  br label %129

99:                                               ; preds = %89
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @ra_noreg(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @asm_isk32(%struct.TYPE_22__* %104, i64 %105, i32* %12)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %128, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %111 = call i64 @asm_swapops(%struct.TYPE_22__* %109, %struct.TYPE_21__* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i64, i64* %7, align 8
  store i64 %114, i64* %14, align 8
  %115 = load i64, i64* %8, align 8
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %14, align 8
  store i64 %116, i64* %8, align 8
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @rset_clear(i32 %120, i32 %121)
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @irt_is64(i32 %125)
  %127 = call i32 @asm_fuseloadm(%struct.TYPE_22__* %118, i64 %119, i32 %122, i32 %126)
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %117, %103, %99
  br label %129

129:                                              ; preds = %128, %97
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @irt_isguard(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %137 = load i32, i32* @CC_O, align 4
  %138 = call i32 @asm_guardcc(%struct.TYPE_22__* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %129
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* @XOg_X_IMUL, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %166

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  %145 = call i64 @ra_hasreg(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @XO_ARITH(i64 %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @REX_64IR(%struct.TYPE_21__* %151, i32 %152)
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @emit_mrm(%struct.TYPE_22__* %148, i32 %150, i32 %153, i32 %154)
  br label %165

156:                                              ; preds = %143
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %158 = load i64, i64* %6, align 8
  %159 = call i32 @XG_ARITHi(i64 %158)
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @REX_64IR(%struct.TYPE_21__* %160, i32 %161)
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @emit_gri(%struct.TYPE_22__* %157, i32 %159, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %156, %147
  br label %209

166:                                              ; preds = %139
  %167 = load i32, i32* %11, align 4
  %168 = call i64 @ra_hasreg(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %166
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %172 = load i32, i32* @XO_IMUL, align 4
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @REX_64IR(%struct.TYPE_21__* %173, i32 %174)
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @emit_mrm(%struct.TYPE_22__* %171, i32 %172, i32 %175, i32 %176)
  br label %208

178:                                              ; preds = %166
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i32, i32* @RSET_GPR, align 4
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @irt_is64(i32 %184)
  %186 = call i32 @asm_fuseloadm(%struct.TYPE_22__* %179, i64 %180, i32 %181, i32 %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i64 @checki8(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %178
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @emit_i8(%struct.TYPE_22__* %191, i32 %192)
  %194 = load i32, i32* @XO_IMULi8, align 4
  store i32 %194, i32* %16, align 4
  br label %200

195:                                              ; preds = %178
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @emit_i32(%struct.TYPE_22__* %196, i32 %197)
  %199 = load i32, i32* @XO_IMULi, align 4
  store i32 %199, i32* %16, align 4
  br label %200

200:                                              ; preds = %195, %190
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %202 = load i32, i32* %16, align 4
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @REX_64IR(%struct.TYPE_21__* %203, i32 %204)
  %206 = load i32, i32* %15, align 4
  %207 = call i32 @emit_mrm(%struct.TYPE_22__* %201, i32 %202, i32 %205, i32 %206)
  br label %214

208:                                              ; preds = %170
  br label %209

209:                                              ; preds = %208, %165
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load i64, i64* %7, align 8
  %213 = call i32 @ra_left(%struct.TYPE_22__* %210, i32 %211, i64 %212)
  br label %214

214:                                              ; preds = %209, %200
  ret void
}

declare dso_local %struct.TYPE_20__* @IR(i64) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @rset_clear(i32, i32) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ra_dest(%struct.TYPE_22__*, %struct.TYPE_21__*, i32) #1

declare dso_local i64 @ra_noreg(i32) #1

declare dso_local i32 @asm_isk32(%struct.TYPE_22__*, i64, i32*) #1

declare dso_local i64 @asm_swapops(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @asm_fuseloadm(%struct.TYPE_22__*, i64, i32, i32) #1

declare dso_local i32 @irt_is64(i32) #1

declare dso_local i64 @irt_isguard(i32) #1

declare dso_local i32 @asm_guardcc(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @emit_mrm(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @XO_ARITH(i64) #1

declare dso_local i32 @REX_64IR(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @emit_gri(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @XG_ARITHi(i64) #1

declare dso_local i64 @checki8(i32) #1

declare dso_local i32 @emit_i8(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @emit_i32(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ra_left(%struct.TYPE_22__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
