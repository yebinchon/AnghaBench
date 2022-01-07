; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_vgaPreCalc.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_vgaPreCalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@startmasks = common dso_local global i32* null, align 8
@endmasks = common dso_local global i32* null, align 8
@maskbit = common dso_local global i32* null, align 8
@bit8 = common dso_local global i32* null, align 8
@SCREEN_Y = common dso_local global i32 0, align 4
@y80 = common dso_local global i32* null, align 8
@SCREEN_X = common dso_local global i32 0, align 4
@xconv = common dso_local global i32* null, align 8
@PreCalcReverseByte = common dso_local global i32* null, align 8
@UnpackPixel = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgaPreCalc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @startmasks, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  store i32 255, i32* %4, align 4
  %5 = load i32*, i32** @startmasks, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 1, i32* %6, align 4
  %7 = load i32*, i32** @startmasks, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 2
  store i32 3, i32* %8, align 4
  %9 = load i32*, i32** @startmasks, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 3
  store i32 7, i32* %10, align 4
  %11 = load i32*, i32** @startmasks, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  store i32 15, i32* %12, align 4
  %13 = load i32*, i32** @startmasks, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 5
  store i32 31, i32* %14, align 4
  %15 = load i32*, i32** @startmasks, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 6
  store i32 63, i32* %16, align 4
  %17 = load i32*, i32** @startmasks, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 7
  store i32 127, i32* %18, align 4
  %19 = load i32*, i32** @endmasks, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** @endmasks, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 128, i32* %22, align 4
  %23 = load i32*, i32** @endmasks, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 192, i32* %24, align 4
  %25 = load i32*, i32** @endmasks, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  store i32 224, i32* %26, align 4
  %27 = load i32*, i32** @endmasks, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32 240, i32* %28, align 4
  %29 = load i32*, i32** @endmasks, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  store i32 248, i32* %30, align 4
  %31 = load i32*, i32** @endmasks, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  store i32 252, i32* %32, align 4
  %33 = load i32*, i32** @endmasks, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  store i32 254, i32* %34, align 4
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %133, %0
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %36, 80
  br i1 %37, label %38, label %136

38:                                               ; preds = %35
  %39 = load i32*, i32** @maskbit, align 8
  %40 = load i32, i32* %2, align 4
  %41 = mul nsw i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 128, i32* %43, align 4
  %44 = load i32*, i32** @maskbit, align 8
  %45 = load i32, i32* %2, align 4
  %46 = mul nsw i32 %45, 8
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32 64, i32* %49, align 4
  %50 = load i32*, i32** @maskbit, align 8
  %51 = load i32, i32* %2, align 4
  %52 = mul nsw i32 %51, 8
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  store i32 32, i32* %55, align 4
  %56 = load i32*, i32** @maskbit, align 8
  %57 = load i32, i32* %2, align 4
  %58 = mul nsw i32 %57, 8
  %59 = add nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32 16, i32* %61, align 4
  %62 = load i32*, i32** @maskbit, align 8
  %63 = load i32, i32* %2, align 4
  %64 = mul nsw i32 %63, 8
  %65 = add nsw i32 %64, 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32 8, i32* %67, align 4
  %68 = load i32*, i32** @maskbit, align 8
  %69 = load i32, i32* %2, align 4
  %70 = mul nsw i32 %69, 8
  %71 = add nsw i32 %70, 5
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  store i32 4, i32* %73, align 4
  %74 = load i32*, i32** @maskbit, align 8
  %75 = load i32, i32* %2, align 4
  %76 = mul nsw i32 %75, 8
  %77 = add nsw i32 %76, 6
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 2, i32* %79, align 4
  %80 = load i32*, i32** @maskbit, align 8
  %81 = load i32, i32* %2, align 4
  %82 = mul nsw i32 %81, 8
  %83 = add nsw i32 %82, 7
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  store i32 1, i32* %85, align 4
  %86 = load i32*, i32** @bit8, align 8
  %87 = load i32, i32* %2, align 4
  %88 = mul nsw i32 %87, 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 7, i32* %90, align 4
  %91 = load i32*, i32** @bit8, align 8
  %92 = load i32, i32* %2, align 4
  %93 = mul nsw i32 %92, 8
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  store i32 6, i32* %96, align 4
  %97 = load i32*, i32** @bit8, align 8
  %98 = load i32, i32* %2, align 4
  %99 = mul nsw i32 %98, 8
  %100 = add nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  store i32 5, i32* %102, align 4
  %103 = load i32*, i32** @bit8, align 8
  %104 = load i32, i32* %2, align 4
  %105 = mul nsw i32 %104, 8
  %106 = add nsw i32 %105, 3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32 4, i32* %108, align 4
  %109 = load i32*, i32** @bit8, align 8
  %110 = load i32, i32* %2, align 4
  %111 = mul nsw i32 %110, 8
  %112 = add nsw i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  store i32 3, i32* %114, align 4
  %115 = load i32*, i32** @bit8, align 8
  %116 = load i32, i32* %2, align 4
  %117 = mul nsw i32 %116, 8
  %118 = add nsw i32 %117, 5
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  store i32 2, i32* %120, align 4
  %121 = load i32*, i32** @bit8, align 8
  %122 = load i32, i32* %2, align 4
  %123 = mul nsw i32 %122, 8
  %124 = add nsw i32 %123, 6
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  store i32 1, i32* %126, align 4
  %127 = load i32*, i32** @bit8, align 8
  %128 = load i32, i32* %2, align 4
  %129 = mul nsw i32 %128, 8
  %130 = add nsw i32 %129, 7
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %38
  %134 = load i32, i32* %2, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %2, align 4
  br label %35

136:                                              ; preds = %35
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %148, %136
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @SCREEN_Y, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i32, i32* %2, align 4
  %143 = mul nsw i32 %142, 80
  %144 = load i32*, i32** @y80, align 8
  %145 = load i32, i32* %2, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %143, i32* %147, align 4
  br label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %2, align 4
  br label %137

151:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %163, %151
  %153 = load i32, i32* %2, align 4
  %154 = load i32, i32* @SCREEN_X, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load i32, i32* %2, align 4
  %158 = ashr i32 %157, 3
  %159 = load i32*, i32** @xconv, align 8
  %160 = load i32, i32* %2, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %158, i32* %162, align 4
  br label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %2, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %2, align 4
  br label %152

166:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %214, %166
  %168 = load i32, i32* %2, align 4
  %169 = icmp slt i32 %168, 256
  br i1 %169, label %170, label %217

170:                                              ; preds = %167
  %171 = load i32, i32* %2, align 4
  %172 = ashr i32 %171, 0
  %173 = and i32 %172, 1
  %174 = shl i32 %173, 7
  %175 = load i32, i32* %2, align 4
  %176 = ashr i32 %175, 1
  %177 = and i32 %176, 1
  %178 = shl i32 %177, 6
  %179 = or i32 %174, %178
  %180 = load i32, i32* %2, align 4
  %181 = ashr i32 %180, 2
  %182 = and i32 %181, 1
  %183 = shl i32 %182, 5
  %184 = or i32 %179, %183
  %185 = load i32, i32* %2, align 4
  %186 = ashr i32 %185, 3
  %187 = and i32 %186, 1
  %188 = shl i32 %187, 4
  %189 = or i32 %184, %188
  %190 = load i32, i32* %2, align 4
  %191 = ashr i32 %190, 4
  %192 = and i32 %191, 1
  %193 = shl i32 %192, 3
  %194 = or i32 %189, %193
  %195 = load i32, i32* %2, align 4
  %196 = ashr i32 %195, 5
  %197 = and i32 %196, 1
  %198 = shl i32 %197, 2
  %199 = or i32 %194, %198
  %200 = load i32, i32* %2, align 4
  %201 = ashr i32 %200, 6
  %202 = and i32 %201, 1
  %203 = shl i32 %202, 1
  %204 = or i32 %199, %203
  %205 = load i32, i32* %2, align 4
  %206 = ashr i32 %205, 7
  %207 = and i32 %206, 1
  %208 = shl i32 %207, 0
  %209 = or i32 %204, %208
  %210 = load i32*, i32** @PreCalcReverseByte, align 8
  %211 = load i32, i32* %2, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %209, i32* %213, align 4
  br label %214

214:                                              ; preds = %170
  %215 = load i32, i32* %2, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %2, align 4
  br label %167

217:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %265, %217
  %219 = load i32, i32* %2, align 4
  %220 = icmp slt i32 %219, 256
  br i1 %220, label %221, label %268

221:                                              ; preds = %218
  %222 = load i32, i32* %2, align 4
  %223 = ashr i32 %222, 0
  %224 = and i32 %223, 1
  %225 = shl i32 %224, 4
  %226 = load i32, i32* %2, align 4
  %227 = ashr i32 %226, 1
  %228 = and i32 %227, 1
  %229 = shl i32 %228, 0
  %230 = or i32 %225, %229
  %231 = load i32, i32* %2, align 4
  %232 = ashr i32 %231, 2
  %233 = and i32 %232, 1
  %234 = shl i32 %233, 12
  %235 = or i32 %230, %234
  %236 = load i32, i32* %2, align 4
  %237 = ashr i32 %236, 3
  %238 = and i32 %237, 1
  %239 = shl i32 %238, 8
  %240 = or i32 %235, %239
  %241 = load i32, i32* %2, align 4
  %242 = ashr i32 %241, 4
  %243 = and i32 %242, 1
  %244 = shl i32 %243, 20
  %245 = or i32 %240, %244
  %246 = load i32, i32* %2, align 4
  %247 = ashr i32 %246, 5
  %248 = and i32 %247, 1
  %249 = shl i32 %248, 16
  %250 = or i32 %245, %249
  %251 = load i32, i32* %2, align 4
  %252 = ashr i32 %251, 6
  %253 = and i32 %252, 1
  %254 = shl i32 %253, 28
  %255 = or i32 %250, %254
  %256 = load i32, i32* %2, align 4
  %257 = ashr i32 %256, 7
  %258 = and i32 %257, 1
  %259 = shl i32 %258, 24
  %260 = or i32 %255, %259
  %261 = load i32*, i32** @UnpackPixel, align 8
  %262 = load i32, i32* %2, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  store i32 %260, i32* %264, align 4
  br label %265

265:                                              ; preds = %221
  %266 = load i32, i32* %2, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %2, align 4
  br label %218

268:                                              ; preds = %218
  %269 = load i32, i32* %1, align 4
  ret i32 %269
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
