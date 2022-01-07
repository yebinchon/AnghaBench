; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_header.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i32 }
%struct.html_renderopt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@HTML_TOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"<h%d id=\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<h%d>\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"</h%d>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i32, i8*)* @rndr_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_header(%struct.buf* %0, %struct.buf* %1, i32 %2, i8* %3) #0 {
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
  %12 = load %struct.buf*, %struct.buf** %5, align 8
  %13 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.buf*, %struct.buf** %5, align 8
  %18 = call i32 @bufputc(%struct.buf* %17, i8 signext 10)
  br label %19

19:                                               ; preds = %16, %4
  %20 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %21 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HTML_TOC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %29 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %27, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %38 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %36, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.buf*, %struct.buf** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @bufprintf(%struct.buf* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.buf*, %struct.buf** %5, align 8
  %49 = load %struct.buf*, %struct.buf** %6, align 8
  %50 = call i32 @rndr_header_anchor(%struct.buf* %48, %struct.buf* %49)
  %51 = load %struct.buf*, %struct.buf** %5, align 8
  %52 = call i32 @BUFPUTSL(%struct.buf* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %57

53:                                               ; preds = %35, %26, %19
  %54 = load %struct.buf*, %struct.buf** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @bufprintf(%struct.buf* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %44
  %58 = load %struct.buf*, %struct.buf** %6, align 8
  %59 = icmp ne %struct.buf* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.buf*, %struct.buf** %5, align 8
  %62 = load %struct.buf*, %struct.buf** %6, align 8
  %63 = getelementptr inbounds %struct.buf, %struct.buf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.buf*, %struct.buf** %6, align 8
  %66 = getelementptr inbounds %struct.buf, %struct.buf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @bufput(%struct.buf* %61, i32 %64, i64 %67)
  br label %69

69:                                               ; preds = %60, %57
  %70 = load %struct.buf*, %struct.buf** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @bufprintf(%struct.buf* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  ret void
}

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @bufprintf(%struct.buf*, i8*, i32) #1

declare dso_local i32 @rndr_header_anchor(%struct.buf*, %struct.buf*) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufput(%struct.buf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
