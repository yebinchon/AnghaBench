; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_countDiffRLE8.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_countDiffRLE8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i64, i64, i64)* @countDiffRLE8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @countDiffRLE8(i32* %0, i32* %1, i32* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %16

16:                                               ; preds = %133, %6
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %138

20:                                               ; preds = %16
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ColorCmp(i32 %24, i32 %28)
  %30 = load i64, i64* %12, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %20
  %33 = load i64, i64* %11, align 8
  %34 = add nsw i64 %33, 1
  %35 = load i64, i64* %13, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, 1
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ColorCmp(i32 %41, i32 %46)
  %48 = load i64, i64* %12, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i64, i64* %14, align 8
  %52 = sub nsw i64 %51, 1
  store i64 %52, i64* %7, align 8
  br label %140

53:                                               ; preds = %37, %32
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 2
  %56 = load i64, i64* %13, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load i32*, i32** %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add nsw i64 %60, 1
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = add nsw i64 %65, 2
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @ColorCmp(i32 %63, i32 %68)
  %70 = load i64, i64* %12, align 8
  %71 = icmp sle i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load i64, i64* %14, align 8
  %74 = sub nsw i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %140

75:                                               ; preds = %58, %53
  br label %132

76:                                               ; preds = %20
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %131

79:                                               ; preds = %76
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ColorCmp(i32 %83, i32 %87)
  %89 = load i64, i64* %12, align 8
  %90 = icmp sle i64 %88, %89
  br i1 %90, label %91, label %131

91:                                               ; preds = %79
  store i64 0, i64* %15, align 8
  store i64 0, i64* %15, align 8
  %92 = load i64, i64* %11, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %117, %91
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %13, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, i64* %15, align 8
  %100 = icmp sle i64 %99, 5
  br label %101

101:                                              ; preds = %98, %94
  %102 = phi i1 [ false, %94 ], [ %100, %98 ]
  br i1 %102, label %103, label %122

103:                                              ; preds = %101
  %104 = load i32*, i32** %8, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @ColorCmp(i32 %107, i32 %111)
  %113 = load i64, i64* %12, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %122

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %11, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %11, align 8
  %120 = load i64, i64* %15, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %15, align 8
  br label %94

122:                                              ; preds = %115, %101
  %123 = load i64, i64* %15, align 8
  %124 = icmp sgt i64 %123, 4
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i64, i64* %14, align 8
  store i64 %126, i64* %7, align 8
  br label %140

127:                                              ; preds = %122
  %128 = load i64, i64* %15, align 8
  %129 = load i64, i64* %11, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %11, align 8
  br label %131

131:                                              ; preds = %127, %79, %76
  br label %132

132:                                              ; preds = %131, %75
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %11, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %11, align 8
  %136 = load i64, i64* %14, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %14, align 8
  br label %16

138:                                              ; preds = %16
  %139 = load i64, i64* %14, align 8
  store i64 %139, i64* %7, align 8
  br label %140

140:                                              ; preds = %138, %125, %72, %50
  %141 = load i64, i64* %7, align 8
  ret i64 %141
}

declare dso_local i64 @ColorCmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
