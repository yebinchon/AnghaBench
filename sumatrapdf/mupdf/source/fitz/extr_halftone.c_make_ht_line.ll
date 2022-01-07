; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_halftone.c_make_ht_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_halftone.c_make_ht_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*, i32, i32, i32)* @make_ht_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_ht_line(i8* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %166, %5
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %169

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %13, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  store i8* %38, i8** %14, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %18, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %19, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %19, align 4
  %59 = srem i32 %57, %58
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %30
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %62, %30
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %20, align 4
  %69 = srem i32 %67, %68
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = mul nsw i32 %86, %87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  store i8* %90, i8** %16, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8* %94, i8** %15, align 8
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %17, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %22, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %76
  %102 = load i32, i32* %21, align 4
  store i32 %102, i32* %22, align 4
  br label %103

103:                                              ; preds = %101, %76
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %21, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %21, align 4
  br label %107

107:                                              ; preds = %111, %103
  %108 = load i32, i32* %22, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %22, align 4
  %110 = icmp ne i32 %108, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i8*, i8** %15, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %15, align 8
  %114 = load i8, i8* %112, align 1
  %115 = load i8*, i8** %14, align 8
  store i8 %114, i8* %115, align 1
  %116 = load i32, i32* %12, align 4
  %117 = load i8*, i8** %14, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %14, align 8
  br label %107

120:                                              ; preds = %107
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %21, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %21, align 4
  br label %124

124:                                              ; preds = %143, %120
  %125 = load i32, i32* %21, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %124
  %128 = load i32, i32* %19, align 4
  store i32 %128, i32* %22, align 4
  %129 = load i8*, i8** %16, align 8
  store i8* %129, i8** %15, align 8
  br label %130

130:                                              ; preds = %134, %127
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %22, align 4
  %133 = icmp ne i32 %131, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i8*, i8** %15, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %15, align 8
  %137 = load i8, i8* %135, align 1
  %138 = load i8*, i8** %14, align 8
  store i8 %137, i8* %138, align 1
  %139 = load i32, i32* %12, align 4
  %140 = load i8*, i8** %14, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %14, align 8
  br label %130

143:                                              ; preds = %130
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %21, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %21, align 4
  br label %124

147:                                              ; preds = %124
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %21, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %21, align 4
  %151 = load i8*, i8** %16, align 8
  store i8* %151, i8** %15, align 8
  br label %152

152:                                              ; preds = %156, %147
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %21, align 4
  %155 = icmp ne i32 %153, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i8*, i8** %15, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %15, align 8
  %159 = load i8, i8* %157, align 1
  %160 = load i8*, i8** %14, align 8
  store i8 %159, i8* %160, align 1
  %161 = load i32, i32* %12, align 4
  %162 = load i8*, i8** %14, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %14, align 8
  br label %152

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %26

169:                                              ; preds = %26
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
