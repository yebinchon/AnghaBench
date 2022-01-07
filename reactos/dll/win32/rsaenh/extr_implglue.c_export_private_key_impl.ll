; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_implglue.c_export_private_key_impl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_implglue.c_export_private_key_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @export_private_key_impl(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 7
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @mp_to_unsigned_bin(i32* %11, i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 7
  %18 = call i32 @mp_unsigned_bin_size(i32* %17)
  %19 = call i32 @reverse_bytes(i32* %14, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 7
  %23 = call i32 @mp_unsigned_bin_size(i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %4
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 7
  %31 = call i32 @mp_unsigned_bin_size(i32* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 7
  %38 = call i32 @mp_unsigned_bin_size(i32* %37)
  %39 = sub nsw i32 %34, %38
  %40 = call i32 @memset(i32* %33, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %26, %4
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %5, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @mp_to_unsigned_bin(i32* %48, i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  %55 = call i32 @mp_unsigned_bin_size(i32* %54)
  %56 = call i32 @reverse_bytes(i32* %51, i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 6
  %60 = call i32 @mp_unsigned_bin_size(i32* %59)
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  %63 = ashr i32 %62, 1
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %41
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  %70 = call i32 @mp_unsigned_bin_size(i32* %69)
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  %75 = ashr i32 %74, 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  %79 = call i32 @mp_unsigned_bin_size(i32* %78)
  %80 = sub nsw i32 %75, %79
  %81 = call i32 @memset(i32* %72, i32 0, i32 %80)
  br label %82

82:                                               ; preds = %65, %41
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  %85 = ashr i32 %84, 1
  %86 = load i32*, i32** %5, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %5, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 5
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @mp_to_unsigned_bin(i32* %91, i32* %92)
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  %98 = call i32 @mp_unsigned_bin_size(i32* %97)
  %99 = call i32 @reverse_bytes(i32* %94, i32 %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  %103 = call i32 @mp_unsigned_bin_size(i32* %102)
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  %106 = ashr i32 %105, 1
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %82
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  %113 = call i32 @mp_unsigned_bin_size(i32* %112)
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  %118 = ashr i32 %117, 1
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = call i32 @mp_unsigned_bin_size(i32* %121)
  %123 = sub nsw i32 %118, %122
  %124 = call i32 @memset(i32* %115, i32 0, i32 %123)
  br label %125

125:                                              ; preds = %108, %82
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  %128 = ashr i32 %127, 1
  %129 = load i32*, i32** %5, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %5, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @mp_to_unsigned_bin(i32* %134, i32* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 4
  %141 = call i32 @mp_unsigned_bin_size(i32* %140)
  %142 = call i32 @reverse_bytes(i32* %137, i32 %141)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = call i32 @mp_unsigned_bin_size(i32* %145)
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  %149 = ashr i32 %148, 1
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %125
  %152 = load i32*, i32** %5, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 4
  %156 = call i32 @mp_unsigned_bin_size(i32* %155)
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  %161 = ashr i32 %160, 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = call i32 @mp_unsigned_bin_size(i32* %164)
  %166 = sub nsw i32 %161, %165
  %167 = call i32 @memset(i32* %158, i32 0, i32 %166)
  br label %168

168:                                              ; preds = %151, %125
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  %171 = ashr i32 %170, 1
  %172 = load i32*, i32** %5, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %5, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @mp_to_unsigned_bin(i32* %177, i32* %178)
  %180 = load i32*, i32** %5, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  %184 = call i32 @mp_unsigned_bin_size(i32* %183)
  %185 = call i32 @reverse_bytes(i32* %180, i32 %184)
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  %189 = call i32 @mp_unsigned_bin_size(i32* %188)
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  %192 = ashr i32 %191, 1
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %168
  %195 = load i32*, i32** %5, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 3
  %199 = call i32 @mp_unsigned_bin_size(i32* %198)
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %195, i64 %200
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  %204 = ashr i32 %203, 1
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 3
  %208 = call i32 @mp_unsigned_bin_size(i32* %207)
  %209 = sub nsw i32 %204, %208
  %210 = call i32 @memset(i32* %201, i32 0, i32 %209)
  br label %211

211:                                              ; preds = %194, %168
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  %214 = ashr i32 %213, 1
  %215 = load i32*, i32** %5, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %5, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  %221 = load i32*, i32** %5, align 8
  %222 = call i32 @mp_to_unsigned_bin(i32* %220, i32* %221)
  %223 = load i32*, i32** %5, align 8
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = call i32 @mp_unsigned_bin_size(i32* %226)
  %228 = call i32 @reverse_bytes(i32* %223, i32 %227)
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 2
  %232 = call i32 @mp_unsigned_bin_size(i32* %231)
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  %235 = ashr i32 %234, 1
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %254

237:                                              ; preds = %211
  %238 = load i32*, i32** %5, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  %242 = call i32 @mp_unsigned_bin_size(i32* %241)
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %238, i64 %243
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  %247 = ashr i32 %246, 1
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 2
  %251 = call i32 @mp_unsigned_bin_size(i32* %250)
  %252 = sub nsw i32 %247, %251
  %253 = call i32 @memset(i32* %244, i32 0, i32 %252)
  br label %254

254:                                              ; preds = %237, %211
  %255 = load i32, i32* %7, align 4
  %256 = add nsw i32 %255, 1
  %257 = ashr i32 %256, 1
  %258 = load i32*, i32** %5, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32* %260, i32** %5, align 8
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  %264 = load i32*, i32** %5, align 8
  %265 = call i32 @mp_to_unsigned_bin(i32* %263, i32* %264)
  %266 = load i32*, i32** %5, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 1
  %270 = call i32 @mp_unsigned_bin_size(i32* %269)
  %271 = call i32 @reverse_bytes(i32* %266, i32 %270)
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = call i32 @mp_unsigned_bin_size(i32* %274)
  %276 = load i32, i32* %7, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %293

278:                                              ; preds = %254
  %279 = load i32*, i32** %5, align 8
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  %283 = call i32 @mp_unsigned_bin_size(i32* %282)
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %279, i64 %284
  %286 = load i32, i32* %7, align 4
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 1
  %290 = call i32 @mp_unsigned_bin_size(i32* %289)
  %291 = sub nsw i32 %286, %290
  %292 = call i32 @memset(i32* %285, i32 0, i32 %291)
  br label %293

293:                                              ; preds = %278, %254
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = call i64 @mp_get_int(i32* %296)
  %298 = trunc i64 %297 to i32
  %299 = load i32*, i32** %8, align 8
  store i32 %298, i32* %299, align 4
  %300 = load i32, i32* @TRUE, align 4
  ret i32 %300
}

declare dso_local i32 @mp_to_unsigned_bin(i32*, i32*) #1

declare dso_local i32 @reverse_bytes(i32*, i32) #1

declare dso_local i32 @mp_unsigned_bin_size(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mp_get_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
