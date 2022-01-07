; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-gif.c_gif_read_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-gif.c_gif_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, i8*, i32, i32, i8, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.info*, i32, i8*, i32, i8*)* @gif_read_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gif_read_line(i32* %0, %struct.info* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.info* %1, %struct.info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %19 = load %struct.info*, %struct.info** %8, align 8
  %20 = getelementptr inbounds %struct.info, %struct.info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = add i32 %21, %22
  %24 = load %struct.info*, %struct.info** %8, align 8
  %25 = getelementptr inbounds %struct.info, %struct.info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul i32 %23, %26
  %28 = load %struct.info*, %struct.info** %8, align 8
  %29 = getelementptr inbounds %struct.info, %struct.info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add i32 %27, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.info*, %struct.info** %8, align 8
  %34 = getelementptr inbounds %struct.info, %struct.info* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @fz_pixmap_samples(i32* %32, i32 %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i32, i32* %13, align 4
  %39 = mul i32 %38, 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8* %41, i8** %15, align 8
  %42 = load %struct.info*, %struct.info** %8, align 8
  %43 = getelementptr inbounds %struct.info, %struct.info* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %16, align 8
  %48 = load %struct.info*, %struct.info** %8, align 8
  %49 = getelementptr inbounds %struct.info, %struct.info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %50, %51
  %53 = load %struct.info*, %struct.info** %8, align 8
  %54 = getelementptr inbounds %struct.info, %struct.info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = icmp uge i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %6
  br label %137

58:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %128, %58
  %60 = load i32, i32* %17, align 4
  %61 = load %struct.info*, %struct.info** %8, align 8
  %62 = getelementptr inbounds %struct.info, %struct.info* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.info*, %struct.info** %8, align 8
  %67 = getelementptr inbounds %struct.info, %struct.info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = add i32 %68, %69
  %71 = load %struct.info*, %struct.info** %8, align 8
  %72 = getelementptr inbounds %struct.info, %struct.info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %70, %73
  br label %75

75:                                               ; preds = %65, %59
  %76 = phi i1 [ false, %59 ], [ %74, %65 ]
  br i1 %76, label %77, label %137

77:                                               ; preds = %75
  %78 = load %struct.info*, %struct.info** %8, align 8
  %79 = getelementptr inbounds %struct.info, %struct.info* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i8*, i8** %12, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load %struct.info*, %struct.info** %8, align 8
  %87 = getelementptr inbounds %struct.info, %struct.info* %86, i32 0, i32 6
  %88 = load i8, i8* %87, align 8
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %85, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %82, %77
  %92 = load i8*, i8** %16, align 8
  store i8 2, i8* %92, align 1
  store i32 0, i32* %18, align 4
  br label %93

93:                                               ; preds = %113, %91
  %94 = load i32, i32* %18, align 4
  %95 = icmp ult i32 %94, 3
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i8, i8* %98, align 1
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %100, 1
  %102 = call i32 @fz_clampi(i8 zeroext %99, i32 0, i32 %101)
  %103 = mul nsw i32 %102, 3
  %104 = load i32, i32* %18, align 4
  %105 = add i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %97, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %15, align 8
  %110 = load i32, i32* %18, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 %108, i8* %112, align 1
  br label %113

113:                                              ; preds = %96
  %114 = load i32, i32* %18, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %93

116:                                              ; preds = %93
  %117 = load i8*, i8** %15, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  store i8 -1, i8* %118, align 1
  br label %127

119:                                              ; preds = %82
  %120 = load i8*, i8** %16, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i8*, i8** %16, align 8
  store i8 0, i8* %125, align 1
  br label %126

126:                                              ; preds = %124, %119
  br label %127

127:                                              ; preds = %126, %116
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %17, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %17, align 4
  %131 = load i8*, i8** %12, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %12, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  store i8* %136, i8** %15, align 8
  br label %59

137:                                              ; preds = %57, %75
  ret void
}

declare dso_local i8* @fz_pixmap_samples(i32*, i32) #1

declare dso_local i32 @fz_clampi(i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
