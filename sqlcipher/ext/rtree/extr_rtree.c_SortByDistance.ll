; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_SortByDistance.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_SortByDistance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64*, i32*)* @SortByDistance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SortByDistance(i32* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %146

19:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %5, align 8
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i64*, i64** %7, align 8
  %33 = load i32*, i32** %8, align 8
  call void @SortByDistance(i32* %30, i32 %31, i64* %32, i32* %33)
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i64*, i64** %7, align 8
  %37 = load i32*, i32** %8, align 8
  call void @SortByDistance(i32* %34, i32 %35, i64* %36, i32* %37)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32* %38, i32* %39, i32 %43)
  %45 = load i32*, i32** %8, align 8
  store i32* %45, i32** %13, align 8
  br label %46

46:                                               ; preds = %144, %19
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i1 [ true, %46 ], [ %53, %50 ]
  br i1 %55, label %56, label %145

56:                                               ; preds = %54
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %144

74:                                               ; preds = %56
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %143

92:                                               ; preds = %74
  %93 = load i64*, i64** %7, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %93, i64 %99
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %15, align 8
  %102 = load i64*, i64** %7, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %102, i64 %108
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %16, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %16, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %92
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %142

128:                                              ; preds = %92
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  store i32 %133, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %128, %114
  br label %143

143:                                              ; preds = %142, %78
  br label %144

144:                                              ; preds = %143, %60
  br label %46

145:                                              ; preds = %54
  br label %146

146:                                              ; preds = %145, %4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
