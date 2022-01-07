; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_paragraph.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_paragraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i8* }
%struct.html_renderopt = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"<p>\00", align 1
@HTML_HARD_WRAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"</p>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i8*)* @rndr_paragraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_paragraph(%struct.buf* %0, %struct.buf* %1, i8* %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.html_renderopt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store %struct.buf* %1, %struct.buf** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.html_renderopt*
  store %struct.html_renderopt* %11, %struct.html_renderopt** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.buf*, %struct.buf** %4, align 8
  %13 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.buf*, %struct.buf** %4, align 8
  %18 = call i32 @bufputc(%struct.buf* %17, i8 signext 10)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.buf*, %struct.buf** %5, align 8
  %21 = icmp ne %struct.buf* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.buf*, %struct.buf** %5, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %19
  br label %140

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.buf*, %struct.buf** %5, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.buf*, %struct.buf** %5, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isspace(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %35, %29
  %45 = phi i1 [ false, %29 ], [ %43, %35 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %29

49:                                               ; preds = %44
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.buf*, %struct.buf** %5, align 8
  %52 = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %140

56:                                               ; preds = %49
  %57 = load %struct.buf*, %struct.buf** %4, align 8
  %58 = call i32 @BUFPUTSL(%struct.buf* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.html_renderopt*, %struct.html_renderopt** %7, align 8
  %60 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HTML_HARD_WRAP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %124

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %117, %65
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.buf*, %struct.buf** %5, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %123

72:                                               ; preds = %66
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %91, %72
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.buf*, %struct.buf** %5, align 8
  %77 = getelementptr inbounds %struct.buf, %struct.buf* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.buf*, %struct.buf** %5, align 8
  %82 = getelementptr inbounds %struct.buf, %struct.buf* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 10
  br label %89

89:                                               ; preds = %80, %74
  %90 = phi i1 [ false, %74 ], [ %88, %80 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %74

94:                                               ; preds = %89
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load %struct.buf*, %struct.buf** %4, align 8
  %100 = load %struct.buf*, %struct.buf** %5, align 8
  %101 = getelementptr inbounds %struct.buf, %struct.buf* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = sub i64 %105, %106
  %108 = call i32 @bufput(%struct.buf* %99, i8* %104, i64 %107)
  br label %109

109:                                              ; preds = %98, %94
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.buf*, %struct.buf** %5, align 8
  %112 = getelementptr inbounds %struct.buf, %struct.buf* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 %113, 1
  %115 = icmp uge i64 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %123

117:                                              ; preds = %109
  %118 = load %struct.buf*, %struct.buf** %4, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @rndr_linebreak(%struct.buf* %118, i8* %119)
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %8, align 8
  br label %66

123:                                              ; preds = %116, %66
  br label %137

124:                                              ; preds = %56
  %125 = load %struct.buf*, %struct.buf** %4, align 8
  %126 = load %struct.buf*, %struct.buf** %5, align 8
  %127 = getelementptr inbounds %struct.buf, %struct.buf* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = load %struct.buf*, %struct.buf** %5, align 8
  %132 = getelementptr inbounds %struct.buf, %struct.buf* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = sub i64 %133, %134
  %136 = call i32 @bufput(%struct.buf* %125, i8* %130, i64 %135)
  br label %137

137:                                              ; preds = %124, %123
  %138 = load %struct.buf*, %struct.buf** %4, align 8
  %139 = call i32 @BUFPUTSL(%struct.buf* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %55, %27
  ret void
}

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #1

declare dso_local i32 @rndr_linebreak(%struct.buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
