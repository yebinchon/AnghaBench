; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_readStats.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_readStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@HUFv07_readStats.l = internal global [14 x i32] [i32 1, i32 2, i32 3, i32 4, i32 7, i32 8, i32 15, i32 16, i32 31, i32 32, i32 63, i32 64, i32 127, i32 128], align 16
@corruption_detected = common dso_local global i32 0, align 4
@HUFv07_TABLELOG_ABSOLUTEMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUFv07_readStats(i32* %0, i64 %1, i32* %2, i32* %3, i32* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %17, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %7
  %32 = load i32, i32* @srcSize_wrong, align 4
  %33 = call i64 @ERROR(i32 %32)
  store i64 %33, i64* %8, align 8
  br label %247

34:                                               ; preds = %7
  %35 = load i32*, i32** %17, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %18, align 8
  %39 = load i64, i64* %18, align 8
  %40 = icmp uge i64 %39, 128
  br i1 %40, label %41, label %111

41:                                               ; preds = %34
  %42 = load i64, i64* %18, align 8
  %43 = icmp uge i64 %42, 242
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i64, i64* %18, align 8
  %46 = sub i64 %45, 242
  %47 = getelementptr inbounds [14 x i32], [14 x i32]* @HUFv07_readStats.l, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %19, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memset(i32* %50, i32 1, i32 %52)
  store i64 0, i64* %18, align 8
  br label %110

54:                                               ; preds = %41
  %55 = load i64, i64* %18, align 8
  %56 = sub i64 %55, 127
  store i64 %56, i64* %19, align 8
  %57 = load i64, i64* %19, align 8
  %58 = add i64 %57, 1
  %59 = udiv i64 %58, 2
  store i64 %59, i64* %18, align 8
  %60 = load i64, i64* %18, align 8
  %61 = add i64 %60, 1
  %62 = load i64, i64* %15, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @srcSize_wrong, align 4
  %66 = call i64 @ERROR(i32 %65)
  store i64 %66, i64* %8, align 8
  br label %247

67:                                               ; preds = %54
  %68 = load i64, i64* %19, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @corruption_detected, align 4
  %73 = call i64 @ERROR(i32 %72)
  store i64 %73, i64* %8, align 8
  br label %247

74:                                               ; preds = %67
  %75 = load i32*, i32** %17, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32* %76, i32** %17, align 8
  store i32 0, i32* %20, align 4
  br label %77

77:                                               ; preds = %106, %74
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %19, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* %20, align 4
  %85 = sdiv i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = load i32*, i32** %17, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sdiv i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 15
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %100, i32* %105, align 4
  br label %106

106:                                              ; preds = %82
  %107 = load i32, i32* %20, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %20, align 4
  br label %77

109:                                              ; preds = %77
  br label %110

110:                                              ; preds = %109, %44
  br label %133

111:                                              ; preds = %34
  %112 = load i64, i64* %18, align 8
  %113 = add i64 %112, 1
  %114 = load i64, i64* %15, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @srcSize_wrong, align 4
  %118 = call i64 @ERROR(i32 %117)
  store i64 %118, i64* %8, align 8
  br label %247

119:                                              ; preds = %111
  %120 = load i32*, i32** %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = sub i64 %121, 1
  %123 = load i32*, i32** %17, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i64, i64* %18, align 8
  %126 = call i64 @FSEv07_decompress(i32* %120, i64 %122, i32* %124, i64 %125)
  store i64 %126, i64* %19, align 8
  %127 = load i64, i64* %19, align 8
  %128 = call i64 @FSEv07_isError(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = load i64, i64* %19, align 8
  store i64 %131, i64* %8, align 8
  br label %247

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %110
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* @HUFv07_TABLELOG_ABSOLUTEMAX, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memset(i32* %134, i32 0, i32 %139)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %141

141:                                              ; preds = %177, %133
  %142 = load i32, i32* %21, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %19, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %180

146:                                              ; preds = %141
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @HUFv07_TABLELOG_ABSOLUTEMAX, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i32, i32* @corruption_detected, align 4
  %156 = call i64 @ERROR(i32 %155)
  store i64 %156, i64* %8, align 8
  br label %247

157:                                              ; preds = %146
  %158 = load i32*, i32** %11, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %158, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %21, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 1, %172
  %174 = ashr i32 %173, 1
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %16, align 4
  br label %177

177:                                              ; preds = %157
  %178 = load i32, i32* %21, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %21, align 4
  br label %141

180:                                              ; preds = %141
  %181 = load i32, i32* %16, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* @corruption_detected, align 4
  %185 = call i64 @ERROR(i32 %184)
  store i64 %185, i64* %8, align 8
  br label %247

186:                                              ; preds = %180
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @BITv07_highbit32(i32 %187)
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %22, align 4
  %190 = load i32, i32* %22, align 4
  %191 = load i32, i32* @HUFv07_TABLELOG_ABSOLUTEMAX, align 4
  %192 = icmp sgt i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load i32, i32* @corruption_detected, align 4
  %195 = call i64 @ERROR(i32 %194)
  store i64 %195, i64* %8, align 8
  br label %247

196:                                              ; preds = %186
  %197 = load i32, i32* %22, align 4
  %198 = load i32*, i32** %13, align 8
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* %22, align 4
  %200 = shl i32 1, %199
  store i32 %200, i32* %23, align 4
  %201 = load i32, i32* %23, align 4
  %202 = load i32, i32* %16, align 4
  %203 = sub nsw i32 %201, %202
  store i32 %203, i32* %24, align 4
  %204 = load i32, i32* %24, align 4
  %205 = call i32 @BITv07_highbit32(i32 %204)
  %206 = shl i32 1, %205
  store i32 %206, i32* %25, align 4
  %207 = load i32, i32* %24, align 4
  %208 = call i32 @BITv07_highbit32(i32 %207)
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %26, align 4
  %210 = load i32, i32* %25, align 4
  %211 = load i32, i32* %24, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %196
  %214 = load i32, i32* @corruption_detected, align 4
  %215 = call i64 @ERROR(i32 %214)
  store i64 %215, i64* %8, align 8
  br label %247

216:                                              ; preds = %196
  %217 = load i32, i32* %26, align 4
  %218 = load i32*, i32** %9, align 8
  %219 = load i64, i64* %19, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32 %217, i32* %220, align 4
  %221 = load i32*, i32** %11, align 8
  %222 = load i32, i32* %26, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4
  %227 = load i32*, i32** %11, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %229, 2
  br i1 %230, label %237, label %231

231:                                              ; preds = %216
  %232 = load i32*, i32** %11, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 1
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %231, %216
  %238 = load i32, i32* @corruption_detected, align 4
  %239 = call i64 @ERROR(i32 %238)
  store i64 %239, i64* %8, align 8
  br label %247

240:                                              ; preds = %231
  %241 = load i64, i64* %19, align 8
  %242 = add i64 %241, 1
  %243 = trunc i64 %242 to i32
  %244 = load i32*, i32** %12, align 8
  store i32 %243, i32* %244, align 4
  %245 = load i64, i64* %18, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %8, align 8
  br label %247

247:                                              ; preds = %240, %237, %213, %193, %183, %154, %130, %116, %71, %64, %31
  %248 = load i64, i64* %8, align 8
  ret i64 %248
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @FSEv07_decompress(i32*, i64, i32*, i64) #1

declare dso_local i64 @FSEv07_isError(i64) #1

declare dso_local i32 @BITv07_highbit32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
