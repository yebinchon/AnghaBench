; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-blend.c_fz_saturation_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-blend.c_fz_saturation_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32, i32, i32, i32, i32, i32)* @fz_saturation_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_saturation_rgb(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @fz_mini(i32 %33, i32 %34)
  %36 = call i32 @fz_mini(i32 %32, i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @fz_maxi(i32 %38, i32 %39)
  %41 = call i32 @fz_maxi(i32 %37, i32 %40)
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %20, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %9
  %46 = load i32, i32* %14, align 4
  %47 = call i8* @fz_clampi(i32 %46, i32 0, i32 255)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %10, align 8
  store i8 %50, i8* %51, align 1
  %52 = load i32, i32* %14, align 4
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %11, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i32, i32* %14, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %12, align 8
  store i8 %56, i8* %57, align 1
  br label %198

58:                                               ; preds = %9
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = call i32 @fz_mini(i32 %60, i32 %61)
  %63 = call i32 @fz_mini(i32 %59, i32 %62)
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @fz_maxi(i32 %65, i32 %66)
  %68 = call i32 @fz_maxi(i32 %64, i32 %67)
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %21, align 4
  %71 = sub nsw i32 %69, %70
  %72 = shl i32 %71, 16
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %19, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sdiv i32 %72, %75
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %77, 77
  %79 = load i32, i32* %14, align 4
  %80 = mul nsw i32 %79, 151
  %81 = add nsw i32 %78, %80
  %82 = load i32, i32* %15, align 4
  %83 = mul nsw i32 %82, 28
  %84 = add nsw i32 %81, %83
  %85 = add nsw i32 %84, 128
  %86 = ashr i32 %85, 8
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %23, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32, i32* %24, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %92, 32768
  %94 = ashr i32 %93, 16
  %95 = add nsw i32 %87, %94
  store i32 %95, i32* %25, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %23, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* %24, align 4
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %101, 32768
  %103 = ashr i32 %102, 16
  %104 = add nsw i32 %96, %103
  store i32 %104, i32* %26, align 4
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %23, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load i32, i32* %24, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %110, 32768
  %112 = ashr i32 %111, 16
  %113 = add nsw i32 %105, %112
  store i32 %113, i32* %27, align 4
  %114 = load i32, i32* %25, align 4
  %115 = load i32, i32* %26, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %27, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %118, 256
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %185

121:                                              ; preds = %58
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %27, align 4
  %125 = call i32 @fz_mini(i32 %123, i32 %124)
  %126 = call i32 @fz_mini(i32 %122, i32 %125)
  store i32 %126, i32* %30, align 4
  %127 = load i32, i32* %25, align 4
  %128 = load i32, i32* %26, align 4
  %129 = load i32, i32* %27, align 4
  %130 = call i32 @fz_maxi(i32 %128, i32 %129)
  %131 = call i32 @fz_maxi(i32 %127, i32 %130)
  store i32 %131, i32* %31, align 4
  %132 = load i32, i32* %30, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %121
  %135 = load i32, i32* %23, align 4
  %136 = shl i32 %135, 16
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* %30, align 4
  %139 = sub nsw i32 %137, %138
  %140 = sdiv i32 %136, %139
  store i32 %140, i32* %28, align 4
  br label %142

141:                                              ; preds = %121
  store i32 65536, i32* %28, align 4
  br label %142

142:                                              ; preds = %141, %134
  %143 = load i32, i32* %31, align 4
  %144 = icmp sgt i32 %143, 255
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load i32, i32* %23, align 4
  %147 = sub nsw i32 255, %146
  %148 = shl i32 %147, 16
  %149 = load i32, i32* %31, align 4
  %150 = load i32, i32* %23, align 4
  %151 = sub nsw i32 %149, %150
  %152 = sdiv i32 %148, %151
  store i32 %152, i32* %29, align 4
  br label %154

153:                                              ; preds = %142
  store i32 65536, i32* %29, align 4
  br label %154

154:                                              ; preds = %153, %145
  %155 = load i32, i32* %28, align 4
  %156 = load i32, i32* %29, align 4
  %157 = call i32 @fz_mini(i32 %155, i32 %156)
  store i32 %157, i32* %24, align 4
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %23, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* %24, align 4
  %163 = mul nsw i32 %161, %162
  %164 = add nsw i32 %163, 32768
  %165 = ashr i32 %164, 16
  %166 = add nsw i32 %158, %165
  store i32 %166, i32* %25, align 4
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %26, align 4
  %169 = load i32, i32* %23, align 4
  %170 = sub nsw i32 %168, %169
  %171 = load i32, i32* %24, align 4
  %172 = mul nsw i32 %170, %171
  %173 = add nsw i32 %172, 32768
  %174 = ashr i32 %173, 16
  %175 = add nsw i32 %167, %174
  store i32 %175, i32* %26, align 4
  %176 = load i32, i32* %23, align 4
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* %23, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* %24, align 4
  %181 = mul nsw i32 %179, %180
  %182 = add nsw i32 %181, 32768
  %183 = ashr i32 %182, 16
  %184 = add nsw i32 %176, %183
  store i32 %184, i32* %27, align 4
  br label %185

185:                                              ; preds = %154, %58
  %186 = load i32, i32* %25, align 4
  %187 = call i8* @fz_clampi(i32 %186, i32 0, i32 255)
  %188 = ptrtoint i8* %187 to i8
  %189 = load i8*, i8** %10, align 8
  store i8 %188, i8* %189, align 1
  %190 = load i32, i32* %26, align 4
  %191 = call i8* @fz_clampi(i32 %190, i32 0, i32 255)
  %192 = ptrtoint i8* %191 to i8
  %193 = load i8*, i8** %11, align 8
  store i8 %192, i8* %193, align 1
  %194 = load i32, i32* %27, align 4
  %195 = call i8* @fz_clampi(i32 %194, i32 0, i32 255)
  %196 = ptrtoint i8* %195 to i8
  %197 = load i8*, i8** %12, align 8
  store i8 %196, i8* %197, align 1
  br label %198

198:                                              ; preds = %185, %45
  ret void
}

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i32 @fz_maxi(i32, i32) #1

declare dso_local i8* @fz_clampi(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
