; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_glyph.c_fz_dump_glyph.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_glyph.c_fz_dump_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"pixmap glyph\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"glyph: %dx%d @ (%d,%d)\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_dump_glyph(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %129

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %126, %17
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %129

37:                                               ; preds = %31
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %124

47:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %120, %47
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 3
  switch i32 %61, label %86 [
    i32 0, label %62
    i32 1, label %65
    i32 2, label %72
  ]

62:                                               ; preds = %51
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 2
  store i32 %64, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %103

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 2
  %68 = add nsw i32 1, %67
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 %69, 6
  %71 = add nsw i32 %68, %70
  store i32 %71, i32* %9, align 4
  store i32 0, i32* %6, align 4
  store i8 46, i8* %10, align 1
  br label %103

72:                                               ; preds = %51
  %73 = load i32, i32* %8, align 4
  %74 = ashr i32 %73, 3
  %75 = add nsw i32 1, %74
  %76 = load i32, i32* %6, align 4
  %77 = shl i32 %76, 5
  %78 = add nsw i32 %75, %77
  store i32 %78, i32* %9, align 4
  store i32 0, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 36, i32 35
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %10, align 1
  br label %103

86:                                               ; preds = %51
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 3
  %89 = add nsw i32 1, %88
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %90, 5
  %92 = add nsw i32 %89, %91
  store i32 %92, i32* %9, align 4
  store i32 0, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, 4
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 33, i32 63
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %10, align 1
  br label %103

103:                                              ; preds = %86, %72, %65, %62
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %3, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %111, %103
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %9, align 4
  %110 = icmp ne i32 %108, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i8, i8* %10, align 1
  %113 = load i32, i32* @stdout, align 4
  %114 = call i32 @fputc(i8 signext %112, i32 %113)
  br label %107

115:                                              ; preds = %107
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %123

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %3, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %51, label %123

123:                                              ; preds = %120, %118
  br label %124

124:                                              ; preds = %123, %37
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %31

129:                                              ; preds = %15, %31
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
