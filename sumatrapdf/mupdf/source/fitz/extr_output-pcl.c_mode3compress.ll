; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_mode3compress.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_mode3compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mode3compress(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %11, align 8
  br label %23

23:                                               ; preds = %144, %4
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %145

27:                                               ; preds = %23
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %12, align 8
  br label %29

29:                                               ; preds = %43, %27
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %36, %39
  br label %41

41:                                               ; preds = %33, %29
  %42 = phi i1 [ false, %29 ], [ %40, %33 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  br label %29

48:                                               ; preds = %41
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %145

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = icmp sgt i64 %59, 8
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  br label %66

64:                                               ; preds = %53
  %65 = load i8*, i8** %11, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i8* [ %63, %61 ], [ %65, %64 ]
  store i8* %67, i8** %14, align 8
  br label %68

68:                                               ; preds = %86, %66
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  %71 = load i8, i8* %69, align 1
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  store i8 %71, i8* %72, align 1
  br label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8*, i8** %7, align 8
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %81, %84
  br label %86

86:                                               ; preds = %78, %74
  %87 = phi i1 [ false, %74 ], [ %85, %78 ]
  br i1 %87, label %68, label %88

88:                                               ; preds = %86
  %89 = load i8*, i8** %13, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %15, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sub nsw i64 %99, 1
  %101 = shl i64 %100, 5
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %103, 31
  br i1 %104, label %105, label %112

105:                                              ; preds = %88
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %106, %107
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %5, align 8
  store i8 %109, i8* %110, align 1
  br label %133

112:                                              ; preds = %88
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 31
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %5, align 8
  store i8 %115, i8* %116, align 1
  %118 = load i32, i32* %15, align 4
  %119 = sub nsw i32 %118, 31
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %123, %112
  %121 = load i32, i32* %15, align 4
  %122 = icmp sge i32 %121, 255
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %5, align 8
  store i8 -1, i8* %124, align 1
  %126 = load i32, i32* %15, align 4
  %127 = sub nsw i32 %126, 255
  store i32 %127, i32* %15, align 4
  br label %120

128:                                              ; preds = %120
  %129 = load i32, i32* %15, align 4
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %5, align 8
  store i8 %130, i8* %131, align 1
  br label %133

133:                                              ; preds = %128, %105
  br label %134

134:                                              ; preds = %138, %133
  %135 = load i8*, i8** %13, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = icmp ult i8* %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i8*, i8** %13, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %13, align 8
  %141 = load i8, i8* %139, align 1
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %5, align 8
  store i8 %141, i8* %142, align 1
  br label %134

144:                                              ; preds = %134
  br label %23

145:                                              ; preds = %52, %23
  %146 = load i8*, i8** %5, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  ret i32 %151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
