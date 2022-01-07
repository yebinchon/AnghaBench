; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_mode2compress.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_mode2compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mode2compress(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %160, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %164

15:                                               ; preds = %11
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 127
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br i1 %26, label %27, label %44

27:                                               ; preds = %25
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %44

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %16

44:                                               ; preds = %39, %25
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 257, %48
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 %50, i8* %55, align 1
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 %58, i8* %63, align 1
  br label %155

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %109, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 127
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 2
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br label %75

75:                                               ; preds = %68, %65
  %76 = phi i1 [ false, %65 ], [ %74, %68 ]
  br i1 %76, label %77, label %112

77:                                               ; preds = %75
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %83, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %77
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %98, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  br label %112

108:                                              ; preds = %92, %77
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %65

112:                                              ; preds = %107, %75
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %113, %114
  %116 = add nsw i32 %115, 2
  %117 = load i32, i32* %6, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp sgt i32 %123, 127
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 127, i32* %9, align 4
  br label %126

126:                                              ; preds = %125, %119
  br label %127

127:                                              ; preds = %126, %112
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 1
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  store i8 %130, i8* %135, align 1
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %151, %127
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = load i8*, i8** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  store i8 %145, i8* %150, align 1
  br label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %136

154:                                              ; preds = %136
  br label %155

155:                                              ; preds = %154, %47
  %156 = load i32, i32* %9, align 4
  %157 = load i8*, i8** %5, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %5, align 8
  br label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %7, align 4
  br label %11

164:                                              ; preds = %11
  %165 = load i32, i32* %8, align 4
  ret i32 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
