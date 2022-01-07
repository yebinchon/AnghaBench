; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_ftoa.c_digit_gen_mix_grisu2.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_ftoa.c_digit_gen_mix_grisu2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i8*, i32*)* @digit_gen_mix_grisu2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digit_gen_mix_grisu2(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = bitcast %struct.TYPE_4__* %8 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %0, i64* %21, align 4
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %1, i64* %22, align 4
  %23 = bitcast %struct.TYPE_4__* %9 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  store i64 %2, i64* %24, align 4
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  store i64 %3, i64* %25, align 4
  store i8* %4, i8** %10, align 8
  store i32* %5, i32** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 0, %28
  %30 = shl i32 1, %29
  store i32 %30, i32* %26, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i8 0, i8* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %37 = load i8, i8* %36, align 4
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  %42 = ashr i32 %38, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %14, align 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %45 = load i8, i8* %44, align 4
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %48 = load i8, i8* %47, align 4
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %46, %50
  store i32 %51, i32* %15, align 4
  store i8 10, i8* %16, align 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %53 = load i8, i8* %52, align 4
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 2, i32* %12, align 4
  br label %56

56:                                               ; preds = %113, %6
  %57 = load i32, i32* %12, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %116

59:                                               ; preds = %56
  %60 = load i8, i8* %14, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %16, align 1
  %63 = zext i8 %62 to i32
  %64 = sdiv i32 %61, %63
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %19, align 1
  %66 = load i8, i8* %19, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69, %59
  %73 = load i8, i8* %19, align 1
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 48, %74
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %18, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 %76, i8* %81, align 1
  br label %82

82:                                               ; preds = %72, %69
  %83 = load i8, i8* %16, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %14, align 1
  %86 = zext i8 %85 to i32
  %87 = srem i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %14, align 1
  %89 = load i8, i8* %16, align 1
  %90 = zext i8 %89 to i32
  %91 = sdiv i32 %90, 10
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %16, align 1
  %93 = load i8, i8* %14, align 1
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 0, %96
  %98 = shl i32 %94, %97
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %98, %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %102 = load i8, i8* %101, align 4
  %103 = zext i8 %102 to i32
  %104 = icmp sle i32 %100, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %82
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %107
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %18, align 4
  store i32 %111, i32* %7, align 4
  br label %154

112:                                              ; preds = %82
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %12, align 4
  br label %56

116:                                              ; preds = %56
  br label %117

117:                                              ; preds = %142, %116
  %118 = load i32, i32* %15, align 4
  %119 = mul nsw i32 %118, 10
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 0, %122
  %124 = ashr i32 %120, %123
  %125 = add nsw i32 48, %124
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 %126, i8* %131, align 1
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %15, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %12, align 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %138 = load i8, i8* %137, align 4
  %139 = zext i8 %138 to i32
  %140 = mul nsw i32 %139, 10
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %137, align 4
  br label %142

142:                                              ; preds = %117
  %143 = load i32, i32* %15, align 4
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %145 = load i8, i8* %144, align 4
  %146 = zext i8 %145 to i32
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %117, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %12, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %149
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %18, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %148, %105
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
