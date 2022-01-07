; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_phi_shuffle.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_phi_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_12__ = type { i64, i32, i32 }

@RSET_EMPTY = common dso_local global i32 0, align 4
@RID_NONE = common dso_local global i64 0, align 8
@RSET_GPR = common dso_local global i32 0, align 4
@LJ_SOFTFP = common dso_local global i32 0, align 4
@RSET_FPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @asm_phi_shuffle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_phi_shuffle(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  br label %16

16:                                               ; preds = %130, %1
  %17 = load i32, i32* @RSET_EMPTY, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @RSET_EMPTY, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %98, %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %102

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @rset_pickbot(i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_12__* @IR(i32 %33)
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %8, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %98

41:                                               ; preds = %25
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @rset_test(i32 %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %86, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regcost_ref(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @ra_iskref(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %10, align 4
  %61 = call %struct.TYPE_12__* @IR(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @irt_ismarked(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @rset_set(i32 %67, i64 %68)
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @ra_hasreg(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @rset_set(i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %73, %66
  %78 = load i64, i64* @RID_NONE, align 8
  store i64 %78, i64* %9, align 8
  br label %85

79:                                               ; preds = %59, %48
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @ra_restore(%struct.TYPE_13__* %80, i32 %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = call i32 @checkmclim(%struct.TYPE_13__* %83)
  br label %85

85:                                               ; preds = %79, %77
  br label %86

86:                                               ; preds = %85, %41
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @ra_hasreg(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @ra_rename(%struct.TYPE_13__* %91, i64 %92, i64 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %96 = call i32 @checkmclim(%struct.TYPE_13__* %95)
  br label %97

97:                                               ; preds = %90, %86
  br label %98

98:                                               ; preds = %97, %25
  %99 = load i32, i32* %6, align 4
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @rset_clear(i32 %99, i64 %100)
  br label %22

102:                                              ; preds = %22
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  br label %131

106:                                              ; preds = %102
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %4, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %106
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @RSET_GPR, align 4
  %118 = call i32 @asm_phi_break(%struct.TYPE_13__* %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* @LJ_SOFTFP, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %113
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @RSET_FPR, align 4
  %126 = call i32 @asm_phi_break(%struct.TYPE_13__* %122, i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %113
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %129 = call i32 @checkmclim(%struct.TYPE_13__* %128)
  br label %130

130:                                              ; preds = %127, %106
  br label %16

131:                                              ; preds = %105
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %137, %140
  %142 = xor i32 %141, -1
  %143 = and i32 %134, %142
  %144 = load i32, i32* @RSET_FPR, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %149, %131
  %147 = load i32, i32* %3, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = load i32, i32* %3, align 4
  %151 = call i64 @rset_pickbot(i32 %150)
  store i64 %151, i64* %11, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %11, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @regcost_ref(i32 %158)
  %160 = call i32 @ra_restore(%struct.TYPE_13__* %152, i32 %159)
  %161 = load i32, i32* %3, align 4
  %162 = load i64, i64* %11, align 8
  %163 = call i32 @rset_clear(i32 %161, i64 %162)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %165 = call i32 @checkmclim(%struct.TYPE_13__* %164)
  br label %146

166:                                              ; preds = %146
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %172, %175
  %177 = xor i32 %176, -1
  %178 = and i32 %169, %177
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %182, %166
  %180 = load i32, i32* %3, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %199

182:                                              ; preds = %179
  %183 = load i32, i32* %3, align 4
  %184 = call i64 @rset_pickbot(i32 %183)
  store i64 %184, i64* %12, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %12, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @regcost_ref(i32 %191)
  %193 = call i32 @ra_restore(%struct.TYPE_13__* %185, i32 %192)
  %194 = load i32, i32* %3, align 4
  %195 = load i64, i64* %12, align 8
  %196 = call i32 @rset_clear(i32 %194, i64 %195)
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %198 = call i32 @checkmclim(%struct.TYPE_13__* %197)
  br label %179

199:                                              ; preds = %179
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %238, %199
  %204 = load i32, i32* %3, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %242

206:                                              ; preds = %203
  %207 = load i32, i32* %3, align 4
  %208 = call i64 @rset_picktop(i32 %207)
  store i64 %208, i64* %13, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* %13, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  %216 = call %struct.TYPE_12__* @IR(i32 %215)
  store %struct.TYPE_12__* %216, %struct.TYPE_12__** %15, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @ra_hasspill(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %238

222:                                              ; preds = %206
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @irt_clearmark(i32 %225)
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %228 = load i32, i32* %14, align 4
  %229 = load i64, i64* %13, align 8
  %230 = call i32 @RID2RSET(i64 %229)
  %231 = call i32 @ra_alloc1(%struct.TYPE_13__* %227, i32 %228, i32 %230)
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %234 = load i64, i64* %13, align 8
  %235 = call i32 @ra_save(%struct.TYPE_13__* %232, %struct.TYPE_12__* %233, i64 %234)
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %237 = call i32 @checkmclim(%struct.TYPE_13__* %236)
  br label %238

238:                                              ; preds = %222, %206
  %239 = load i32, i32* %3, align 4
  %240 = load i64, i64* %13, align 8
  %241 = call i32 @rset_clear(i32 %239, i64 %240)
  br label %203

242:                                              ; preds = %203
  ret void
}

declare dso_local i64 @rset_pickbot(i32) #1

declare dso_local %struct.TYPE_12__* @IR(i32) #1

declare dso_local i32 @rset_test(i32, i64) #1

declare dso_local i32 @regcost_ref(i32) #1

declare dso_local i32 @ra_iskref(i32) #1

declare dso_local i64 @irt_ismarked(i32) #1

declare dso_local i32 @rset_set(i32, i64) #1

declare dso_local i64 @ra_hasreg(i64) #1

declare dso_local i32 @ra_restore(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @checkmclim(%struct.TYPE_13__*) #1

declare dso_local i32 @ra_rename(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @rset_clear(i32, i64) #1

declare dso_local i32 @asm_phi_break(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i64 @rset_picktop(i32) #1

declare dso_local i64 @ra_hasspill(i32) #1

declare dso_local i32 @irt_clearmark(i32) #1

declare dso_local i32 @ra_alloc1(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @RID2RSET(i64) #1

declare dso_local i32 @ra_save(%struct.TYPE_13__*, %struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
