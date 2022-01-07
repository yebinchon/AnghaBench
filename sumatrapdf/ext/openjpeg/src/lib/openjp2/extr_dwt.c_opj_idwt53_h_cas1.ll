; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_idwt53_h_cas1.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_idwt53_h_cas1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64, i64*)* @opj_idwt53_h_cas1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_idwt53_h_cas1(i64* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64* %19, i64** %11, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64* %21, i64** %12, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ugt i64 %22, 2
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64*, i64** %11, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i64*, i64** %12, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %11, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %13, align 8
  %36 = add i64 %34, %35
  %37 = add i64 %36, 2
  %38 = lshr i64 %37, 2
  %39 = sub i64 %31, %38
  store i64 %39, i64* %15, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %15, align 8
  %44 = add i64 %42, %43
  %45 = load i64*, i64** %5, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %44, i64* %46, align 8
  store i64 1, i64* %9, align 8
  store i64 1, i64* %10, align 8
  br label %47

47:                                               ; preds = %91, %4
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, 2
  %51 = load i64, i64* %7, align 8
  %52 = and i64 %51, 1
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = sub i64 %50, %56
  %58 = icmp ult i64 %48, %57
  br i1 %58, label %59, label %96

59:                                               ; preds = %47
  %60 = load i64*, i64** %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %14, align 8
  %65 = load i64*, i64** %12, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = add i64 %69, %70
  %72 = add i64 %71, 2
  %73 = lshr i64 %72, 2
  %74 = sub i64 %68, %73
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 %75, i64* %78, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %15, align 8
  %82 = add i64 %80, %81
  %83 = lshr i64 %82, 1
  %84 = add i64 %79, %83
  %85 = load i64*, i64** %5, align 8
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %84, i64* %88, align 8
  %89 = load i64, i64* %16, align 8
  store i64 %89, i64* %15, align 8
  %90 = load i64, i64* %14, align 8
  store i64 %90, i64* %13, align 8
  br label %91

91:                                               ; preds = %59
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, 2
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %10, align 8
  br label %47

96:                                               ; preds = %47
  %97 = load i64, i64* %15, align 8
  %98 = load i64*, i64** %5, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* %7, align 8
  %102 = and i64 %101, 1
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %130, label %104

104:                                              ; preds = %96
  %105 = load i64*, i64** %12, align 8
  %106 = load i64, i64* %7, align 8
  %107 = udiv i64 %106, 2
  %108 = sub i64 %107, 1
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, 1
  %113 = lshr i64 %112, 1
  %114 = sub i64 %110, %113
  store i64 %114, i64* %16, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* %15, align 8
  %118 = add i64 %116, %117
  %119 = lshr i64 %118, 1
  %120 = add i64 %115, %119
  %121 = load i64*, i64** %5, align 8
  %122 = load i64, i64* %7, align 8
  %123 = sub i64 %122, 2
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 %120, i64* %124, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64*, i64** %5, align 8
  %127 = load i64, i64* %7, align 8
  %128 = sub i64 %127, 1
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %125, i64* %129, align 8
  br label %138

130:                                              ; preds = %96
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %15, align 8
  %133 = add i64 %131, %132
  %134 = load i64*, i64** %5, align 8
  %135 = load i64, i64* %7, align 8
  %136 = sub i64 %135, 1
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 %133, i64* %137, align 8
  br label %138

138:                                              ; preds = %130, %104
  %139 = load i64*, i64** %8, align 8
  %140 = load i64*, i64** %5, align 8
  %141 = load i64, i64* %7, align 8
  %142 = trunc i64 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @memcpy(i64* %139, i64* %140, i32 %145)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
