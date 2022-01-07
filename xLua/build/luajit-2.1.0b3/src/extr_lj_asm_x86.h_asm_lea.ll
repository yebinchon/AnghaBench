; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_lea.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_lea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i32, i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@RID_NONE = common dso_local global i64 0, align 8
@XM_SCALE1 = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i64 0, align 8
@XO_LEA = common dso_local global i32 0, align 4
@RID_MRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @asm_lea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm_lea(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.TYPE_14__* @IR(i64 %15)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.TYPE_14__* @IR(i64 %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %7, align 8
  %21 = load i32, i32* @RSET_GPR, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i64, i64* @RID_NONE, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  store i64 %22, i64* %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i64 %22, i64* %28, align 8
  %29 = load i32, i32* @XM_SCALE1, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @ra_hasreg(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %192

41:                                               ; preds = %2
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @rset_clear(i32 %42, i64 %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ra_noweak(%struct.TYPE_15__* %47, i64 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @irref_isk(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %41
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @ra_hasreg(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %145

69:                                               ; preds = %63, %41
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @ra_hasreg(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %69
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @irt_isphi(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %113, label %94

94:                                               ; preds = %81, %75
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @irt_isphi(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %94
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %100, %81
  store i32 0, i32* %3, align 4
  br label %297

114:                                              ; preds = %100, %94, %69
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @irref_isk(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  br label %144

127:                                              ; preds = %114
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @rset_clear(i32 %128, i64 %131)
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @ra_noweak(%struct.TYPE_15__* %133, i64 %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  store i64 %140, i64* %143, align 8
  br label %144

144:                                              ; preds = %127, %120
  br label %191

145:                                              ; preds = %63
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IR_ADD, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %189

151:                                              ; preds = %145
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @mayfuse(%struct.TYPE_15__* %152, i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %189

158:                                              ; preds = %151
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @irref_isk(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %158
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = call i64 @ra_alloc1(%struct.TYPE_15__* %165, i64 %168, i32 %169)
  store i64 %170, i64* %10, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @rset_clear(i32 %171, i64 %172)
  %174 = load i64, i64* %10, align 8
  %175 = inttoptr i64 %174 to i8*
  %176 = ptrtoint i8* %175 to i64
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  store i64 %176, i64* %179, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call %struct.TYPE_14__* @IR(i64 %182)
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  store i32 %185, i32* %188, align 8
  br label %190

189:                                              ; preds = %158, %151, %145
  store i32 0, i32* %3, align 4
  br label %297

190:                                              ; preds = %164
  br label %191

191:                                              ; preds = %190, %144
  br label %287

192:                                              ; preds = %2
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %195, %198
  br i1 %199, label %200, label %285

200:                                              ; preds = %192
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @IR_ADD, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %285

206:                                              ; preds = %200
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @mayfuse(%struct.TYPE_15__* %207, i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %285

213:                                              ; preds = %206
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @irref_isk(i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %213
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @irref_isk(i64 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %285

225:                                              ; preds = %219, %213
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = call i64 @ra_alloc1(%struct.TYPE_15__* %226, i64 %229, i32 %230)
  store i64 %231, i64* %12, align 8
  %232 = load i32, i32* %8, align 4
  %233 = load i64, i64* %12, align 8
  %234 = call i32 @rset_clear(i32 %232, i64 %233)
  %235 = load i64, i64* %12, align 8
  %236 = inttoptr i64 %235 to i8*
  %237 = ptrtoint i8* %236 to i64
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  store i64 %237, i64* %240, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = call i64 @irref_isk(i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %225
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 2
  store i32 %249, i32* %252, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = call i64 @ra_alloc1(%struct.TYPE_15__* %253, i64 %256, i32 %257)
  store i64 %258, i64* %11, align 8
  br label %275

259:                                              ; preds = %225
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = call %struct.TYPE_14__* @IR(i64 %262)
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 2
  store i32 %265, i32* %268, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* %8, align 4
  %274 = call i64 @ra_alloc1(%struct.TYPE_15__* %269, i64 %272, i32 %273)
  store i64 %274, i64* %11, align 8
  br label %275

275:                                              ; preds = %259, %246
  %276 = load i32, i32* %8, align 4
  %277 = load i64, i64* %11, align 8
  %278 = call i32 @rset_clear(i32 %276, i64 %277)
  %279 = load i64, i64* %11, align 8
  %280 = inttoptr i64 %279 to i8*
  %281 = ptrtoint i8* %280 to i64
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 1
  store i64 %281, i64* %284, align 8
  br label %286

285:                                              ; preds = %219, %206, %200, %192
  store i32 0, i32* %3, align 4
  br label %297

286:                                              ; preds = %275
  br label %287

287:                                              ; preds = %286, %191
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %290 = load i32, i32* %8, align 4
  %291 = call i64 @ra_dest(%struct.TYPE_15__* %288, %struct.TYPE_14__* %289, i32 %290)
  store i64 %291, i64* %9, align 8
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %293 = load i32, i32* @XO_LEA, align 4
  %294 = load i64, i64* %9, align 8
  %295 = load i32, i32* @RID_MRM, align 4
  %296 = call i32 @emit_mrm(%struct.TYPE_15__* %292, i32 %293, i64 %294, i32 %295)
  store i32 1, i32* %3, align 4
  br label %297

297:                                              ; preds = %287, %285, %189, %113
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local %struct.TYPE_14__* @IR(i64) #1

declare dso_local i64 @ra_hasreg(i64) #1

declare dso_local i32 @rset_clear(i32, i64) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i64 @irt_isphi(i32) #1

declare dso_local i64 @mayfuse(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @ra_alloc1(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i64 @ra_dest(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @emit_mrm(%struct.TYPE_15__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
