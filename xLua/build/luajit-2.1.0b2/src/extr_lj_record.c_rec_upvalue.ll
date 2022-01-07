; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_upvalue.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_upvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, i64, i64*, %struct.TYPE_20__*, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_22__ }

@PROTO_CLC_POLY = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i32 0, align 4
@IRT_FUNC = common dso_local global i32 0, align 4
@TREF_FRAME = common dso_local global i64 0, align 8
@HASH_BIAS = common dso_local global i64 0, align 8
@IR_UREFO = common dso_local global i32 0, align 4
@IRT_P32 = common dso_local global i32 0, align 4
@IR_UREFC = common dso_local global i32 0, align 4
@IR_ULOAD = common dso_local global i32 0, align 4
@LJ_DUALNUM = common dso_local global i32 0, align 4
@IR_CONV = common dso_local global i32 0, align 4
@IRCONV_NUM_INT = common dso_local global i64 0, align 8
@IR_USTORE = common dso_local global i32 0, align 4
@IR_OBAR = common dso_local global i32 0, align 4
@IRT_NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, i64, i64)* @rec_upvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rec_upvalue(%struct.TYPE_21__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_17__* @gcref(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %8, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = call i64 @getcurrf(%struct.TYPE_21__* %28)
  store i64 %29, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %32 = call i64 @rec_upvalue_constify(%struct.TYPE_21__* %30, %struct.TYPE_22__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %3
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @tref_isk(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PROTO_CLC_POLY, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %82

51:                                               ; preds = %42
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = call i64 @lj_ir_kfunc(%struct.TYPE_21__* %52, %struct.TYPE_16__* %55)
  store i64 %56, i64* %13, align 8
  %57 = load i32, i32* @IR_EQ, align 4
  %58 = load i32, i32* @IRT_FUNC, align 4
  %59 = call i32 @IRTG(i32 %57, i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @emitir(i32 %59, i64 %60, i64 %61)
  %63 = load i64, i64* @TREF_FRAME, align 8
  %64 = load i64, i64* %13, align 8
  %65 = or i64 %63, %64
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 -1
  store i64 %65, i64* %69, align 8
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %51, %34
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %74 = call i64 @uvval(%struct.TYPE_22__* %73)
  %75 = call i64 @lj_record_constify(%struct.TYPE_21__* %72, i64 %74)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %4, align 8
  br label %240

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %3
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i64, i64* %6, align 8
  %84 = shl i64 %83, 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HASH_BIAS, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @hashrot(i64 %87, i64 %92)
  %94 = and i32 %93, 255
  %95 = sext i32 %94 to i64
  %96 = or i64 %84, %95
  store i64 %96, i64* %6, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %175, label %101

101:                                              ; preds = %82
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %103 = call i64 @uvval(%struct.TYPE_22__* %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @tvref(i32 %108)
  %110 = icmp sge i64 %103, %109
  br i1 %110, label %111, label %167

111:                                              ; preds = %101
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %113 = call i64 @uvval(%struct.TYPE_22__* %112)
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @tvref(i32 %118)
  %120 = icmp slt i64 %113, %119
  br i1 %120, label %121, label %167

121:                                              ; preds = %111
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %123 = call i64 @uvval(%struct.TYPE_22__* %122)
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %128, %131
  %133 = sub nsw i64 %123, %132
  store i64 %133, i64* %14, align 8
  %134 = load i64, i64* %14, align 8
  %135 = icmp uge i64 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %121
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %14, align 8
  %141 = sub i64 %140, %139
  store i64 %141, i64* %14, align 8
  %142 = load i64, i64* %7, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %146 = load i64, i64* %14, align 8
  %147 = call i64 @getslot(%struct.TYPE_21__* %145, i64 %146)
  store i64 %147, i64* %4, align 8
  br label %240

148:                                              ; preds = %136
  %149 = load i64, i64* %7, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 3
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  store i64 %149, i64* %154, align 8
  %155 = load i64, i64* %14, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp uge i64 %155, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %148
  %161 = load i64, i64* %14, align 8
  %162 = add i64 %161, 1
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %160, %148
  store i64 0, i64* %4, align 8
  br label %240

166:                                              ; preds = %121
  br label %167

167:                                              ; preds = %166, %111, %101
  %168 = load i32, i32* @IR_UREFO, align 4
  %169 = load i32, i32* @IRT_P32, align 4
  %170 = call i32 @IRTG(i32 %168, i32 %169)
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* %6, align 8
  %173 = call i64 @emitir(i32 %170, i64 %171, i64 %172)
  %174 = call i64 @tref_ref(i64 %173)
  store i64 %174, i64* %10, align 8
  br label %183

175:                                              ; preds = %82
  store i32 1, i32* %11, align 4
  %176 = load i32, i32* @IR_UREFC, align 4
  %177 = load i32, i32* @IRT_P32, align 4
  %178 = call i32 @IRTG(i32 %176, i32 %177)
  %179 = load i64, i64* %9, align 8
  %180 = load i64, i64* %6, align 8
  %181 = call i64 @emitir(i32 %178, i64 %179, i64 %180)
  %182 = call i64 @tref_ref(i64 %181)
  store i64 %182, i64* %10, align 8
  br label %183

183:                                              ; preds = %175, %167
  %184 = load i64, i64* %7, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %183
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %188 = call i64 @uvval(%struct.TYPE_22__* %187)
  %189 = call i32 @itype2irt(i64 %188)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* @IR_ULOAD, align 4
  %191 = load i32, i32* %15, align 4
  %192 = call i32 @IRTG(i32 %190, i32 %191)
  %193 = load i64, i64* %10, align 8
  %194 = call i64 @emitir(i32 %192, i64 %193, i64 0)
  store i64 %194, i64* %16, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i64 @irtype_ispri(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %186
  %199 = load i32, i32* %15, align 4
  %200 = call i64 @TREF_PRI(i32 %199)
  store i64 %200, i64* %16, align 8
  br label %201

201:                                              ; preds = %198, %186
  %202 = load i64, i64* %16, align 8
  store i64 %202, i64* %4, align 8
  br label %240

203:                                              ; preds = %183
  %204 = load i32, i32* @LJ_DUALNUM, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %203
  %207 = load i64, i64* %7, align 8
  %208 = call i64 @tref_isinteger(i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load i32, i32* @IR_CONV, align 4
  %212 = call i32 @IRTN(i32 %211)
  %213 = load i64, i64* %7, align 8
  %214 = load i64, i64* @IRCONV_NUM_INT, align 8
  %215 = call i64 @emitir(i32 %212, i64 %213, i64 %214)
  store i64 %215, i64* %7, align 8
  br label %216

216:                                              ; preds = %210, %206, %203
  %217 = load i32, i32* @IR_USTORE, align 4
  %218 = load i64, i64* %7, align 8
  %219 = call i32 @tref_type(i64 %218)
  %220 = call i32 @IRT(i32 %217, i32 %219)
  %221 = load i64, i64* %10, align 8
  %222 = load i64, i64* %7, align 8
  %223 = call i64 @emitir(i32 %220, i64 %221, i64 %222)
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %216
  %227 = load i64, i64* %7, align 8
  %228 = call i64 @tref_isgcv(i64 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %226
  %231 = load i32, i32* @IR_OBAR, align 4
  %232 = load i32, i32* @IRT_NIL, align 4
  %233 = call i32 @IRT(i32 %231, i32 %232)
  %234 = load i64, i64* %10, align 8
  %235 = load i64, i64* %7, align 8
  %236 = call i64 @emitir(i32 %233, i64 %234, i64 %235)
  br label %237

237:                                              ; preds = %230, %226, %216
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  store i32 1, i32* %239, align 8
  store i64 0, i64* %4, align 8
  br label %240

240:                                              ; preds = %237, %201, %165, %144, %78
  %241 = load i64, i64* %4, align 8
  ret i64 %241
}

declare dso_local %struct.TYPE_17__* @gcref(i32) #1

declare dso_local i64 @getcurrf(%struct.TYPE_21__*) #1

declare dso_local i64 @rec_upvalue_constify(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @tref_isk(i64) #1

declare dso_local i64 @lj_ir_kfunc(%struct.TYPE_21__*, %struct.TYPE_16__*) #1

declare dso_local i64 @emitir(i32, i64, i64) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i64 @lj_record_constify(%struct.TYPE_21__*, i64) #1

declare dso_local i64 @uvval(%struct.TYPE_22__*) #1

declare dso_local i32 @hashrot(i64, i64) #1

declare dso_local i64 @tvref(i32) #1

declare dso_local i64 @getslot(%struct.TYPE_21__*, i64) #1

declare dso_local i64 @tref_ref(i64) #1

declare dso_local i32 @itype2irt(i64) #1

declare dso_local i64 @irtype_ispri(i32) #1

declare dso_local i64 @TREF_PRI(i32) #1

declare dso_local i64 @tref_isinteger(i64) #1

declare dso_local i32 @IRTN(i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @tref_type(i64) #1

declare dso_local i64 @tref_isgcv(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
