; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_snap_restoreval.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_snap_restoreval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_22__ = type { i8**, i32*, i32* }
%struct.TYPE_19__ = type { i8* }

@LJ_GC64 = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@IR_CONV = common dso_local global i64 0, align 8
@IRCONV_NUM_INT = common dso_local global i64 0, align 8
@LJ_DUALNUM = common dso_local global i64 0, align 8
@RID_MIN_GPR = common dso_local global i64 0, align 8
@RID_MIN_FPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32, i64, %struct.TYPE_19__*)* @snap_restoreval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snap_restoreval(%struct.TYPE_18__* %0, %struct.TYPE_21__* %1, %struct.TYPE_22__* %2, i32 %3, i32 %4, i64 %5, %struct.TYPE_19__* %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_19__* %6, %struct.TYPE_19__** %14, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i64 %23
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %15, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %17, align 4
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @irref_isk(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %7
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %40 = call i32 @lj_ir_kvalue(i32 %37, %struct.TYPE_19__* %38, %struct.TYPE_20__* %39)
  br label %242

41:                                               ; preds = %7
  %42 = load i32, i32* %12, align 4
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @bloomtest(i32 %42, i64 %43)
  %45 = call i64 @LJ_UNLIKELY(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i64, i64* %13, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @snap_renameref(%struct.TYPE_21__* %48, i32 %49, i64 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i32, i32* @LJ_GC64, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @lua_assert(i32 %57)
  %59 = load i32, i32* %17, align 4
  %60 = call i64 @regsp_spill(i32 %59)
  %61 = call i64 @ra_hasspill(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %122

63:                                               ; preds = %53
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %17, align 4
  %68 = call i64 @regsp_spill(i32 %67)
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %18, align 8
  %70 = load i32, i32* %16, align 4
  %71 = call i64 @irt_isinteger(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @setintV(%struct.TYPE_19__* %74, i32 %76)
  br label %121

78:                                               ; preds = %63
  %79 = load i32, i32* %16, align 4
  %80 = call i64 @irt_isnum(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32*, i32** %18, align 8
  %84 = bitcast i32* %83 to i8**
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %120

88:                                               ; preds = %78
  %89 = load i64, i64* @LJ_64, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* %16, align 4
  %93 = call i64 @irt_islightud(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32*, i32** %18, align 8
  %97 = bitcast i32* %96 to i8**
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %119

101:                                              ; preds = %91, %88
  %102 = load i32, i32* %16, align 4
  %103 = call i64 @irt_ispri(i32 %102)
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @lua_assert(i32 %106)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %112 = load i32*, i32** %18, align 8
  %113 = bitcast i32* %112 to i64*
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @irt_toitype(i32 %116)
  %118 = call i32 @setgcV(i32 %110, %struct.TYPE_19__* %111, i32* %115, i32 %117)
  br label %119

119:                                              ; preds = %101, %95
  br label %120

120:                                              ; preds = %119, %82
  br label %121

121:                                              ; preds = %120, %73
  br label %242

122:                                              ; preds = %53
  %123 = load i32, i32* %17, align 4
  %124 = call i64 @regsp_reg(i32 %123)
  store i64 %124, i64* %19, align 8
  %125 = load i64, i64* %19, align 8
  %126 = call i64 @ra_noreg(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %162

128:                                              ; preds = %122
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @IR_CONV, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IRCONV_NUM_INT, align 8
  %139 = icmp eq i64 %137, %138
  br label %140

140:                                              ; preds = %134, %128
  %141 = phi i1 [ false, %128 ], [ %139, %134 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @lua_assert(i32 %142)
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  call void @snap_restoreval(%struct.TYPE_18__* %144, %struct.TYPE_21__* %145, %struct.TYPE_22__* %146, i32 %147, i32 %148, i64 %151, %struct.TYPE_19__* %152)
  %153 = load i64, i64* @LJ_DUALNUM, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %140
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %158 = call i64 @intV(%struct.TYPE_19__* %157)
  %159 = trunc i64 %158 to i32
  %160 = call i32 @setnumV(%struct.TYPE_19__* %156, i32 %159)
  br label %161

161:                                              ; preds = %155, %140
  br label %242

162:                                              ; preds = %122
  %163 = load i32, i32* %16, align 4
  %164 = call i64 @irt_isinteger(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i8**, i8*** %169, align 8
  %171 = load i64, i64* %19, align 8
  %172 = load i64, i64* @RID_MIN_GPR, align 8
  %173 = sub i64 %171, %172
  %174 = getelementptr inbounds i8*, i8** %170, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = ptrtoint i8* %175 to i32
  %177 = call i32 @setintV(%struct.TYPE_19__* %167, i32 %176)
  br label %240

178:                                              ; preds = %162
  %179 = load i32, i32* %16, align 4
  %180 = call i64 @irt_isnum(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %178
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %19, align 8
  %188 = load i64, i64* @RID_MIN_FPR, align 8
  %189 = sub i64 %187, %188
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @setnumV(%struct.TYPE_19__* %183, i32 %191)
  br label %239

193:                                              ; preds = %178
  %194 = load i64, i64* @LJ_64, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = load i32, i32* %16, align 4
  %198 = call i64 @irt_is64(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %196
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = load i8**, i8*** %202, align 8
  %204 = load i64, i64* %19, align 8
  %205 = load i64, i64* @RID_MIN_GPR, align 8
  %206 = sub i64 %204, %205
  %207 = getelementptr inbounds i8*, i8** %203, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  br label %238

211:                                              ; preds = %196, %193
  %212 = load i32, i32* %16, align 4
  %213 = call i64 @irt_ispri(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %217 = load i32, i32* %16, align 4
  %218 = call i32 @irt_toitype(i32 %217)
  %219 = call i32 @setpriV(%struct.TYPE_19__* %216, i32 %218)
  br label %237

220:                                              ; preds = %211
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  %227 = load i8**, i8*** %226, align 8
  %228 = load i64, i64* %19, align 8
  %229 = load i64, i64* @RID_MIN_GPR, align 8
  %230 = sub i64 %228, %229
  %231 = getelementptr inbounds i8*, i8** %227, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = bitcast i8* %232 to i32*
  %234 = load i32, i32* %16, align 4
  %235 = call i32 @irt_toitype(i32 %234)
  %236 = call i32 @setgcV(i32 %223, %struct.TYPE_19__* %224, i32* %233, i32 %235)
  br label %237

237:                                              ; preds = %220, %215
  br label %238

238:                                              ; preds = %237, %200
  br label %239

239:                                              ; preds = %238, %182
  br label %240

240:                                              ; preds = %239, %166
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %34, %161, %241, %121
  ret void
}

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i32 @lj_ir_kvalue(i32, %struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i32 @bloomtest(i32, i64) #1

declare dso_local i32 @snap_renameref(%struct.TYPE_21__*, i32, i64, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ra_hasspill(i64) #1

declare dso_local i64 @regsp_spill(i32) #1

declare dso_local i64 @irt_isinteger(i32) #1

declare dso_local i32 @setintV(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i64 @irt_islightud(i32) #1

declare dso_local i64 @irt_ispri(i32) #1

declare dso_local i32 @setgcV(i32, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @irt_toitype(i32) #1

declare dso_local i64 @regsp_reg(i32) #1

declare dso_local i64 @ra_noreg(i64) #1

declare dso_local i32 @setnumV(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @intV(%struct.TYPE_19__*) #1

declare dso_local i64 @irt_is64(i32) #1

declare dso_local i32 @setpriV(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
