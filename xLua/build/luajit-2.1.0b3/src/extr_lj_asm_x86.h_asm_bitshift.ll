; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_bitshift.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_bitshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i32, i32, i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@JIT_F_BMI2 = common dso_local global i32 0, align 4
@XOg_ROL = common dso_local global i64 0, align 8
@XV_RORX = common dso_local global i64 0, align 8
@XO_SHIFT1 = common dso_local global i32 0, align 4
@RID_ECX = common dso_local global i64 0, align 8
@XO_MOV = common dso_local global i32 0, align 4
@XO_SHIFTcl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*, i64, i64)* @asm_bitshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_bitshift(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.TYPE_20__* @IR(i32 %20)
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @irref_isk(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %108

25:                                               ; preds = %4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = load i32, i32* @RSET_GPR, align 4
  %29 = call i64 @ra_dest(%struct.TYPE_21__* %26, %struct.TYPE_20__* %27, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @irt_is64(i32 %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 63, i32 31
  %40 = and i32 %32, %39
  store i32 %40, i32* %12, align 4
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %88, label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %43
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @JIT_F_BMI2, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %46
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RSET_GPR, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @irt_is64(i32 %61)
  %63 = call i64 @asm_fuseloadm(%struct.TYPE_21__* %54, i32 %57, i32 %58, i64 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %53
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @XOg_ROL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 0, %73
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %12, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i32 [ %74, %72 ], [ %76, %75 ]
  %79 = call i32 @emit_i8(%struct.TYPE_21__* %68, i32 %78)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %82 = load i64, i64* @XV_RORX, align 8
  %83 = call i64 @VEX_64IR(%struct.TYPE_20__* %81, i64 %82)
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @emit_mrm(%struct.TYPE_21__* %80, i64 %83, i64 %84, i64 %85)
  br label %222

87:                                               ; preds = %53
  br label %88

88:                                               ; preds = %87, %46, %43, %25
  %89 = load i32, i32* %12, align 4
  switch i32 %89, label %99 [
    i32 0, label %90
    i32 1, label %91
  ]

90:                                               ; preds = %88
  br label %107

91:                                               ; preds = %88
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = load i32, i32* @XO_SHIFT1, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i64 @REX_64IR(%struct.TYPE_20__* %94, i64 %95)
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @emit_rr(%struct.TYPE_21__* %92, i32 %93, i64 %96, i64 %97)
  br label %107

99:                                               ; preds = %88
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @REX_64IR(%struct.TYPE_20__* %101, i64 %102)
  %104 = load i64, i64* %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @emit_shifti(%struct.TYPE_21__* %100, i64 %103, i64 %104, i32 %105)
  br label %107

107:                                              ; preds = %99, %91, %90
  br label %215

108:                                              ; preds = %4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @JIT_F_BMI2, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %149

115:                                              ; preds = %108
  %116 = load i64, i64* %8, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %115
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %121 = load i32, i32* @RSET_GPR, align 4
  %122 = call i64 @ra_dest(%struct.TYPE_21__* %119, %struct.TYPE_20__* %120, i32 %121)
  store i64 %122, i64* %11, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @RSET_GPR, align 4
  %126 = call i64 @ra_alloc1(%struct.TYPE_21__* %123, i32 %124, i32 %125)
  store i64 %126, i64* %15, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @RSET_GPR, align 4
  %132 = load i64, i64* %15, align 8
  %133 = call i32 @rset_exclude(i32 %131, i64 %132)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @irt_is64(i32 %136)
  %138 = call i64 @asm_fuseloadm(%struct.TYPE_21__* %127, i32 %130, i32 %133, i64 %137)
  store i64 %138, i64* %14, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %141 = load i64, i64* %8, align 8
  %142 = call i64 @VEX_64IR(%struct.TYPE_20__* %140, i64 %141)
  %143 = load i64, i64* %15, align 8
  %144 = shl i64 %143, 19
  %145 = xor i64 %142, %144
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @emit_mrm(%struct.TYPE_21__* %139, i64 %145, i64 %146, i64 %147)
  br label %222

149:                                              ; preds = %115, %108
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %152 = load i32, i32* @RSET_GPR, align 4
  %153 = load i64, i64* @RID_ECX, align 8
  %154 = call i32 @rset_exclude(i32 %152, i64 %153)
  %155 = call i64 @ra_dest(%struct.TYPE_21__* %150, %struct.TYPE_20__* %151, i32 %154)
  store i64 %155, i64* %11, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* @RID_ECX, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %149
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %161 = load i32, i32* @RSET_GPR, align 4
  %162 = load i64, i64* @RID_ECX, align 8
  %163 = call i32 @rset_exclude(i32 %161, i64 %162)
  %164 = call i64 @ra_scratch(%struct.TYPE_21__* %160, i32 %163)
  store i64 %164, i64* %11, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %166 = load i32, i32* @XO_MOV, align 4
  %167 = load i64, i64* @RID_ECX, align 8
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @emit_rr(%struct.TYPE_21__* %165, i32 %166, i64 %167, i64 %168)
  br label %170

170:                                              ; preds = %159, %149
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %16, align 8
  %174 = load i64, i64* %16, align 8
  %175 = call i64 @ra_noreg(i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %170
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i64, i64* @RID_ECX, align 8
  %181 = call i32 @RID2RSET(i64 %180)
  %182 = call i64 @ra_allocref(%struct.TYPE_21__* %178, i32 %179, i32 %181)
  store i64 %182, i64* %16, align 8
  br label %193

183:                                              ; preds = %170
  %184 = load i64, i64* %16, align 8
  %185 = load i64, i64* @RID_ECX, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = load i64, i64* @RID_ECX, align 8
  %190 = call i32 @RID2RSET(i64 %189)
  %191 = call i64 @ra_scratch(%struct.TYPE_21__* %188, i32 %190)
  br label %192

192:                                              ; preds = %187, %183
  br label %193

193:                                              ; preds = %192, %177
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %195 = load i32, i32* @XO_SHIFTcl, align 4
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %197 = load i64, i64* %7, align 8
  %198 = call i64 @REX_64IR(%struct.TYPE_20__* %196, i64 %197)
  %199 = load i64, i64* %11, align 8
  %200 = call i32 @emit_rr(%struct.TYPE_21__* %194, i32 %195, i64 %198, i64 %199)
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %202 = load i64, i64* %16, align 8
  %203 = call i32 @ra_noweak(%struct.TYPE_21__* %201, i64 %202)
  %204 = load i64, i64* %16, align 8
  %205 = load i64, i64* @RID_ECX, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %193
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %209 = load i32, i32* @XO_MOV, align 4
  %210 = load i64, i64* @RID_ECX, align 8
  %211 = load i64, i64* %16, align 8
  %212 = call i32 @emit_rr(%struct.TYPE_21__* %208, i32 %209, i64 %210, i64 %211)
  br label %213

213:                                              ; preds = %207, %193
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214, %107
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %217 = load i64, i64* %11, align 8
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @ra_left(%struct.TYPE_21__* %216, i64 %217, i32 %220)
  br label %222

222:                                              ; preds = %215, %118, %77
  ret void
}

declare dso_local %struct.TYPE_20__* @IR(i32) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local i64 @ra_dest(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @irt_is64(i32) #1

declare dso_local i64 @asm_fuseloadm(%struct.TYPE_21__*, i32, i32, i64) #1

declare dso_local i32 @emit_i8(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @emit_mrm(%struct.TYPE_21__*, i64, i64, i64) #1

declare dso_local i64 @VEX_64IR(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @emit_rr(%struct.TYPE_21__*, i32, i64, i64) #1

declare dso_local i64 @REX_64IR(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @emit_shifti(%struct.TYPE_21__*, i64, i64, i32) #1

declare dso_local i64 @ra_alloc1(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @rset_exclude(i32, i64) #1

declare dso_local i64 @ra_scratch(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ra_noreg(i64) #1

declare dso_local i64 @ra_allocref(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @RID2RSET(i64) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @ra_left(%struct.TYPE_21__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
