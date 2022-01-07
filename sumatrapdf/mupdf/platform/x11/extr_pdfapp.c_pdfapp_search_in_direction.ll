; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_pdfapp_search_in_direction.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_pdfapp_search_in_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32, i32, i32, i64, i32, i32, i32 }

@WAIT = common dso_local global i32 0, align 4
@PAN_TO_TOP = common dso_local global i32 0, align 4
@PAN_TO_BOTTOM = common dso_local global i32 0, align 4
@HAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"String '%s' not found.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32)* @pdfapp_search_in_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdfapp_search_in_direction(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = call i32 @winrepaint(%struct.TYPE_7__* %16)
  br label %151

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = load i32, i32* @WAIT, align 4
  %21 = call i32 @wincursor(%struct.TYPE_7__* %19, i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %18
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %8, align 4
  br label %42

38:                                               ; preds = %18
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %49
  br label %57

57:                                               ; preds = %131, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = call i32 @pdfapp_showpage(%struct.TYPE_7__* %67, i32 1, i32 0, i32 0, i32 0, i32 1)
  br label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @nelem(i32 %84)
  %86 = call i64 @fz_search_stext_page(i32 %72, i32 %75, i64* %78, i32 %81, i32 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %69
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @PAN_TO_TOP, align 4
  br label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @PAN_TO_BOTTOM, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = load i32, i32* @HAND, align 4
  %110 = call i32 @wincursor(%struct.TYPE_7__* %108, i32 %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = call i32 @winrepaint(%struct.TYPE_7__* %111)
  br label %151

113:                                              ; preds = %69
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %119, %113
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 1, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %123
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %57, label %135

135:                                              ; preds = %131
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = call i32 @pdfapp_warn(%struct.TYPE_7__* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64* %139)
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = call i32 @pdfapp_showpage(%struct.TYPE_7__* %144, i32 1, i32 0, i32 0, i32 0, i32 0)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = load i32, i32* @HAND, align 4
  %148 = call i32 @wincursor(%struct.TYPE_7__* %146, i32 %147)
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %150 = call i32 @winrepaint(%struct.TYPE_7__* %149)
  br label %151

151:                                              ; preds = %135, %100, %15
  ret void
}

declare dso_local i32 @winrepaint(%struct.TYPE_7__*) #1

declare dso_local i32 @wincursor(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pdfapp_showpage(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @fz_search_stext_page(i32, i32, i64*, i32, i32) #1

declare dso_local i32 @nelem(i32) #1

declare dso_local i32 @pdfapp_warn(%struct.TYPE_7__*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
