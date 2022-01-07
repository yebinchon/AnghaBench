; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_rle_write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_rle_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rle = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i64)* @rle_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rle_write(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rle*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.rle*
  store %struct.rle* %13, %struct.rle** %9, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %167, %4
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %8, align 8
  %18 = icmp ugt i64 %16, 0
  br i1 %18, label %19, label %168

19:                                               ; preds = %15
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %10, align 8
  %22 = load i8, i8* %20, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load %struct.rle*, %struct.rle** %9, align 8
  %25 = getelementptr inbounds %struct.rle, %struct.rle* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %167 [
    i32 128, label %27
    i32 130, label %37
    i32 131, label %47
    i32 129, label %135
  ]

27:                                               ; preds = %19
  %28 = load %struct.rle*, %struct.rle** %9, align 8
  %29 = getelementptr inbounds %struct.rle, %struct.rle* %28, i32 0, i32 0
  store i32 130, i32* %29, align 8
  %30 = load %struct.rle*, %struct.rle** %9, align 8
  %31 = getelementptr inbounds %struct.rle, %struct.rle* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.rle*, %struct.rle** %9, align 8
  %34 = getelementptr inbounds %struct.rle, %struct.rle* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  br label %167

37:                                               ; preds = %19
  %38 = load %struct.rle*, %struct.rle** %9, align 8
  %39 = getelementptr inbounds %struct.rle, %struct.rle* %38, i32 0, i32 0
  store i32 131, i32* %39, align 8
  %40 = load %struct.rle*, %struct.rle** %9, align 8
  %41 = getelementptr inbounds %struct.rle, %struct.rle* %40, i32 0, i32 1
  store i32 2, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.rle*, %struct.rle** %9, align 8
  %44 = getelementptr inbounds %struct.rle, %struct.rle* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  br label %167

47:                                               ; preds = %19
  %48 = load %struct.rle*, %struct.rle** %9, align 8
  %49 = getelementptr inbounds %struct.rle, %struct.rle* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 128
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.rle*, %struct.rle** %9, align 8
  %55 = call i32 @rle_flush_diff(i32* %53, %struct.rle* %54)
  %56 = load %struct.rle*, %struct.rle** %9, align 8
  %57 = getelementptr inbounds %struct.rle, %struct.rle* %56, i32 0, i32 0
  store i32 130, i32* %57, align 8
  %58 = load %struct.rle*, %struct.rle** %9, align 8
  %59 = getelementptr inbounds %struct.rle, %struct.rle* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.rle*, %struct.rle** %9, align 8
  %62 = getelementptr inbounds %struct.rle, %struct.rle* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  br label %134

65:                                               ; preds = %47
  %66 = load %struct.rle*, %struct.rle** %9, align 8
  %67 = getelementptr inbounds %struct.rle, %struct.rle* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 2
  br i1 %69, label %70, label %119

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.rle*, %struct.rle** %9, align 8
  %73 = getelementptr inbounds %struct.rle, %struct.rle* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.rle*, %struct.rle** %9, align 8
  %76 = getelementptr inbounds %struct.rle, %struct.rle* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %71, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %70
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.rle*, %struct.rle** %9, align 8
  %86 = getelementptr inbounds %struct.rle, %struct.rle* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.rle*, %struct.rle** %9, align 8
  %89 = getelementptr inbounds %struct.rle, %struct.rle* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %84, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %83
  %97 = load %struct.rle*, %struct.rle** %9, align 8
  %98 = getelementptr inbounds %struct.rle, %struct.rle* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 3
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.rle*, %struct.rle** %9, align 8
  %103 = getelementptr inbounds %struct.rle, %struct.rle* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 2
  store i32 %105, i32* %103, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.rle*, %struct.rle** %9, align 8
  %108 = call i32 @rle_flush_diff(i32* %106, %struct.rle* %107)
  br label %109

109:                                              ; preds = %101, %96
  %110 = load %struct.rle*, %struct.rle** %9, align 8
  %111 = getelementptr inbounds %struct.rle, %struct.rle* %110, i32 0, i32 0
  store i32 129, i32* %111, align 8
  %112 = load %struct.rle*, %struct.rle** %9, align 8
  %113 = getelementptr inbounds %struct.rle, %struct.rle* %112, i32 0, i32 1
  store i32 3, i32* %113, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.rle*, %struct.rle** %9, align 8
  %116 = getelementptr inbounds %struct.rle, %struct.rle* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %114, i32* %118, align 4
  br label %133

119:                                              ; preds = %83, %70, %65
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.rle*, %struct.rle** %9, align 8
  %122 = getelementptr inbounds %struct.rle, %struct.rle* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.rle*, %struct.rle** %9, align 8
  %125 = getelementptr inbounds %struct.rle, %struct.rle* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  store i32 %120, i32* %128, align 4
  %129 = load %struct.rle*, %struct.rle** %9, align 8
  %130 = getelementptr inbounds %struct.rle, %struct.rle* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %119, %109
  br label %134

134:                                              ; preds = %133, %52
  br label %167

135:                                              ; preds = %19
  %136 = load %struct.rle*, %struct.rle** %9, align 8
  %137 = getelementptr inbounds %struct.rle, %struct.rle* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 128
  br i1 %139, label %148, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.rle*, %struct.rle** %9, align 8
  %143 = getelementptr inbounds %struct.rle, %struct.rle* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %141, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %140, %135
  %149 = load i32*, i32** %5, align 8
  %150 = load %struct.rle*, %struct.rle** %9, align 8
  %151 = call i32 @rle_flush_same(i32* %149, %struct.rle* %150)
  %152 = load %struct.rle*, %struct.rle** %9, align 8
  %153 = getelementptr inbounds %struct.rle, %struct.rle* %152, i32 0, i32 0
  store i32 130, i32* %153, align 8
  %154 = load %struct.rle*, %struct.rle** %9, align 8
  %155 = getelementptr inbounds %struct.rle, %struct.rle* %154, i32 0, i32 1
  store i32 1, i32* %155, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.rle*, %struct.rle** %9, align 8
  %158 = getelementptr inbounds %struct.rle, %struct.rle* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %156, i32* %160, align 4
  br label %166

161:                                              ; preds = %140
  %162 = load %struct.rle*, %struct.rle** %9, align 8
  %163 = getelementptr inbounds %struct.rle, %struct.rle* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %161, %148
  br label %167

167:                                              ; preds = %166, %19, %134, %37, %27
  br label %15

168:                                              ; preds = %15
  ret void
}

declare dso_local i32 @rle_flush_diff(i32*, %struct.rle*) #1

declare dso_local i32 @rle_flush_same(i32*, %struct.rle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
