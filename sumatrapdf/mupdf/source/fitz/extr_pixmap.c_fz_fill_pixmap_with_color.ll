; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_fill_pixmap_with_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_pixmap.c_fz_fill_pixmap_with_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i32, i32 }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_fill_pixmap_with_color(i32* %0, %struct.TYPE_3__* %1, i32* %2, float* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* @FZ_MAX_COLORS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca float, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load i32, i32* @FZ_MAX_COLORS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fz_colorspace_n(i32* %30, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %16, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %17, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load float*, float** %9, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @fz_convert_color(i32* %41, i32* %42, float* %43, i32 %46, float* %26, i32* null, i32 %47)
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %63, %5
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %26, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fmul float %57, 2.550000e+02
  %59 = fptoui float %58 to i8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %29, i64 %61
  store i8 %59, i8* %62, align 1
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %49

66:                                               ; preds = %49
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %20, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %73

73:                                               ; preds = %129, %66
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %21, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %132

77:                                               ; preds = %73
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %80, i64 %86
  store i8* %87, i8** %22, align 8
  store i32 0, i32* %18, align 4
  br label %88

88:                                               ; preds = %125, %77
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %104, %92
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %29, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %22, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %22, align 8
  store i8 %101, i8* %102, align 1
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %93

107:                                              ; preds = %93
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %115, %107
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i8*, i8** %22, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %22, align 8
  store i8 0, i8* %113, align 1
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %108

118:                                              ; preds = %108
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i8*, i8** %22, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %22, align 8
  store i8 -1, i8* %122, align 1
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %18, align 4
  br label %88

128:                                              ; preds = %88
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  br label %73

132:                                              ; preds = %73
  %133 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %133)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fz_colorspace_n(i32*, i32) #2

declare dso_local i32 @fz_convert_color(i32*, i32*, float*, i32, float*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
