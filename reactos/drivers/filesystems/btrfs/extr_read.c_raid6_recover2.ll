; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_read.c_raid6_recover2.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_read.c_raid6_recover2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raid6_recover2(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 2
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 2
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %110

37:                                               ; preds = %32, %6
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 2
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 3
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @RtlZeroMemory(i32* %54, i32 %55)
  br label %67

57:                                               ; preds = %46
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @RtlCopyMemory(i32* %58, i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %57, %53
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %14, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @galois_double(i32* %71, i32 %72)
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @do_xor(i32* %78, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %77, %68
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %14, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %68, label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** %12, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %9, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @do_xor(i32* %92, i32* %99, i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %91
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @galois_divpower(i32* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %91
  br label %305

110:                                              ; preds = %32
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %111, 3
  store i32 %112, i32* %17, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32* %116, i32** %25, align 8
  %117 = load i32*, i32** %12, align 8
  store i32* %117, i32** %26, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %121, %110
  %126 = load i32*, i32** %26, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @RtlZeroMemory(i32* %126, i32 %127)
  %129 = load i32*, i32** %25, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @RtlZeroMemory(i32* %129, i32 %130)
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %15, align 4
  br label %139

137:                                              ; preds = %125
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %137, %135
  br label %159

140:                                              ; preds = %121
  %141 = load i32*, i32** %26, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %9, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @RtlCopyMemory(i32* %141, i32* %147, i32 %148)
  %150 = load i32*, i32** %25, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %9, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @RtlCopyMemory(i32* %150, i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %140, %139
  br label %160

160:                                              ; preds = %207, %159
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %17, align 4
  %163 = load i32*, i32** %26, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @galois_double(i32* %163, i32 %164)
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %192

169:                                              ; preds = %160
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %169
  %174 = load i32*, i32** %26, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %9, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @do_xor(i32* %174, i32* %180, i32 %181)
  %183 = load i32*, i32** %25, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %9, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @do_xor(i32* %183, i32* %189, i32 %190)
  br label %206

192:                                              ; preds = %169, %160
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* %17, align 4
  store i32 %197, i32* %15, align 4
  br label %205

198:                                              ; preds = %192
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i32, i32* %17, align 4
  store i32 %203, i32* %16, align 4
  br label %204

204:                                              ; preds = %202, %198
  br label %205

205:                                              ; preds = %204, %196
  br label %206

206:                                              ; preds = %205, %173
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %17, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %160, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %15, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %15, align 4
  %217 = sub nsw i32 %215, %216
  br label %223

218:                                              ; preds = %210
  %219 = load i32, i32* %15, align 4
  %220 = sub nsw i32 255, %219
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %220, %221
  br label %223

223:                                              ; preds = %218, %214
  %224 = phi i32 [ %217, %214 ], [ %222, %218 ]
  %225 = call i32 @gpow2(i32 %224)
  store i32 %225, i32* %18, align 4
  %226 = load i32, i32* %15, align 4
  %227 = sub nsw i32 255, %226
  %228 = call i32 @gpow2(i32 %227)
  store i32 %228, i32* %19, align 4
  %229 = load i32, i32* %18, align 4
  %230 = xor i32 %229, 1
  %231 = call i32 @gdiv(i32 1, i32 %230)
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* %20, align 4
  %234 = call i32 @gmul(i32 %232, i32 %233)
  store i32 %234, i32* %21, align 4
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %20, align 4
  %237 = call i32 @gmul(i32 %235, i32 %236)
  store i32 %237, i32* %22, align 4
  %238 = load i32*, i32** %7, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sub nsw i32 %239, 2
  %241 = load i32, i32* %9, align 4
  %242 = mul nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %238, i64 %243
  store i32* %244, i32** %23, align 8
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sub nsw i32 %246, 1
  %248 = load i32, i32* %9, align 4
  %249 = mul nsw i32 %247, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %245, i64 %250
  store i32* %251, i32** %24, align 8
  store i32 0, i32* %27, align 4
  br label %252

252:                                              ; preds = %281, %223
  %253 = load i32, i32* %27, align 4
  %254 = load i32, i32* %9, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %284

256:                                              ; preds = %252
  %257 = load i32, i32* %21, align 4
  %258 = load i32*, i32** %23, align 8
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %25, align 8
  %261 = load i32, i32* %260, align 4
  %262 = xor i32 %259, %261
  %263 = call i32 @gmul(i32 %257, i32 %262)
  %264 = load i32, i32* %22, align 4
  %265 = load i32*, i32** %24, align 8
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %26, align 8
  %268 = load i32, i32* %267, align 4
  %269 = xor i32 %266, %268
  %270 = call i32 @gmul(i32 %264, i32 %269)
  %271 = xor i32 %263, %270
  %272 = load i32*, i32** %26, align 8
  store i32 %271, i32* %272, align 4
  %273 = load i32*, i32** %23, align 8
  %274 = getelementptr inbounds i32, i32* %273, i32 1
  store i32* %274, i32** %23, align 8
  %275 = load i32*, i32** %24, align 8
  %276 = getelementptr inbounds i32, i32* %275, i32 1
  store i32* %276, i32** %24, align 8
  %277 = load i32*, i32** %25, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %25, align 8
  %279 = load i32*, i32** %26, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %280, i32** %26, align 8
  br label %281

281:                                              ; preds = %256
  %282 = load i32, i32* %27, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %27, align 4
  br label %252

284:                                              ; preds = %252
  %285 = load i32*, i32** %12, align 8
  %286 = load i32, i32* %9, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32*, i32** %12, align 8
  %290 = load i32, i32* %9, align 4
  %291 = call i32 @do_xor(i32* %288, i32* %289, i32 %290)
  %292 = load i32*, i32** %12, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32*, i32** %7, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sub nsw i32 %297, 2
  %299 = load i32, i32* %9, align 4
  %300 = mul nsw i32 %298, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %296, i64 %301
  %303 = load i32, i32* %9, align 4
  %304 = call i32 @do_xor(i32* %295, i32* %302, i32 %303)
  br label %305

305:                                              ; preds = %284, %109
  ret void
}

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32 @galois_double(i32*, i32) #1

declare dso_local i32 @do_xor(i32*, i32*, i32) #1

declare dso_local i32 @galois_divpower(i32*, i32, i32) #1

declare dso_local i32 @gpow2(i32) #1

declare dso_local i32 @gdiv(i32, i32) #1

declare dso_local i32 @gmul(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
