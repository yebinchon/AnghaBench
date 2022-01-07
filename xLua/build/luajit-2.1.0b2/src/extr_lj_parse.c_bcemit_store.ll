; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_bcemit_store.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_bcemit_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i32 }

@VLOCAL = common dso_local global i64 0, align 8
@VSTACK_VAR_RW = common dso_local global i32 0, align 4
@VUPVAL = common dso_local global i64 0, align 8
@VKTRUE = common dso_local global i64 0, align 8
@BC_USETP = common dso_local global i32 0, align 4
@VKSTR = common dso_local global i64 0, align 8
@BC_USETS = common dso_local global i32 0, align 4
@VKNUM = common dso_local global i64 0, align 8
@BC_USETN = common dso_local global i32 0, align 4
@BC_USETV = common dso_local global i32 0, align 4
@VGLOBAL = common dso_local global i64 0, align 8
@BC_GSET = common dso_local global i32 0, align 4
@VINDEXED = common dso_local global i64 0, align 8
@BC_TSETS = common dso_local global i32 0, align 4
@BCMAX_C = common dso_local global i32 0, align 4
@BC_TSETB = common dso_local global i32 0, align 4
@VNONRELOC = common dso_local global i64 0, align 8
@BC_TSETV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)* @bcemit_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcemit_store(%struct.TYPE_29__* %0, %struct.TYPE_30__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %6, align 8
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VLOCAL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %3
  %17 = load i32, i32* @VSTACK_VAR_RW, align 4
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %17
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %34 = call i32 @expr_free(%struct.TYPE_29__* %32, %struct.TYPE_30__* %33)
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @expr_toreg(%struct.TYPE_29__* %35, %struct.TYPE_30__* %36, i32 %41)
  br label %239

43:                                               ; preds = %3
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VUPVAL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %131

49:                                               ; preds = %43
  %50 = load i32, i32* @VSTACK_VAR_RW, align 4
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %54, align 8
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %50
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %67 = call i32 @expr_toval(%struct.TYPE_29__* %65, %struct.TYPE_30__* %66)
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VKTRUE, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %49
  %74 = load i32, i32* @BC_USETP, align 4
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %81 = call i32 @const_pri(%struct.TYPE_30__* %80)
  %82 = call i32 @BCINS_AD(i32 %74, i32 %79, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %130

83:                                               ; preds = %49
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VKSTR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load i32, i32* @BC_USETS, align 4
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %98 = call i32 @const_str(%struct.TYPE_29__* %96, %struct.TYPE_30__* %97)
  %99 = call i32 @BCINS_AD(i32 %90, i32 %95, i32 %98)
  store i32 %99, i32* %7, align 4
  br label %129

100:                                              ; preds = %83
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VKNUM, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load i32, i32* @BC_USETN, align 4
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %115 = call i32 @const_num(%struct.TYPE_29__* %113, %struct.TYPE_30__* %114)
  %116 = call i32 @BCINS_AD(i32 %107, i32 %112, i32 %115)
  store i32 %116, i32* %7, align 4
  br label %128

117:                                              ; preds = %100
  %118 = load i32, i32* @BC_USETV, align 4
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %126 = call i32 @expr_toanyreg(%struct.TYPE_29__* %124, %struct.TYPE_30__* %125)
  %127 = call i32 @BCINS_AD(i32 %118, i32 %123, i32 %126)
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %117, %106
  br label %129

129:                                              ; preds = %128, %89
  br label %130

130:                                              ; preds = %129, %73
  br label %231

131:                                              ; preds = %43
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @VGLOBAL, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %140 = call i32 @expr_toanyreg(%struct.TYPE_29__* %138, %struct.TYPE_30__* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* @BC_GSET, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %145 = call i32 @const_str(%struct.TYPE_29__* %143, %struct.TYPE_30__* %144)
  %146 = call i32 @BCINS_AD(i32 %141, i32 %142, i32 %145)
  store i32 %146, i32* %7, align 4
  br label %230

147:                                              ; preds = %131
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @VINDEXED, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @lua_assert(i32 %153)
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %157 = call i32 @expr_toanyreg(%struct.TYPE_29__* %155, %struct.TYPE_30__* %156)
  store i32 %157, i32* %9, align 4
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %147
  %168 = load i32, i32* @BC_TSETS, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = xor i32 %175, -1
  %177 = call i32 @BCINS_ABC(i32 %168, i32 %169, i32 %174, i32 %176)
  store i32 %177, i32* %7, align 4
  br label %229

178:                                              ; preds = %147
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @BCMAX_C, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %178
  %183 = load i32, i32* @BC_TSETB, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @BCMAX_C, align 4
  %192 = add nsw i32 %191, 1
  %193 = sub nsw i32 %190, %192
  %194 = call i32 @BCINS_ABC(i32 %183, i32 %184, i32 %189, i32 %193)
  store i32 %194, i32* %7, align 4
  br label %228

195:                                              ; preds = %178
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @VNONRELOC, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %215, label %201

201:                                              ; preds = %195
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %215, label %207

207:                                              ; preds = %201
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @bcreg_free(%struct.TYPE_29__* %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %207, %201, %195
  %216 = phi i1 [ true, %207 ], [ true, %201 ], [ true, %195 ], [ true, %211 ]
  %217 = zext i1 %216 to i32
  %218 = call i32 @lua_assert(i32 %217)
  %219 = load i32, i32* @BC_TSETV, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = call i32 @BCINS_ABC(i32 %219, i32 %220, i32 %225, i32 %226)
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %215, %182
  br label %229

229:                                              ; preds = %228, %167
  br label %230

230:                                              ; preds = %229, %137
  br label %231

231:                                              ; preds = %230, %130
  br label %232

232:                                              ; preds = %231
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @bcemit_INS(%struct.TYPE_29__* %233, i32 %234)
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %238 = call i32 @expr_free(%struct.TYPE_29__* %236, %struct.TYPE_30__* %237)
  br label %239

239:                                              ; preds = %232, %16
  ret void
}

declare dso_local i32 @expr_free(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @expr_toreg(%struct.TYPE_29__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @expr_toval(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @BCINS_AD(i32, i32, i32) #1

declare dso_local i32 @const_pri(%struct.TYPE_30__*) #1

declare dso_local i32 @const_str(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @const_num(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @expr_toanyreg(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @BCINS_ABC(i32, i32, i32, i32) #1

declare dso_local i32 @bcreg_free(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @bcemit_INS(%struct.TYPE_29__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
