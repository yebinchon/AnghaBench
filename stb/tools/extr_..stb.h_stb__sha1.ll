; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__sha1.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @stb__sha1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb__sha1(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [80 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = call i32 @stb_big32(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %17

33:                                               ; preds = %17
  store i32 16, i32* %5, align 4
  br label %34

34:                                               ; preds = %70, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 80
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %42, %47
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 14
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %48, %53
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, 16
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %54, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %12, align 4
  %65 = ashr i32 %64, 31
  %66 = or i32 %63, %65
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 %68
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %37
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %34

73:                                               ; preds = %34
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %7, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %8, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %123, %73
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 20
  br i1 %91, label %92, label %126

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 %93, 5
  %95 = load i32, i32* %6, align 4
  %96 = ashr i32 %95, 27
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = xor i32 %100, %101
  %103 = and i32 %99, %102
  %104 = xor i32 %98, %103
  %105 = add nsw i32 %97, %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %105, %106
  %108 = add nsw i32 %107, 1518500249
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %108, %112
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %116, 30
  %118 = load i32, i32* %7, align 4
  %119 = ashr i32 %118, 2
  %120 = add nsw i32 %117, %119
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %92
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %89

126:                                              ; preds = %89
  br label %127

127:                                              ; preds = %159, %126
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 40
  br i1 %129, label %130, label %162

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = shl i32 %131, 5
  %133 = load i32, i32* %6, align 4
  %134 = ashr i32 %133, 27
  %135 = add nsw i32 %132, %134
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = xor i32 %136, %137
  %139 = load i32, i32* %9, align 4
  %140 = xor i32 %138, %139
  %141 = add nsw i32 %135, %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %141, %142
  %144 = add nsw i32 %143, 1859775393
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %144, %148
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %7, align 4
  %153 = shl i32 %152, 30
  %154 = load i32, i32* %7, align 4
  %155 = ashr i32 %154, 2
  %156 = add nsw i32 %153, %155
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %14, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %130
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %127

162:                                              ; preds = %127
  br label %163

163:                                              ; preds = %199, %162
  %164 = load i32, i32* %5, align 4
  %165 = icmp slt i32 %164, 60
  br i1 %165, label %166, label %202

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = shl i32 %167, 5
  %169 = load i32, i32* %6, align 4
  %170 = ashr i32 %169, 27
  %171 = add nsw i32 %168, %170
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = xor i32 %176, %177
  %179 = and i32 %175, %178
  %180 = add nsw i32 %174, %179
  %181 = add nsw i32 %171, %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %181, %182
  %184 = add i32 %183, -1894007588
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %184, %188
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %7, align 4
  %193 = shl i32 %192, 30
  %194 = load i32, i32* %7, align 4
  %195 = ashr i32 %194, 2
  %196 = add nsw i32 %193, %195
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %15, align 4
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %166
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %163

202:                                              ; preds = %163
  br label %203

203:                                              ; preds = %235, %202
  %204 = load i32, i32* %5, align 4
  %205 = icmp slt i32 %204, 80
  br i1 %205, label %206, label %238

206:                                              ; preds = %203
  %207 = load i32, i32* %6, align 4
  %208 = shl i32 %207, 5
  %209 = load i32, i32* %6, align 4
  %210 = ashr i32 %209, 27
  %211 = add nsw i32 %208, %210
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %8, align 4
  %214 = xor i32 %212, %213
  %215 = load i32, i32* %9, align 4
  %216 = xor i32 %214, %215
  %217 = add nsw i32 %211, %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %217, %218
  %220 = add i32 %219, -899497514
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [80 x i32], [80 x i32]* %11, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add i32 %220, %224
  store i32 %225, i32* %16, align 4
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %7, align 4
  %229 = shl i32 %228, 30
  %230 = load i32, i32* %7, align 4
  %231 = ashr i32 %230, 2
  %232 = add nsw i32 %229, %231
  store i32 %232, i32* %8, align 4
  %233 = load i32, i32* %6, align 4
  store i32 %233, i32* %7, align 4
  %234 = load i32, i32* %16, align 4
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %206
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %5, align 4
  br label %203

238:                                              ; preds = %203
  %239 = load i32, i32* %6, align 4
  %240 = load i32*, i32** %4, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, %239
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* %7, align 4
  %245 = load i32*, i32** %4, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, %244
  store i32 %248, i32* %246, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load i32*, i32** %4, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, %249
  store i32 %253, i32* %251, align 4
  %254 = load i32, i32* %9, align 4
  %255 = load i32*, i32** %4, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 3
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* %10, align 4
  %260 = load i32*, i32** %4, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 4
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, %259
  store i32 %263, i32* %261, align 4
  ret void
}

declare dso_local i32 @stb_big32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
