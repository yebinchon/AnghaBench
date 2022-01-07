; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_footnotes.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_footnotes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i32 }
%struct.html_renderopt = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"<div class=\22footnotes\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<hr/>\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<hr>\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"<ol>\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\0A</ol>\0A</div>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i8*)* @rndr_footnotes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_footnotes(%struct.buf* %0, %struct.buf* %1, i8* %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.html_renderopt*, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store %struct.buf* %1, %struct.buf** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.html_renderopt*
  store %struct.html_renderopt* %9, %struct.html_renderopt** %7, align 8
  %10 = load %struct.buf*, %struct.buf** %4, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.buf*, %struct.buf** %4, align 8
  %16 = call i32 @bufputc(%struct.buf* %15, i8 signext 10)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.buf*, %struct.buf** %4, align 8
  %19 = call i32 @BUFPUTSL(%struct.buf* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.buf*, %struct.buf** %4, align 8
  %21 = load %struct.html_renderopt*, %struct.html_renderopt** %7, align 8
  %22 = call i64 @USE_XHTML(%struct.html_renderopt* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @bufputs(%struct.buf* %20, i8* %25)
  %27 = load %struct.buf*, %struct.buf** %4, align 8
  %28 = call i32 @BUFPUTSL(%struct.buf* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.buf*, %struct.buf** %5, align 8
  %30 = icmp ne %struct.buf* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %17
  %32 = load %struct.buf*, %struct.buf** %4, align 8
  %33 = load %struct.buf*, %struct.buf** %5, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.buf*, %struct.buf** %5, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @bufput(%struct.buf* %32, i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %31, %17
  %41 = load %struct.buf*, %struct.buf** %4, align 8
  %42 = call i32 @BUFPUTSL(%struct.buf* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufputs(%struct.buf*, i8*) #1

declare dso_local i64 @USE_XHTML(%struct.html_renderopt*) #1

declare dso_local i32 @bufput(%struct.buf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
