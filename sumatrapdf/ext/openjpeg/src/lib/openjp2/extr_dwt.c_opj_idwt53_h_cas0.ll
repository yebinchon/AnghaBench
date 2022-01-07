; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_idwt53_h_cas0.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_idwt53_h_cas0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64, i64*)* @opj_idwt53_h_cas0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_idwt53_h_cas0(i64* %0, i64 %1, i64 %2, i64* %3) #0 {
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
  %17 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64* %19, i64** %11, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64* %22, i64** %12, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ugt i64 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64*, i64** %11, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %15, align 8
  %30 = load i64*, i64** %12, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %14, align 8
  %35 = add i64 %34, 1
  %36 = lshr i64 %35, 1
  %37 = sub i64 %33, %36
  store i64 %37, i64* %17, align 8
  store i64 0, i64* %9, align 8
  store i64 1, i64* %10, align 8
  br label %38

38:                                               ; preds = %75, %4
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 3
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %38
  %44 = load i64, i64* %14, align 8
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %17, align 8
  store i64 %45, i64* %16, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %15, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = add i64 %55, %56
  %58 = add i64 %57, 2
  %59 = lshr i64 %58, 2
  %60 = sub i64 %54, %59
  store i64 %60, i64* %17, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %17, align 8
  %68 = add i64 %66, %67
  %69 = lshr i64 %68, 1
  %70 = add i64 %65, %69
  %71 = load i64*, i64** %5, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %70, i64* %74, align 8
  br label %75

75:                                               ; preds = %43
  %76 = load i64, i64* %9, align 8
  %77 = add i64 %76, 2
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %10, align 8
  br label %38

80:                                               ; preds = %38
  %81 = load i64, i64* %17, align 8
  %82 = load i64*, i64** %5, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %81, i64* %84, align 8
  %85 = load i64, i64* %7, align 8
  %86 = and i64 %85, 1
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %80
  %89 = load i64*, i64** %11, align 8
  %90 = load i64, i64* %7, align 8
  %91 = sub i64 %90, 1
  %92 = udiv i64 %91, 2
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = add i64 %95, 1
  %97 = lshr i64 %96, 1
  %98 = sub i64 %94, %97
  %99 = load i64*, i64** %5, align 8
  %100 = load i64, i64* %7, align 8
  %101 = sub i64 %100, 1
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %98, i64* %102, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %17, align 8
  %105 = load i64*, i64** %5, align 8
  %106 = load i64, i64* %7, align 8
  %107 = sub i64 %106, 1
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %104, %109
  %111 = lshr i64 %110, 1
  %112 = add i64 %103, %111
  %113 = load i64*, i64** %5, align 8
  %114 = load i64, i64* %7, align 8
  %115 = sub i64 %114, 2
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  store i64 %112, i64* %116, align 8
  br label %125

117:                                              ; preds = %80
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %17, align 8
  %120 = add i64 %118, %119
  %121 = load i64*, i64** %5, align 8
  %122 = load i64, i64* %7, align 8
  %123 = sub i64 %122, 1
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 %120, i64* %124, align 8
  br label %125

125:                                              ; preds = %117, %88
  %126 = load i64*, i64** %8, align 8
  %127 = load i64*, i64** %5, align 8
  %128 = load i64, i64* %7, align 8
  %129 = trunc i64 %128 to i32
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memcpy(i64* %126, i64* %127, i32 %132)
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
