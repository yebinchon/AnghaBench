; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_phi_copyspill.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_phi_copyspill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i64 }

@IR_PHI = common dso_local global i64 0, align 8
@RID_TMP = common dso_local global i64 0, align 8
@RID_FPRET = common dso_local global i64 0, align 8
@RSET_FPR = common dso_local global i32 0, align 4
@SPOFS_TMP = common dso_local global i32 0, align 4
@RID_RET = common dso_local global i64 0, align 8
@RID_XMM0 = common dso_local global i64 0, align 8
@RSET_GPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @asm_phi_copyspill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_phi_copyspill(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call %struct.TYPE_10__* @IR(i64 %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  br label %14

14:                                               ; preds = %46, %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IR_PHI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @ra_hasspill(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.TYPE_10__* @IR(i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @ra_hasspill(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @irt_isfp(i32 %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 2, i32 1
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %26, %20
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 -1
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %4, align 8
  br label %14

49:                                               ; preds = %14
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %113

53:                                               ; preds = %49
  %54 = load i64, i64* @RID_TMP, align 8
  store i64 %54, i64* %5, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, 1
  %59 = call %struct.TYPE_10__* @IR(i64 %58)
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %4, align 8
  br label %60

60:                                               ; preds = %109, %53
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IR_PHI, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %112

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @ra_hasspill(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %66
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call %struct.TYPE_10__* @IR(i64 %75)
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %6, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @ra_hasspill(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %72
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @irt_isfp(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @sps_scale(i32 %94)
  %96 = call i32 @emit_spstore(%struct.TYPE_11__* %89, %struct.TYPE_10__* %90, i64 %91, i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @sps_scale(i32 %102)
  %104 = call i32 @emit_spload(%struct.TYPE_11__* %97, %struct.TYPE_10__* %98, i64 %99, i32 %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %106 = call i32 @checkmclim(%struct.TYPE_11__* %105)
  br label %107

107:                                              ; preds = %88, %82, %72
  br label %108

108:                                              ; preds = %107, %66
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 -1
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %4, align 8
  br label %60

112:                                              ; preds = %60
  br label %113

113:                                              ; preds = %112, %49
  %114 = load i32, i32* %3, align 4
  %115 = and i32 %114, 2
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %231

117:                                              ; preds = %113
  %118 = load i64, i64* @RID_FPRET, align 8
  store i64 %118, i64* %7, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @RSET_FPR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %117
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @RSET_FPR, align 4
  %130 = and i32 %128, %129
  %131 = call i64 @rset_pickbot(i32 %130)
  store i64 %131, i64* %7, align 8
  br label %132

132:                                              ; preds = %125, %117
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @rset_test(i32 %135, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %132
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @regcost_ref(i32 %146)
  %148 = call %struct.TYPE_10__* @IR(i64 %147)
  %149 = load i64, i64* %7, align 8
  %150 = load i32, i32* @SPOFS_TMP, align 4
  %151 = call i32 @emit_spload(%struct.TYPE_11__* %140, %struct.TYPE_10__* %148, i64 %149, i32 %150)
  br label %152

152:                                              ; preds = %139, %132
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, 1
  %157 = call %struct.TYPE_10__* @IR(i64 %156)
  store %struct.TYPE_10__* %157, %struct.TYPE_10__** %4, align 8
  br label %158

158:                                              ; preds = %207, %152
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IR_PHI, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %210

164:                                              ; preds = %158
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @ra_hasspill(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %206

170:                                              ; preds = %164
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = call %struct.TYPE_10__* @IR(i64 %173)
  store %struct.TYPE_10__* %174, %struct.TYPE_10__** %8, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @ra_hasspill(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %205

180:                                              ; preds = %170
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @irt_isfp(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %180
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %189 = load i64, i64* %7, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @sps_scale(i32 %192)
  %194 = call i32 @emit_spstore(%struct.TYPE_11__* %187, %struct.TYPE_10__* %188, i64 %189, i32 %193)
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %197 = load i64, i64* %7, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @sps_scale(i32 %200)
  %202 = call i32 @emit_spload(%struct.TYPE_11__* %195, %struct.TYPE_10__* %196, i64 %197, i32 %201)
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %204 = call i32 @checkmclim(%struct.TYPE_11__* %203)
  br label %205

205:                                              ; preds = %186, %180, %170
  br label %206

206:                                              ; preds = %205, %164
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 -1
  store %struct.TYPE_10__* %209, %struct.TYPE_10__** %4, align 8
  br label %158

210:                                              ; preds = %158
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i64, i64* %7, align 8
  %215 = call i32 @rset_test(i32 %213, i64 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %230, label %217

217:                                              ; preds = %210
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* %7, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @regcost_ref(i32 %224)
  %226 = call %struct.TYPE_10__* @IR(i64 %225)
  %227 = load i64, i64* %7, align 8
  %228 = load i32, i32* @SPOFS_TMP, align 4
  %229 = call i32 @emit_spstore(%struct.TYPE_11__* %218, %struct.TYPE_10__* %226, i64 %227, i32 %228)
  br label %230

230:                                              ; preds = %217, %210
  br label %231

231:                                              ; preds = %230, %113
  ret void
}

declare dso_local %struct.TYPE_10__* @IR(i64) #1

declare dso_local i64 @ra_hasspill(i32) #1

declare dso_local i64 @irt_isfp(i32) #1

declare dso_local i32 @emit_spstore(%struct.TYPE_11__*, %struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @sps_scale(i32) #1

declare dso_local i32 @emit_spload(%struct.TYPE_11__*, %struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @checkmclim(%struct.TYPE_11__*) #1

declare dso_local i64 @rset_pickbot(i32) #1

declare dso_local i32 @rset_test(i32, i64) #1

declare dso_local i64 @regcost_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
