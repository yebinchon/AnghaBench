; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_huffman_encode_utils.c_OptimizeHuffmanForRle.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_huffman_encode_utils.c_OptimizeHuffmanForRle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64*)* @OptimizeHuffmanForRle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OptimizeHuffmanForRle(i32 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  br label %16

16:                                               ; preds = %33, %3
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %260

23:                                               ; preds = %19
  %24 = load i64*, i64** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  br label %16

36:                                               ; preds = %31, %16
  %37 = load i64*, i64** %6, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %101, %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %104

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i64*, i64** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %49, %45
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %61, 5
  br i1 %62, label %69, label %63

63:                                               ; preds = %60, %57
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp sge i32 %67, 7
  br i1 %68, label %69, label %86

69:                                               ; preds = %66, %60
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %82, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %70

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %66, %63
  store i32 1, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i64*, i64** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %8, align 8
  br label %96

96:                                               ; preds = %90, %86
  br label %100

97:                                               ; preds = %49
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %97, %96
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %40

104:                                              ; preds = %40
  store i64 0, i64* %11, align 8
  %105 = load i64*, i64** %6, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %257, %104
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %260

113:                                              ; preds = %108
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %144, label %117

117:                                              ; preds = %113
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %144, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %127, %124
  %136 = load i64*, i64** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %12, align 8
  %142 = call i32 @ValuesShouldBeCollapsedToStrideAverage(i64 %140, i64 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %232, label %144

144:                                              ; preds = %135, %127, %117, %113
  %145 = load i64, i64* %11, align 8
  %146 = icmp sge i64 %145, 4
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load i64, i64* %11, align 8
  %149 = icmp sge i64 %148, 3
  br i1 %149, label %150, label %185

150:                                              ; preds = %147
  %151 = load i64, i64* %13, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %185

153:                                              ; preds = %150, %144
  %154 = load i64, i64* %13, align 8
  %155 = load i64, i64* %11, align 8
  %156 = sdiv i64 %155, 2
  %157 = add nsw i64 %154, %156
  %158 = load i64, i64* %11, align 8
  %159 = sdiv i64 %157, %158
  store i64 %159, i64* %15, align 8
  %160 = load i64, i64* %15, align 8
  %161 = icmp slt i64 %160, 1
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  store i64 1, i64* %15, align 8
  br label %163

163:                                              ; preds = %162, %153
  %164 = load i64, i64* %13, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i64 0, i64* %15, align 8
  br label %167

167:                                              ; preds = %166, %163
  store i64 0, i64* %14, align 8
  br label %168

168:                                              ; preds = %181, %167
  %169 = load i64, i64* %14, align 8
  %170 = load i64, i64* %11, align 8
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load i64, i64* %15, align 8
  %174 = load i64*, i64** %6, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %14, align 8
  %178 = sub nsw i64 %176, %177
  %179 = sub nsw i64 %178, 1
  %180 = getelementptr inbounds i64, i64* %174, i64 %179
  store i64 %173, i64* %180, align 8
  br label %181

181:                                              ; preds = %172
  %182 = load i64, i64* %14, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %14, align 8
  br label %168

184:                                              ; preds = %168
  br label %185

185:                                              ; preds = %184, %150, %147
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %4, align 4
  %188 = sub nsw i32 %187, 3
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %219

190:                                              ; preds = %185
  %191 = load i64*, i64** %6, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i64*, i64** %6, align 8
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %196, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %195, %201
  %203 = load i64*, i64** %6, align 8
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 2
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %203, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %202, %208
  %210 = load i64*, i64** %6, align 8
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 3
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %210, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %209, %215
  %217 = add nsw i64 %216, 2
  %218 = sdiv i64 %217, 4
  store i64 %218, i64* %12, align 8
  br label %231

219:                                              ; preds = %185
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %4, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load i64*, i64** %6, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %12, align 8
  br label %230

229:                                              ; preds = %219
  store i64 0, i64* %12, align 8
  br label %230

230:                                              ; preds = %229, %223
  br label %231

231:                                              ; preds = %230, %190
  br label %232

232:                                              ; preds = %231, %135
  %233 = load i64, i64* %11, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %11, align 8
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %4, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %256

238:                                              ; preds = %232
  %239 = load i64*, i64** %6, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %13, align 8
  %245 = add nsw i64 %244, %243
  store i64 %245, i64* %13, align 8
  %246 = load i64, i64* %11, align 8
  %247 = icmp sge i64 %246, 4
  br i1 %247, label %248, label %255

248:                                              ; preds = %238
  %249 = load i64, i64* %13, align 8
  %250 = load i64, i64* %11, align 8
  %251 = sdiv i64 %250, 2
  %252 = add nsw i64 %249, %251
  %253 = load i64, i64* %11, align 8
  %254 = sdiv i64 %252, %253
  store i64 %254, i64* %12, align 8
  br label %255

255:                                              ; preds = %248, %238
  br label %256

256:                                              ; preds = %255, %232
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %7, align 4
  br label %108

260:                                              ; preds = %22, %108
  ret void
}

declare dso_local i32 @ValuesShouldBeCollapsedToStrideAverage(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
