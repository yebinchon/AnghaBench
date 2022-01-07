; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_enc.c_FTransform_C.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_enc.c_FTransform_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @FTransform_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FTransform_C(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %107, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %118

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %65, %66
  %68 = mul nsw i32 %67, 8
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 4
  %71 = add nsw i32 0, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* %15, align 4
  %75 = mul nsw i32 %74, 2217
  %76 = load i32, i32* %16, align 4
  %77 = mul nsw i32 %76, 5352
  %78 = add nsw i32 %75, %77
  %79 = add nsw i32 %78, 1812
  %80 = ashr i32 %79, 9
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %81, 4
  %83 = add nsw i32 1, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %86, %87
  %89 = mul nsw i32 %88, 8
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %90, 4
  %92 = add nsw i32 2, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %93
  store i32 %89, i32* %94, align 4
  %95 = load i32, i32* %16, align 4
  %96 = mul nsw i32 %95, 2217
  %97 = load i32, i32* %15, align 4
  %98 = mul nsw i32 %97, 5352
  %99 = sub nsw i32 %96, %98
  %100 = add nsw i32 %99, 937
  %101 = ashr i32 %100, 9
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 %102, 4
  %104 = add nsw i32 3, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %105
  store i32 %101, i32* %106, align 4
  br label %107

107:                                              ; preds = %24
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @BPS, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %4, align 8
  %114 = load i32, i32* @BPS, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %5, align 8
  br label %21

118:                                              ; preds = %21
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %215, %118
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 4
  br i1 %121, label %122, label %218

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 0, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 12, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %127, %132
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 4, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 8, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %138, %143
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 4, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 8, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %149, %154
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 0, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 12, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %160, %165
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %167, %168
  %170 = add nsw i32 %169, 7
  %171 = ashr i32 %170, 4
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 0, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* %19, align 4
  %178 = mul nsw i32 %177, 2217
  %179 = load i32, i32* %20, align 4
  %180 = mul nsw i32 %179, 5352
  %181 = add nsw i32 %178, %180
  %182 = add nsw i32 %181, 12000
  %183 = ashr i32 %182, 16
  %184 = load i32, i32* %20, align 4
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = add nsw i32 %183, %186
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 4, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  store i32 %187, i32* %192, align 4
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %18, align 4
  %195 = sub nsw i32 %193, %194
  %196 = add nsw i32 %195, 7
  %197 = ashr i32 %196, 4
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 8, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  store i32 %197, i32* %202, align 4
  %203 = load i32, i32* %20, align 4
  %204 = mul nsw i32 %203, 2217
  %205 = load i32, i32* %19, align 4
  %206 = mul nsw i32 %205, 5352
  %207 = sub nsw i32 %204, %206
  %208 = add nsw i32 %207, 51000
  %209 = ashr i32 %208, 16
  %210 = load i32*, i32** %6, align 8
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 12, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store i32 %209, i32* %214, align 4
  br label %215

215:                                              ; preds = %122
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %119

218:                                              ; preds = %119
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
