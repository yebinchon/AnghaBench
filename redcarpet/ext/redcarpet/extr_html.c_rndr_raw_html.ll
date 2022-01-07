; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_raw_html.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_raw_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }
%struct.html_renderopt = type { i32 }

@HTML_ESCAPE = common dso_local global i32 0, align 4
@HTML_SKIP_HTML = common dso_local global i32 0, align 4
@HTML_SKIP_STYLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"style\00", align 1
@HTML_SKIP_LINKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@HTML_SKIP_IMAGES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"img\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buf*, %struct.buf*, i8*)* @rndr_raw_html to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndr_raw_html(%struct.buf* %0, %struct.buf* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.html_renderopt*, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.html_renderopt*
  store %struct.html_renderopt* %10, %struct.html_renderopt** %8, align 8
  %11 = load %struct.html_renderopt*, %struct.html_renderopt** %8, align 8
  %12 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HTML_ESCAPE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.buf*, %struct.buf** %5, align 8
  %19 = load %struct.buf*, %struct.buf** %6, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.buf*, %struct.buf** %6, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @escape_html(%struct.buf* %18, i32 %21, i32 %24)
  store i32 1, i32* %4, align 4
  br label %94

26:                                               ; preds = %3
  %27 = load %struct.html_renderopt*, %struct.html_renderopt** %8, align 8
  %28 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HTML_SKIP_HTML, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %94

34:                                               ; preds = %26
  %35 = load %struct.html_renderopt*, %struct.html_renderopt** %8, align 8
  %36 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HTML_SKIP_STYLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.buf*, %struct.buf** %6, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.buf*, %struct.buf** %6, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @sdhtml_is_tag(i32 %44, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %94

51:                                               ; preds = %41, %34
  %52 = load %struct.html_renderopt*, %struct.html_renderopt** %8, align 8
  %53 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HTML_SKIP_LINKS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.buf*, %struct.buf** %6, align 8
  %60 = getelementptr inbounds %struct.buf, %struct.buf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.buf*, %struct.buf** %6, align 8
  %63 = getelementptr inbounds %struct.buf, %struct.buf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @sdhtml_is_tag(i32 %61, i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %94

68:                                               ; preds = %58, %51
  %69 = load %struct.html_renderopt*, %struct.html_renderopt** %8, align 8
  %70 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HTML_SKIP_IMAGES, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load %struct.buf*, %struct.buf** %6, align 8
  %77 = getelementptr inbounds %struct.buf, %struct.buf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.buf*, %struct.buf** %6, align 8
  %80 = getelementptr inbounds %struct.buf, %struct.buf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @sdhtml_is_tag(i32 %78, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %94

85:                                               ; preds = %75, %68
  %86 = load %struct.buf*, %struct.buf** %5, align 8
  %87 = load %struct.buf*, %struct.buf** %6, align 8
  %88 = getelementptr inbounds %struct.buf, %struct.buf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.buf*, %struct.buf** %6, align 8
  %91 = getelementptr inbounds %struct.buf, %struct.buf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bufput(%struct.buf* %86, i32 %89, i32 %92)
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %85, %84, %67, %50, %33, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @escape_html(%struct.buf*, i32, i32) #1

declare dso_local i64 @sdhtml_is_tag(i32, i32, i8*) #1

declare dso_local i32 @bufput(%struct.buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
