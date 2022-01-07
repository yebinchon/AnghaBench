; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_idwt3_v_cas1.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_idwt3_v_cas1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i64)* @opj_idwt3_v_cas1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_idwt3_v_cas1(i32* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %10, align 8
  %23 = mul i64 %21, %22
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  store i32* %24, i32** %17, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32* %26, i32** %18, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 2
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %17, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32*, i32** %18, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %17, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %40, %41
  %43 = add nsw i32 %42, 2
  %44 = ashr i32 %43, 2
  %45 = sub nsw i32 %37, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32*, i32** %17, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %104, %5
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 2
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = sub nsw i32 %56, %61
  %63 = icmp slt i32 %54, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %53
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %10, align 8
  %70 = mul i64 %68, %69
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32*, i32** %18, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %10, align 8
  %77 = mul i64 %75, %76
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %80, %81
  %83 = add nsw i32 %82, 2
  %84 = ashr i32 %83, 2
  %85 = sub nsw i32 %79, %84
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %92, %93
  %95 = ashr i32 %94, 1
  %96 = add nsw i32 %91, %95
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* %16, align 4
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %64
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %53

109:                                              ; preds = %53
  %110 = load i32, i32* %15, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %149, label %118

118:                                              ; preds = %109
  %119 = load i32*, i32** %18, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sdiv i32 %120, 2
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %10, align 8
  %125 = mul i64 %123, %124
  %126 = getelementptr inbounds i32, i32* %119, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  %130 = ashr i32 %129, 1
  %131 = sub nsw i32 %127, %130
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %133, %134
  %136 = ashr i32 %135, 1
  %137 = add nsw i32 %132, %136
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sub nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %137, i32* %142, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %143, i32* %148, align 4
  br label %158

149:                                              ; preds = %109
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  store i32 %152, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %118
  store i32 0, i32* %11, align 4
  br label %159

159:                                              ; preds = %175, %158
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %10, align 8
  %173 = mul i64 %171, %172
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  store i32 %168, i32* %174, align 4
  br label %175

175:                                              ; preds = %163
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  br label %159

178:                                              ; preds = %159
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
