; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_pi.c_opj_pi_next_cprl.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_pi.c_opj_pi_next_cprl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, %struct.TYPE_7__, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@OPJ_FALSE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid access to pi->include\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @opj_pi_next_cprl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_pi_next_cprl(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  store i64 0, i64* %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 21
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %29
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %4, align 8
  br label %678

31:                                               ; preds = %1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 21
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 18
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %725, %34
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 18
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %44, %48
  br i1 %49, label %50, label %730

50:                                               ; preds = %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 20
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %56
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %4, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  store i64 0, i64* %7, align 8
  br label %62

62:                                               ; preds = %210, %50
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %213

68:                                               ; preds = %62
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %72
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %5, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %77, %80
  %82 = sub i64 %81, 1
  %83 = load i64, i64* %7, align 8
  %84 = sub i64 %82, %83
  %85 = icmp ult i64 %84, 32
  br i1 %85, label %86, label %141

86:                                               ; preds = %68
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @UINT_MAX, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %94, %97
  %99 = sub i64 %98, 1
  %100 = load i64, i64* %7, align 8
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = shl i32 1, %102
  %104 = udiv i32 %90, %103
  %105 = icmp ule i32 %89, %104
  br i1 %105, label %106, label %141

106:                                              ; preds = %86
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %113, %116
  %118 = sub i64 %117, 1
  %119 = load i64, i64* %7, align 8
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = shl i32 1, %121
  %123 = mul i32 %109, %122
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %8, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %106
  %130 = load i64, i64* %8, align 8
  br label %137

131:                                              ; preds = %106
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = call i64 @opj_uint_min(i64 %134, i64 %135)
  br label %137

137:                                              ; preds = %131, %129
  %138 = phi i64 [ %130, %129 ], [ %136, %131 ]
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %137, %86, %68
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %145, %148
  %150 = sub i64 %149, 1
  %151 = load i64, i64* %7, align 8
  %152 = sub i64 %150, %151
  %153 = icmp ult i64 %152, 32
  br i1 %153, label %154, label %209

154:                                              ; preds = %141
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @UINT_MAX, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %162, %165
  %167 = sub i64 %166, 1
  %168 = load i64, i64* %7, align 8
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  %171 = shl i32 1, %170
  %172 = udiv i32 %158, %171
  %173 = icmp ule i32 %157, %172
  br i1 %173, label %174, label %209

174:                                              ; preds = %154
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %181, %184
  %186 = sub i64 %185, 1
  %187 = load i64, i64* %7, align 8
  %188 = sub i64 %186, %187
  %189 = trunc i64 %188 to i32
  %190 = shl i32 1, %189
  %191 = mul i32 %177, %190
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %9, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %174
  %198 = load i64, i64* %9, align 8
  br label %205

199:                                              ; preds = %174
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %9, align 8
  %204 = call i64 @opj_uint_min(i64 %202, i64 %203)
  br label %205

205:                                              ; preds = %199, %197
  %206 = phi i64 [ %198, %197 ], [ %204, %199 ]
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %205, %154, %141
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %7, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %7, align 8
  br label %62

213:                                              ; preds = %62
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218, %213
  %224 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %224, i32* %2, align 4
  br label %732

225:                                              ; preds = %218
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 19
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %255, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 18
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  store i64 %233, i64* %236, align 8
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 18
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 3
  store i64 %239, i64* %242, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 18
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 4
  store i64 %245, i64* %248, align 8
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 18
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 5
  store i64 %251, i64* %254, align 8
  br label %255

255:                                              ; preds = %230, %225
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 18
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 7
  store i64 %259, i64* %261, align 8
  br label %262

262:                                              ; preds = %708, %255
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 7
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 18
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = icmp ult i64 %265, %269
  br i1 %270, label %271, label %724

271:                                              ; preds = %262
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 18
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 8
  store i64 %275, i64* %277, align 8
  br label %278

278:                                              ; preds = %691, %271
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 8
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 18
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = icmp ult i64 %281, %285
  br i1 %286, label %287, label %707

287:                                              ; preds = %278
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 18
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 6
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 9
  store i64 %291, i64* %293, align 8
  br label %294

294:                                              ; preds = %685, %287
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 9
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 18
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 7
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = call i64 @opj_uint_min(i64 %301, i64 %304)
  %306 = icmp ult i64 %297, %305
  br i1 %306, label %307, label %690

307:                                              ; preds = %294
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %309, align 8
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 9
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i64 %313
  store %struct.TYPE_8__* %314, %struct.TYPE_8__** %5, align 8
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = sub i64 %317, 1
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 9
  %321 = load i64, i64* %320, align 8
  %322 = sub i64 %318, %321
  store i64 %322, i64* %10, align 8
  %323 = load i64, i64* %10, align 8
  %324 = icmp uge i64 %323, 32
  br i1 %324, label %353, label %325

325:                                              ; preds = %307
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = load i64, i64* %10, align 8
  %330 = trunc i64 %329 to i32
  %331 = shl i32 %328, %330
  %332 = load i64, i64* %10, align 8
  %333 = trunc i64 %332 to i32
  %334 = lshr i32 %331, %333
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %334, %337
  br i1 %338, label %353, label %339

339:                                              ; preds = %325
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = load i64, i64* %10, align 8
  %344 = trunc i64 %343 to i32
  %345 = shl i32 %342, %344
  %346 = load i64, i64* %10, align 8
  %347 = trunc i64 %346 to i32
  %348 = lshr i32 %345, %347
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %348, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %339, %325, %307
  br label %685

354:                                              ; preds = %339
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = load i64, i64* %10, align 8
  %359 = trunc i64 %358 to i32
  %360 = shl i32 %357, %359
  %361 = zext i32 %360 to i64
  %362 = load i64, i64* @INT_MAX, align 8
  %363 = icmp ugt i64 %361, %362
  br i1 %363, label %374, label %364

364:                                              ; preds = %354
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = load i64, i64* %10, align 8
  %369 = trunc i64 %368 to i32
  %370 = shl i32 %367, %369
  %371 = zext i32 %370 to i64
  %372 = load i64, i64* @INT_MAX, align 8
  %373 = icmp ugt i64 %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %364, %354
  br label %685

375:                                              ; preds = %364
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 8
  %382 = load i64, i64* %10, align 8
  %383 = trunc i64 %382 to i32
  %384 = shl i32 %381, %383
  %385 = zext i32 %384 to i64
  %386 = call i64 @opj_int_ceildiv(i64 %378, i64 %385)
  store i64 %386, i64* %11, align 8
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = load i64, i64* %10, align 8
  %394 = trunc i64 %393 to i32
  %395 = shl i32 %392, %394
  %396 = zext i32 %395 to i64
  %397 = call i64 @opj_int_ceildiv(i64 %389, i64 %396)
  store i64 %397, i64* %12, align 8
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 6
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = load i64, i64* %10, align 8
  %405 = trunc i64 %404 to i32
  %406 = shl i32 %403, %405
  %407 = zext i32 %406 to i64
  %408 = call i64 @opj_int_ceildiv(i64 %400, i64 %407)
  store i64 %408, i64* %13, align 8
  %409 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i32 0, i32 5
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 4
  %415 = load i64, i64* %10, align 8
  %416 = trunc i64 %415 to i32
  %417 = shl i32 %414, %416
  %418 = zext i32 %417 to i64
  %419 = call i64 @opj_int_ceildiv(i64 %411, i64 %418)
  store i64 %419, i64* %14, align 8
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = sext i32 %422 to i64
  %424 = load i64, i64* %10, align 8
  %425 = add i64 %423, %424
  store i64 %425, i64* %15, align 8
  %426 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = sext i32 %428 to i64
  %430 = load i64, i64* %10, align 8
  %431 = add i64 %429, %430
  store i64 %431, i64* %16, align 8
  %432 = load i64, i64* %15, align 8
  %433 = icmp uge i64 %432, 31
  br i1 %433, label %465, label %434

434:                                              ; preds = %375
  %435 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 8
  %438 = load i64, i64* %15, align 8
  %439 = trunc i64 %438 to i32
  %440 = shl i32 %437, %439
  %441 = load i64, i64* %15, align 8
  %442 = trunc i64 %441 to i32
  %443 = lshr i32 %440, %442
  %444 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 8
  %447 = icmp ne i32 %443, %446
  br i1 %447, label %465, label %448

448:                                              ; preds = %434
  %449 = load i64, i64* %16, align 8
  %450 = icmp uge i64 %449, 31
  br i1 %450, label %465, label %451

451:                                              ; preds = %448
  %452 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 4
  %455 = load i64, i64* %16, align 8
  %456 = trunc i64 %455 to i32
  %457 = shl i32 %454, %456
  %458 = load i64, i64* %16, align 8
  %459 = trunc i64 %458 to i32
  %460 = lshr i32 %457, %459
  %461 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = icmp ne i32 %460, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %451, %448, %434, %375
  br label %685

466:                                              ; preds = %451
  %467 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %467, i32 0, i32 7
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 4
  %473 = load i64, i64* %16, align 8
  %474 = trunc i64 %473 to i32
  %475 = shl i32 %472, %474
  %476 = zext i32 %475 to i64
  %477 = urem i64 %469, %476
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %498, label %479

479:                                              ; preds = %466
  %480 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i32 0, i32 7
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 3
  %485 = load i64, i64* %484, align 8
  %486 = icmp eq i64 %482, %485
  br i1 %486, label %487, label %497

487:                                              ; preds = %479
  %488 = load i64, i64* %12, align 8
  %489 = load i64, i64* %10, align 8
  %490 = shl i64 %488, %489
  %491 = load i64, i64* %16, align 8
  %492 = trunc i64 %491 to i32
  %493 = shl i32 1, %492
  %494 = sext i32 %493 to i64
  %495 = urem i64 %490, %494
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %498, label %497

497:                                              ; preds = %487, %479
  br label %685

498:                                              ; preds = %487, %466
  %499 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %499, i32 0, i32 8
  %501 = load i64, i64* %500, align 8
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 8
  %505 = load i64, i64* %15, align 8
  %506 = trunc i64 %505 to i32
  %507 = shl i32 %504, %506
  %508 = zext i32 %507 to i64
  %509 = urem i64 %501, %508
  %510 = icmp eq i64 %509, 0
  br i1 %510, label %530, label %511

511:                                              ; preds = %498
  %512 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %512, i32 0, i32 8
  %514 = load i64, i64* %513, align 8
  %515 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 4
  %517 = load i64, i64* %516, align 8
  %518 = icmp eq i64 %514, %517
  br i1 %518, label %519, label %529

519:                                              ; preds = %511
  %520 = load i64, i64* %11, align 8
  %521 = load i64, i64* %10, align 8
  %522 = shl i64 %520, %521
  %523 = load i64, i64* %15, align 8
  %524 = trunc i64 %523 to i32
  %525 = shl i32 1, %524
  %526 = sext i32 %525 to i64
  %527 = urem i64 %522, %526
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %530, label %529

529:                                              ; preds = %519, %511
  br label %685

530:                                              ; preds = %519, %498
  %531 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %531, i32 0, i32 2
  %533 = load i64, i64* %532, align 8
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %540, label %535

535:                                              ; preds = %530
  %536 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i32 0, i32 3
  %538 = load i64, i64* %537, align 8
  %539 = icmp eq i64 %538, 0
  br i1 %539, label %540, label %541

540:                                              ; preds = %535, %530
  br label %685

541:                                              ; preds = %535
  %542 = load i64, i64* %11, align 8
  %543 = load i64, i64* %13, align 8
  %544 = icmp eq i64 %542, %543
  br i1 %544, label %549, label %545

545:                                              ; preds = %541
  %546 = load i64, i64* %12, align 8
  %547 = load i64, i64* %14, align 8
  %548 = icmp eq i64 %546, %547
  br i1 %548, label %549, label %550

549:                                              ; preds = %545, %541
  br label %685

550:                                              ; preds = %545
  %551 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %552 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %551, i32 0, i32 8
  %553 = load i64, i64* %552, align 8
  %554 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %555 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 8
  %557 = load i64, i64* %10, align 8
  %558 = trunc i64 %557 to i32
  %559 = shl i32 %556, %558
  %560 = zext i32 %559 to i64
  %561 = call i64 @opj_int_ceildiv(i64 %553, i64 %560)
  %562 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = sext i32 %564 to i64
  %566 = call i64 @opj_int_floordivpow2(i64 %561, i64 %565)
  %567 = load i64, i64* %11, align 8
  %568 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %569 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = sext i32 %570 to i64
  %572 = call i64 @opj_int_floordivpow2(i64 %567, i64 %571)
  %573 = sub i64 %566, %572
  store i64 %573, i64* %17, align 8
  %574 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %574, i32 0, i32 7
  %576 = load i64, i64* %575, align 8
  %577 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %578 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 4
  %580 = load i64, i64* %10, align 8
  %581 = trunc i64 %580 to i32
  %582 = shl i32 %579, %581
  %583 = zext i32 %582 to i64
  %584 = call i64 @opj_int_ceildiv(i64 %576, i64 %583)
  %585 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %586 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = sext i32 %587 to i64
  %589 = call i64 @opj_int_floordivpow2(i64 %584, i64 %588)
  %590 = load i64, i64* %12, align 8
  %591 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %592 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 4
  %594 = sext i32 %593 to i64
  %595 = call i64 @opj_int_floordivpow2(i64 %590, i64 %594)
  %596 = sub i64 %589, %595
  store i64 %596, i64* %18, align 8
  %597 = load i64, i64* %17, align 8
  %598 = load i64, i64* %18, align 8
  %599 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %600 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %599, i32 0, i32 2
  %601 = load i64, i64* %600, align 8
  %602 = mul i64 %598, %601
  %603 = add i64 %597, %602
  %604 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %605 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %604, i32 0, i32 10
  store i64 %603, i64* %605, align 8
  %606 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %607 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %606, i32 0, i32 18
  %608 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %607, i32 0, i32 8
  %609 = load i64, i64* %608, align 8
  %610 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %611 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %610, i32 0, i32 11
  store i64 %609, i64* %611, align 8
  br label %612

612:                                              ; preds = %679, %550
  %613 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %614 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %613, i32 0, i32 11
  %615 = load i64, i64* %614, align 8
  %616 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %617 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %616, i32 0, i32 18
  %618 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %617, i32 0, i32 9
  %619 = load i64, i64* %618, align 8
  %620 = icmp ult i64 %615, %619
  br i1 %620, label %621, label %684

621:                                              ; preds = %612
  %622 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %623 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %622, i32 0, i32 11
  %624 = load i64, i64* %623, align 8
  %625 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %626 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %625, i32 0, i32 12
  %627 = load i64, i64* %626, align 8
  %628 = mul i64 %624, %627
  %629 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %630 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %629, i32 0, i32 9
  %631 = load i64, i64* %630, align 8
  %632 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %633 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %632, i32 0, i32 13
  %634 = load i64, i64* %633, align 8
  %635 = mul i64 %631, %634
  %636 = add i64 %628, %635
  %637 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %638 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %637, i32 0, i32 0
  %639 = load i64, i64* %638, align 8
  %640 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %641 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %640, i32 0, i32 14
  %642 = load i64, i64* %641, align 8
  %643 = mul i64 %639, %642
  %644 = add i64 %636, %643
  %645 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %646 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %645, i32 0, i32 10
  %647 = load i64, i64* %646, align 8
  %648 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %649 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %648, i32 0, i32 15
  %650 = load i64, i64* %649, align 8
  %651 = mul i64 %647, %650
  %652 = add i64 %644, %651
  store i64 %652, i64* %6, align 8
  %653 = load i64, i64* %6, align 8
  %654 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %655 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %654, i32 0, i32 16
  %656 = load i64, i64* %655, align 8
  %657 = icmp uge i64 %653, %656
  br i1 %657, label %658, label %662

658:                                              ; preds = %621
  %659 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %660 = call i32 @opj_pi_emit_error(%struct.TYPE_9__* %659, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %661 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %661, i32* %2, align 4
  br label %732

662:                                              ; preds = %621
  %663 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %664 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %663, i32 0, i32 17
  %665 = load i32*, i32** %664, align 8
  %666 = load i64, i64* %6, align 8
  %667 = getelementptr inbounds i32, i32* %665, i64 %666
  %668 = load i32, i32* %667, align 4
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %677, label %670

670:                                              ; preds = %662
  %671 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %672 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %671, i32 0, i32 17
  %673 = load i32*, i32** %672, align 8
  %674 = load i64, i64* %6, align 8
  %675 = getelementptr inbounds i32, i32* %673, i64 %674
  store i32 1, i32* %675, align 4
  %676 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %676, i32* %2, align 4
  br label %732

677:                                              ; preds = %662
  br label %678

678:                                              ; preds = %677, %23
  br label %679

679:                                              ; preds = %678
  %680 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %681 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %680, i32 0, i32 11
  %682 = load i64, i64* %681, align 8
  %683 = add i64 %682, 1
  store i64 %683, i64* %681, align 8
  br label %612

684:                                              ; preds = %612
  br label %685

685:                                              ; preds = %684, %549, %540, %529, %497, %465, %374, %353
  %686 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %687 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %686, i32 0, i32 9
  %688 = load i64, i64* %687, align 8
  %689 = add i64 %688, 1
  store i64 %689, i64* %687, align 8
  br label %294

690:                                              ; preds = %294
  br label %691

691:                                              ; preds = %690
  %692 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %693 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %692, i32 0, i32 1
  %694 = load i64, i64* %693, align 8
  %695 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %696 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %695, i32 0, i32 8
  %697 = load i64, i64* %696, align 8
  %698 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %699 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %698, i32 0, i32 1
  %700 = load i64, i64* %699, align 8
  %701 = urem i64 %697, %700
  %702 = sub i64 %694, %701
  %703 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %704 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %703, i32 0, i32 8
  %705 = load i64, i64* %704, align 8
  %706 = add i64 %705, %702
  store i64 %706, i64* %704, align 8
  br label %278

707:                                              ; preds = %278
  br label %708

708:                                              ; preds = %707
  %709 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %710 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %709, i32 0, i32 2
  %711 = load i64, i64* %710, align 8
  %712 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %713 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %712, i32 0, i32 7
  %714 = load i64, i64* %713, align 8
  %715 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %716 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %715, i32 0, i32 2
  %717 = load i64, i64* %716, align 8
  %718 = urem i64 %714, %717
  %719 = sub i64 %711, %718
  %720 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %721 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %720, i32 0, i32 7
  %722 = load i64, i64* %721, align 8
  %723 = add i64 %722, %719
  store i64 %723, i64* %721, align 8
  br label %262

724:                                              ; preds = %262
  br label %725

725:                                              ; preds = %724
  %726 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %727 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %726, i32 0, i32 0
  %728 = load i64, i64* %727, align 8
  %729 = add i64 %728, 1
  store i64 %729, i64* %727, align 8
  br label %41

730:                                              ; preds = %41
  %731 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %731, i32* %2, align 4
  br label %732

732:                                              ; preds = %730, %670, %658, %223
  %733 = load i32, i32* %2, align 4
  ret i32 %733
}

declare dso_local i64 @opj_uint_min(i64, i64) #1

declare dso_local i64 @opj_int_ceildiv(i64, i64) #1

declare dso_local i64 @opj_int_floordivpow2(i64, i64) #1

declare dso_local i32 @opj_pi_emit_error(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
