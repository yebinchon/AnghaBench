; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_toc_header.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_toc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }
%struct.html_renderopt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"<ul>\0A<li>\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"</li>\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"</ul>\0A</li>\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"<li>\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"</li>\0A<li>\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"<a href=\22#\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1
@HTML_ESCAPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"</a>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i32, i8*)* @toc_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toc_header(%struct.buf* %0, %struct.buf* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.html_renderopt*, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.html_renderopt*
  store %struct.html_renderopt* %11, %struct.html_renderopt** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %14 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %12, %18
  br i1 %19, label %20, label %142

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %23 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %21, %27
  br i1 %28, label %29, label %142

29:                                               ; preds = %20
  %30 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %31 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %39 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %43 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %50 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %48, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %62, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %58 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %56, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.buf*, %struct.buf** %5, align 8
  %64 = call i32 @BUFPUTSL(%struct.buf* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %66 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %55

70:                                               ; preds = %55
  br label %103

71:                                               ; preds = %41
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %74 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %71
  %79 = load %struct.buf*, %struct.buf** %5, align 8
  %80 = call i32 @BUFPUTSL(%struct.buf* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %88, %78
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %84 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load %struct.buf*, %struct.buf** %5, align 8
  %90 = call i32 @BUFPUTSL(%struct.buf* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %92 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 8
  br label %81

96:                                               ; preds = %81
  %97 = load %struct.buf*, %struct.buf** %5, align 8
  %98 = call i32 @BUFPUTSL(%struct.buf* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %102

99:                                               ; preds = %71
  %100 = load %struct.buf*, %struct.buf** %5, align 8
  %101 = call i32 @BUFPUTSL(%struct.buf* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102, %70
  %104 = load %struct.buf*, %struct.buf** %5, align 8
  %105 = call i32 @bufprintf(%struct.buf* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %106 = load %struct.buf*, %struct.buf** %5, align 8
  %107 = load %struct.buf*, %struct.buf** %6, align 8
  %108 = call i32 @rndr_header_anchor(%struct.buf* %106, %struct.buf* %107)
  %109 = load %struct.buf*, %struct.buf** %5, align 8
  %110 = call i32 @BUFPUTSL(%struct.buf* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %111 = load %struct.buf*, %struct.buf** %6, align 8
  %112 = icmp ne %struct.buf* %111, null
  br i1 %112, label %113, label %139

113:                                              ; preds = %103
  %114 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %115 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @HTML_ESCAPE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load %struct.buf*, %struct.buf** %5, align 8
  %122 = load %struct.buf*, %struct.buf** %6, align 8
  %123 = getelementptr inbounds %struct.buf, %struct.buf* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.buf*, %struct.buf** %6, align 8
  %126 = getelementptr inbounds %struct.buf, %struct.buf* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @escape_html(%struct.buf* %121, i32 %124, i32 %127)
  br label %138

129:                                              ; preds = %113
  %130 = load %struct.buf*, %struct.buf** %5, align 8
  %131 = load %struct.buf*, %struct.buf** %6, align 8
  %132 = getelementptr inbounds %struct.buf, %struct.buf* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.buf*, %struct.buf** %6, align 8
  %135 = getelementptr inbounds %struct.buf, %struct.buf* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @bufput(%struct.buf* %130, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %129, %120
  br label %139

139:                                              ; preds = %138, %103
  %140 = load %struct.buf*, %struct.buf** %5, align 8
  %141 = call i32 @BUFPUTSL(%struct.buf* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %20, %4
  ret void
}

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufprintf(%struct.buf*, i8*) #1

declare dso_local i32 @rndr_header_anchor(%struct.buf*, %struct.buf*) #1

declare dso_local i32 @escape_html(%struct.buf*, i32, i32) #1

declare dso_local i32 @bufput(%struct.buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
