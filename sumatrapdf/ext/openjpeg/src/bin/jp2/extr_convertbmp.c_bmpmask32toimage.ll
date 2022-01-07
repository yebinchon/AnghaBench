; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_bmpmask32toimage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_bmpmask32toimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, %struct.TYPE_5__*, i32, i32, i32, i32)* @bmpmask32toimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmpmask32toimage(i64* %0, i32 %1, %struct.TYPE_5__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i64* null, i64** %20, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %16, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %17, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ugt i32 %45, 3
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @bmp_mask_get_shift_and_prec(i32 %48, i32* %22, i32* %23)
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @bmp_mask_get_shift_and_prec(i32 %50, i32* %24, i32* %25)
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @bmp_mask_get_shift_and_prec(i32 %52, i32* %26, i32* %27)
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @bmp_mask_get_shift_and_prec(i32 %54, i32* %28, i32* %29)
  %56 = load i32, i32* %23, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i32 %56, i32* %61, align 8
  %62 = load i32, i32* %23, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store i32 %62, i32* %67, align 4
  %68 = load i32, i32* %25, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 %68, i32* %73, align 8
  %74 = load i32, i32* %25, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* %27, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 %80, i32* %85, align 8
  %86 = load i32, i32* %27, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* %21, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %7
  %95 = load i32, i32* %29, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  store i32 %95, i32* %100, align 8
  %101 = load i32, i32* %29, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  store i32 %101, i32* %106, align 4
  br label %107

107:                                              ; preds = %94, %7
  store i32 0, i32* %15, align 4
  %108 = load i64*, i64** %8, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sub i32 %109, 1
  %111 = load i32, i32* %9, align 4
  %112 = mul i32 %110, %111
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %108, i64 %113
  store i64* %114, i64** %20, align 8
  store i32 0, i32* %19, align 4
  br label %115

115:                                              ; preds = %248, %107
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %251

119:                                              ; preds = %115
  store i32 0, i32* %18, align 4
  br label %120

120:                                              ; preds = %239, %119
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %242

124:                                              ; preds = %120
  store i32 0, i32* %30, align 4
  %125 = load i64*, i64** %20, align 8
  %126 = load i32, i32* %18, align 4
  %127 = mul i32 4, %126
  %128 = add i32 %127, 0
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %125, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = shl i32 %132, 0
  %134 = load i32, i32* %30, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %30, align 4
  %136 = load i64*, i64** %20, align 8
  %137 = load i32, i32* %18, align 4
  %138 = mul i32 4, %137
  %139 = add i32 %138, 1
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %136, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = shl i32 %143, 8
  %145 = load i32, i32* %30, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %30, align 4
  %147 = load i64*, i64** %20, align 8
  %148 = load i32, i32* %18, align 4
  %149 = mul i32 4, %148
  %150 = add i32 %149, 2
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %147, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = shl i32 %154, 16
  %156 = load i32, i32* %30, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %30, align 4
  %158 = load i64*, i64** %20, align 8
  %159 = load i32, i32* %18, align 4
  %160 = mul i32 4, %159
  %161 = add i32 %160, 3
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %158, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = shl i32 %165, 24
  %167 = load i32, i32* %30, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %30, align 4
  %169 = load i32, i32* %30, align 4
  %170 = load i32, i32* %11, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* %22, align 4
  %173 = lshr i32 %171, %172
  %174 = zext i32 %173 to i64
  %175 = inttoptr i64 %174 to i8*
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  %181 = load i8**, i8*** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  store i8* %175, i8** %184, align 8
  %185 = load i32, i32* %30, align 4
  %186 = load i32, i32* %12, align 4
  %187 = and i32 %185, %186
  %188 = load i32, i32* %24, align 4
  %189 = lshr i32 %187, %188
  %190 = zext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 4
  %197 = load i8**, i8*** %196, align 8
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  store i8* %191, i8** %200, align 8
  %201 = load i32, i32* %30, align 4
  %202 = load i32, i32* %13, align 4
  %203 = and i32 %201, %202
  %204 = load i32, i32* %26, align 4
  %205 = lshr i32 %203, %204
  %206 = zext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 2
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 4
  %213 = load i8**, i8*** %212, align 8
  %214 = load i32, i32* %15, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  store i8* %207, i8** %216, align 8
  %217 = load i32, i32* %21, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %236

219:                                              ; preds = %124
  %220 = load i32, i32* %30, align 4
  %221 = load i32, i32* %14, align 4
  %222 = and i32 %220, %221
  %223 = load i32, i32* %28, align 4
  %224 = lshr i32 %222, %223
  %225 = zext i32 %224 to i64
  %226 = inttoptr i64 %225 to i8*
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i64 3
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 4
  %232 = load i8**, i8*** %231, align 8
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %232, i64 %234
  store i8* %226, i8** %235, align 8
  br label %236

236:                                              ; preds = %219, %124
  %237 = load i32, i32* %15, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %15, align 4
  br label %239

239:                                              ; preds = %236
  %240 = load i32, i32* %18, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %18, align 4
  br label %120

242:                                              ; preds = %120
  %243 = load i32, i32* %9, align 4
  %244 = load i64*, i64** %20, align 8
  %245 = zext i32 %243 to i64
  %246 = sub i64 0, %245
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  store i64* %247, i64** %20, align 8
  br label %248

248:                                              ; preds = %242
  %249 = load i32, i32* %19, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %19, align 4
  br label %115

251:                                              ; preds = %115
  ret void
}

declare dso_local i32 @bmp_mask_get_shift_and_prec(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
