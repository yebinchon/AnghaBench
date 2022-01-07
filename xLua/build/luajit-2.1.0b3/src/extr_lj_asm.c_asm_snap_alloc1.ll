; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_snap_alloc1.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_snap_alloc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i32, i32 }

@RID_SUNK = common dso_local global i64 0, align 8
@RID_SINK = common dso_local global i64 0, align 8
@IR_TNEW = common dso_local global i64 0, align 8
@IR_TDUP = common dso_local global i64 0, align 8
@IR_CNEW = common dso_local global i64 0, align 8
@IR_ASTORE = common dso_local global i64 0, align 8
@IR_HSTORE = common dso_local global i64 0, align 8
@IR_FSTORE = common dso_local global i64 0, align 8
@IR_XSTORE = common dso_local global i64 0, align 8
@LJ_32 = common dso_local global i64 0, align 8
@IR_HIOP = common dso_local global i64 0, align 8
@IR_CONV = common dso_local global i64 0, align 8
@IRCONV_NUM_INT = common dso_local global i64 0, align 8
@LJ_SOFTFP = common dso_local global i32 0, align 4
@RSET_FPR = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"snapreg   $f $r\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"snapspill $f $s\00", align 1
@IR_CNEWI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i64)* @asm_snap_alloc1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_snap_alloc1(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.TYPE_16__* @IR(i64 %10)
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @irref_isk(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %253, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = call i64 @ra_used(%struct.TYPE_16__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %253, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RID_SUNK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %253, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RID_SINK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %130

31:                                               ; preds = %25
  %32 = load i64, i64* @RID_SUNK, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IR_TNEW, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %31
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IR_TDUP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IR_CNEW, align 8
  %51 = icmp eq i64 %49, %50
  br label %52

52:                                               ; preds = %46, %40, %31
  %53 = phi i1 [ true, %40 ], [ true, %31 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @lua_assert(i32 %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  %60 = call %struct.TYPE_16__* @IR(i64 %59)
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %6, align 8
  br label %61

61:                                               ; preds = %126, %52
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = icmp ugt %struct.TYPE_16__* %62, %63
  br i1 %64, label %65, label %129

65:                                               ; preds = %61
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RID_SINK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %65
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = call i64 @asm_sunk_store(%struct.TYPE_17__* %72, %struct.TYPE_16__* %73, %struct.TYPE_16__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %71
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IR_ASTORE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %101, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IR_HSTORE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IR_FSTORE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IR_XSTORE, align 8
  %100 = icmp eq i64 %98, %99
  br label %101

101:                                              ; preds = %95, %89, %83, %77
  %102 = phi i1 [ true, %89 ], [ true, %83 ], [ true, %77 ], [ %100, %95 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @lua_assert(i32 %103)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  call void @asm_snap_alloc1(%struct.TYPE_17__* %105, i64 %108)
  %109 = load i64, i64* @LJ_32, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %101
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IR_HIOP, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  call void @asm_snap_alloc1(%struct.TYPE_17__* %119, i64 %123)
  br label %124

124:                                              ; preds = %118, %111, %101
  br label %125

125:                                              ; preds = %124, %71, %65
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 -1
  store %struct.TYPE_16__* %128, %struct.TYPE_16__** %6, align 8
  br label %61

129:                                              ; preds = %61
  br label %252

130:                                              ; preds = %25
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @IR_CONV, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %185

136:                                              ; preds = %130
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @IRCONV_NUM_INT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %185

142:                                              ; preds = %136
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call %struct.TYPE_16__* @IR(i64 %145)
  store %struct.TYPE_16__* %146, %struct.TYPE_16__** %8, align 8
  br label %147

147:                                              ; preds = %177, %142
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = icmp ugt %struct.TYPE_16__* %148, %149
  br i1 %150, label %151, label %180

151:                                              ; preds = %147
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %4, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %4, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %157, %151
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @RID_SINK, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %176, label %169

169:                                              ; preds = %163
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @RID_SUNK, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %176, label %175

175:                                              ; preds = %169
  br label %186

176:                                              ; preds = %169, %163, %157
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 -1
  store %struct.TYPE_16__* %179, %struct.TYPE_16__** %8, align 8
  br label %147

180:                                              ; preds = %147
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  call void @asm_snap_alloc1(%struct.TYPE_17__* %181, i64 %184)
  br label %253

185:                                              ; preds = %136, %130
  br label %186

186:                                              ; preds = %185, %175
  %187 = load i32, i32* @LJ_SOFTFP, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %186
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @irt_isfp(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i32, i32* @RSET_FPR, align 4
  br label %199

197:                                              ; preds = %189, %186
  %198 = load i32, i32* @RSET_GPR, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  store i32 %200, i32* %7, align 4
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %199
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @RSET_FPR, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %239

211:                                              ; preds = %207
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %213 = call i64 @asm_snap_canremat(%struct.TYPE_17__* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %239

215:                                              ; preds = %211, %199
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %217 = load i64, i64* %4, align 8
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @ra_allocref(%struct.TYPE_17__* %216, i64 %217, i32 %218)
  store i32 %219, i32* %9, align 4
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @irt_isphi(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %215
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @ra_weak(%struct.TYPE_17__* %226, i32 %227)
  br label %229

229:                                              ; preds = %225, %215
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %231 = call i32 @checkmclim(%struct.TYPE_17__* %230)
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %233 = load i64, i64* %4, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to %struct.TYPE_17__*
  %238 = call i32 @RA_DBGX(%struct.TYPE_17__* %237)
  br label %251

239:                                              ; preds = %211, %207
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %242 = call i32 @ra_spill(%struct.TYPE_17__* %240, %struct.TYPE_16__* %241)
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %244 = load i64, i64* %4, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = inttoptr i64 %248 to %struct.TYPE_17__*
  %250 = call i32 @RA_DBGX(%struct.TYPE_17__* %249)
  br label %251

251:                                              ; preds = %239, %229
  br label %252

252:                                              ; preds = %251, %129
  br label %253

253:                                              ; preds = %180, %252, %19, %15, %2
  ret void
}

declare dso_local %struct.TYPE_16__* @IR(i64) #1

declare dso_local i32 @irref_isk(i64) #1

declare dso_local i64 @ra_used(%struct.TYPE_16__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @asm_sunk_store(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i64 @irt_isfp(i32) #1

declare dso_local i64 @asm_snap_canremat(%struct.TYPE_17__*) #1

declare dso_local i32 @ra_allocref(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @irt_isphi(i32) #1

declare dso_local i32 @ra_weak(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @checkmclim(%struct.TYPE_17__*) #1

declare dso_local i32 @RA_DBGX(%struct.TYPE_17__*) #1

declare dso_local i32 @ra_spill(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
