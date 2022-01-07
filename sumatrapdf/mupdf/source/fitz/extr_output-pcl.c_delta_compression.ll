; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_delta_compression.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_delta_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32)* @delta_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_compression(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %142, %5
  %21 = load i32, i32* %13, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %143

23:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %13, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %30, %33
  br label %35

35:                                               ; preds = %27, %24
  %36 = phi i1 [ false, %24 ], [ %34, %27 ]
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %13, align 4
  br label %24

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %53, %56
  br label %58

58:                                               ; preds = %50, %47
  %59 = phi i1 [ false, %47 ], [ %57, %50 ]
  br i1 %59, label %60, label %69

60:                                               ; preds = %58
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %13, align 4
  br label %47

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %126, %69
  %71 = load i32, i32* %15, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %142

73:                                               ; preds = %70
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp sgt i32 %75, 8
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 8, i32* %17, align 4
  br label %78

78:                                               ; preds = %77, %73
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 255
  %81 = sub nsw i32 %80, 31
  %82 = sdiv i32 %81, 255
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 1, %83
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %147

92:                                               ; preds = %78
  %93 = load i32, i32* %17, align 4
  %94 = sub nsw i32 %93, 1
  %95 = shl i32 %94, 5
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 31
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %14, align 4
  br label %101

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 31, %100 ]
  %103 = or i32 %95, %102
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %9, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i32, i32* %16, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %101
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %110, 31
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %116, %109
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %9, align 8
  store i8 -1, i8* %117, align 1
  %119 = load i32, i32* %14, align 4
  %120 = sub nsw i32 %119, 255
  store i32 %120, i32* %14, align 4
  br label %112

121:                                              ; preds = %112
  %122 = load i32, i32* %14, align 4
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %9, align 8
  store i8 %123, i8* %124, align 1
  br label %126

126:                                              ; preds = %121, %101
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 0, %130
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @memcpy(i8* %127, i8* %132, i32 %133)
  %135 = load i32, i32* %17, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %9, align 8
  store i32 0, i32* %14, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %15, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %15, align 4
  br label %70

142:                                              ; preds = %70
  br label %20

143:                                              ; preds = %20
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %144, %145
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %143, %91
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
