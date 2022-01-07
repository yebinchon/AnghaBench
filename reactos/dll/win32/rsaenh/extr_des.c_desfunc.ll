; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_des.c_desfunc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_des.c_desfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@des_ip = common dso_local global i32** null, align 8
@SP7 = common dso_local global i32* null, align 8
@SP5 = common dso_local global i32* null, align 8
@SP3 = common dso_local global i32* null, align 8
@SP1 = common dso_local global i32* null, align 8
@SP8 = common dso_local global i32* null, align 8
@SP6 = common dso_local global i32* null, align 8
@SP4 = common dso_local global i32* null, align 8
@SP2 = common dso_local global i32* null, align 8
@des_fp = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @desfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desfunc(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32**, i32*** @des_ip, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @byte(i32 %19, i32 0)
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32**, i32*** @des_ip, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @byte(i32 %26, i32 1)
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %22, %29
  %31 = load i32**, i32*** @des_ip, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @byte(i32 %34, i32 2)
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %30, %37
  %39 = load i32**, i32*** @des_ip, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @byte(i32 %42, i32 3)
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %38, %45
  %47 = load i32**, i32*** @des_ip, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @byte(i32 %50, i32 0)
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %46, %53
  %55 = load i32**, i32*** @des_ip, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 5
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @byte(i32 %58, i32 1)
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %54, %61
  %63 = load i32**, i32*** @des_ip, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 6
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @byte(i32 %66, i32 2)
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %62, %69
  %71 = load i32**, i32*** @des_ip, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 7
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @byte(i32 %74, i32 3)
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %70, %77
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = ashr i32 %79, 32
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = and i64 %82, 4294967295
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %239, %2
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 8
  br i1 %87, label %88, label %242

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @ROR(i32 %89, i32 4)
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %4, align 8
  %93 = load i32, i32* %91, align 4
  %94 = xor i32 %90, %93
  store i32 %94, i32* %6, align 4
  %95 = load i32*, i32** @SP7, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = and i64 %97, 63
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** @SP5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = ashr i32 %102, 8
  %104 = sext i32 %103 to i64
  %105 = and i64 %104, 63
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %100, %107
  %109 = load i32*, i32** @SP3, align 8
  %110 = load i32, i32* %6, align 4
  %111 = ashr i32 %110, 16
  %112 = sext i32 %111 to i64
  %113 = and i64 %112, 63
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %108, %115
  %117 = load i32*, i32** @SP1, align 8
  %118 = load i32, i32* %6, align 4
  %119 = ashr i32 %118, 24
  %120 = sext i32 %119 to i64
  %121 = and i64 %120, 63
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %116, %123
  %125 = load i32, i32* %8, align 4
  %126 = xor i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %4, align 8
  %130 = load i32, i32* %128, align 4
  %131 = xor i32 %127, %130
  store i32 %131, i32* %6, align 4
  %132 = load i32*, i32** @SP8, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = and i64 %134, 63
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** @SP6, align 8
  %139 = load i32, i32* %6, align 4
  %140 = ashr i32 %139, 8
  %141 = sext i32 %140 to i64
  %142 = and i64 %141, 63
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %137, %144
  %146 = load i32*, i32** @SP4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = ashr i32 %147, 16
  %149 = sext i32 %148 to i64
  %150 = and i64 %149, 63
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = xor i32 %145, %152
  %154 = load i32*, i32** @SP2, align 8
  %155 = load i32, i32* %6, align 4
  %156 = ashr i32 %155, 24
  %157 = sext i32 %156 to i64
  %158 = and i64 %157, 63
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = xor i32 %153, %160
  %162 = load i32, i32* %8, align 4
  %163 = xor i32 %162, %161
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @ROR(i32 %164, i32 4)
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %4, align 8
  %168 = load i32, i32* %166, align 4
  %169 = xor i32 %165, %168
  store i32 %169, i32* %6, align 4
  %170 = load i32*, i32** @SP7, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = and i64 %172, 63
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** @SP5, align 8
  %177 = load i32, i32* %6, align 4
  %178 = ashr i32 %177, 8
  %179 = sext i32 %178 to i64
  %180 = and i64 %179, 63
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = xor i32 %175, %182
  %184 = load i32*, i32** @SP3, align 8
  %185 = load i32, i32* %6, align 4
  %186 = ashr i32 %185, 16
  %187 = sext i32 %186 to i64
  %188 = and i64 %187, 63
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = xor i32 %183, %190
  %192 = load i32*, i32** @SP1, align 8
  %193 = load i32, i32* %6, align 4
  %194 = ashr i32 %193, 24
  %195 = sext i32 %194 to i64
  %196 = and i64 %195, 63
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = xor i32 %191, %198
  %200 = load i32, i32* %7, align 4
  %201 = xor i32 %200, %199
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32*, i32** %4, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %4, align 8
  %205 = load i32, i32* %203, align 4
  %206 = xor i32 %202, %205
  store i32 %206, i32* %6, align 4
  %207 = load i32*, i32** @SP8, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = and i64 %209, 63
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** @SP6, align 8
  %214 = load i32, i32* %6, align 4
  %215 = ashr i32 %214, 8
  %216 = sext i32 %215 to i64
  %217 = and i64 %216, 63
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %212, %219
  %221 = load i32*, i32** @SP4, align 8
  %222 = load i32, i32* %6, align 4
  %223 = ashr i32 %222, 16
  %224 = sext i32 %223 to i64
  %225 = and i64 %224, 63
  %226 = getelementptr inbounds i32, i32* %221, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = xor i32 %220, %227
  %229 = load i32*, i32** @SP2, align 8
  %230 = load i32, i32* %6, align 4
  %231 = ashr i32 %230, 24
  %232 = sext i32 %231 to i64
  %233 = and i64 %232, 63
  %234 = getelementptr inbounds i32, i32* %229, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = xor i32 %228, %235
  %237 = load i32, i32* %7, align 4
  %238 = xor i32 %237, %236
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %88
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %85

242:                                              ; preds = %85
  %243 = load i32**, i32*** @des_fp, align 8
  %244 = getelementptr inbounds i32*, i32** %243, i64 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = call i64 @byte(i32 %246, i32 0)
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32**, i32*** @des_fp, align 8
  %251 = getelementptr inbounds i32*, i32** %250, i64 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = call i64 @byte(i32 %253, i32 1)
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = xor i32 %249, %256
  %258 = load i32**, i32*** @des_fp, align 8
  %259 = getelementptr inbounds i32*, i32** %258, i64 2
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %8, align 4
  %262 = call i64 @byte(i32 %261, i32 2)
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = xor i32 %257, %264
  %266 = load i32**, i32*** @des_fp, align 8
  %267 = getelementptr inbounds i32*, i32** %266, i64 3
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = call i64 @byte(i32 %269, i32 3)
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = xor i32 %265, %272
  %274 = load i32**, i32*** @des_fp, align 8
  %275 = getelementptr inbounds i32*, i32** %274, i64 4
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %7, align 4
  %278 = call i64 @byte(i32 %277, i32 0)
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = xor i32 %273, %280
  %282 = load i32**, i32*** @des_fp, align 8
  %283 = getelementptr inbounds i32*, i32** %282, i64 5
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %7, align 4
  %286 = call i64 @byte(i32 %285, i32 1)
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = xor i32 %281, %288
  %290 = load i32**, i32*** @des_fp, align 8
  %291 = getelementptr inbounds i32*, i32** %290, i64 6
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %7, align 4
  %294 = call i64 @byte(i32 %293, i32 2)
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = xor i32 %289, %296
  %298 = load i32**, i32*** @des_fp, align 8
  %299 = getelementptr inbounds i32*, i32** %298, i64 7
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = call i64 @byte(i32 %301, i32 3)
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = xor i32 %297, %304
  store i32 %305, i32* %5, align 4
  %306 = load i32, i32* %5, align 4
  %307 = ashr i32 %306, 32
  store i32 %307, i32* %8, align 4
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = and i64 %309, 4294967295
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %7, align 4
  %312 = load i32, i32* %7, align 4
  %313 = load i32*, i32** %3, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* %8, align 4
  %316 = load i32*, i32** %3, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 1
  store i32 %315, i32* %317, align 4
  ret void
}

declare dso_local i64 @byte(i32, i32) #1

declare dso_local i32 @ROR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
