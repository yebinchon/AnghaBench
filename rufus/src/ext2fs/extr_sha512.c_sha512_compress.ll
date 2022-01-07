; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_sha512.c_sha512_compress.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_sha512.c_sha512_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_state*, i8*)* @sha512_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha512_compress(%struct.hash_state* %0, i8* %1) #0 {
  %3 = alloca %struct.hash_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [8 x i64], align 16
  %6 = alloca [80 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hash_state* %0, %struct.hash_state** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %15 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %23
  store i64 %21, i64* %24, align 8
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [80 x i64], [80 x i64]* %6, i64 0, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 8, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = call i32 @LOAD64H(i64 %36, i8* %41)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %29

46:                                               ; preds = %29
  store i32 16, i32* %9, align 4
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 80
  br i1 %49, label %50, label %82

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [80 x i64], [80 x i64]* %6, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @Gamma1(i64 %55)
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [80 x i64], [80 x i64]* %6, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 15
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [80 x i64], [80 x i64]* %6, i64 0, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @Gamma0(i64 %67)
  %69 = add nsw i64 %62, %68
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, 16
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [80 x i64], [80 x i64]* %6, i64 0, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %69, %74
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [80 x i64], [80 x i64]* %6, i64 0, i64 %77
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %50
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %47

82:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %239, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 80
  br i1 %85, label %86, label %242

86:                                               ; preds = %83
  %87 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %88 = load i64, i64* %87, align 16
  %89 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2
  %92 = load i64, i64* %91, align 16
  %93 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4
  %96 = load i64, i64* %95, align 16
  %97 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6
  %100 = load i64, i64* %99, align 16
  %101 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 0
  %105 = call i32 @RND(i64 %88, i64 %90, i64 %92, i64 %94, i64 %96, i64 %98, i64 %100, i64 %102, i32 %104)
  %106 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %109 = load i64, i64* %108, align 16
  %110 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2
  %113 = load i64, i64* %112, align 16
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4
  %117 = load i64, i64* %116, align 16
  %118 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6
  %121 = load i64, i64* %120, align 16
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @RND(i64 %107, i64 %109, i64 %111, i64 %113, i64 %115, i64 %117, i64 %119, i64 %121, i32 %123)
  %125 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6
  %126 = load i64, i64* %125, align 16
  %127 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %130 = load i64, i64* %129, align 16
  %131 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2
  %134 = load i64, i64* %133, align 16
  %135 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4
  %138 = load i64, i64* %137, align 16
  %139 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 2
  %143 = call i32 @RND(i64 %126, i64 %128, i64 %130, i64 %132, i64 %134, i64 %136, i64 %138, i64 %140, i32 %142)
  %144 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6
  %147 = load i64, i64* %146, align 16
  %148 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %151 = load i64, i64* %150, align 16
  %152 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2
  %155 = load i64, i64* %154, align 16
  %156 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4
  %159 = load i64, i64* %158, align 16
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 3
  %162 = call i32 @RND(i64 %145, i64 %147, i64 %149, i64 %151, i64 %153, i64 %155, i64 %157, i64 %159, i32 %161)
  %163 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4
  %164 = load i64, i64* %163, align 16
  %165 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6
  %168 = load i64, i64* %167, align 16
  %169 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %172 = load i64, i64* %171, align 16
  %173 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2
  %176 = load i64, i64* %175, align 16
  %177 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 4
  %181 = call i32 @RND(i64 %164, i64 %166, i64 %168, i64 %170, i64 %172, i64 %174, i64 %176, i64 %178, i32 %180)
  %182 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4
  %185 = load i64, i64* %184, align 16
  %186 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6
  %189 = load i64, i64* %188, align 16
  %190 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %193 = load i64, i64* %192, align 16
  %194 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2
  %197 = load i64, i64* %196, align 16
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 5
  %200 = call i32 @RND(i64 %183, i64 %185, i64 %187, i64 %189, i64 %191, i64 %193, i64 %195, i64 %197, i32 %199)
  %201 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2
  %202 = load i64, i64* %201, align 16
  %203 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4
  %206 = load i64, i64* %205, align 16
  %207 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6
  %210 = load i64, i64* %209, align 16
  %211 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %214 = load i64, i64* %213, align 16
  %215 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 6
  %219 = call i32 @RND(i64 %202, i64 %204, i64 %206, i64 %208, i64 %210, i64 %212, i64 %214, i64 %216, i32 %218)
  %220 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2
  %223 = load i64, i64* %222, align 16
  %224 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4
  %227 = load i64, i64* %226, align 16
  %228 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6
  %231 = load i64, i64* %230, align 16
  %232 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0
  %235 = load i64, i64* %234, align 16
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, 7
  %238 = call i32 @RND(i64 %221, i64 %223, i64 %225, i64 %227, i64 %229, i64 %231, i64 %233, i64 %235, i32 %237)
  br label %239

239:                                              ; preds = %86
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 8
  store i32 %241, i32* %9, align 4
  br label %83

242:                                              ; preds = %83
  store i32 0, i32* %9, align 4
  br label %243

243:                                              ; preds = %267, %242
  %244 = load i32, i32* %9, align 4
  %245 = icmp slt i32 %244, 8
  br i1 %245, label %246, label %270

246:                                              ; preds = %243
  %247 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %248 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i64*, i64** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %254, %258
  %260 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %261 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i64*, i64** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  store i64 %259, i64* %266, align 8
  br label %267

267:                                              ; preds = %246
  %268 = load i32, i32* %9, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %9, align 4
  br label %243

270:                                              ; preds = %243
  ret void
}

declare dso_local i32 @LOAD64H(i64, i8*) #1

declare dso_local i64 @Gamma1(i64) #1

declare dso_local i64 @Gamma0(i64) #1

declare dso_local i32 @RND(i64, i64, i64, i64, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
