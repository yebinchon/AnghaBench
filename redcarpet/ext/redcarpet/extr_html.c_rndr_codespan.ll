; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_codespan.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_codespan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }
%struct.html_renderopt = type { i32 }

@HTML_PRETTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"<code class=\22prettyprint\22>\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<code>\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"</code>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buf*, %struct.buf*, i8*)* @rndr_codespan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndr_codespan(%struct.buf* %0, %struct.buf* %1, i8* %2) #0 {
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
  %10 = load %struct.html_renderopt*, %struct.html_renderopt** %7, align 8
  %11 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HTML_PRETTIFY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.buf*, %struct.buf** %4, align 8
  %18 = call i32 @BUFPUTSL(%struct.buf* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.buf*, %struct.buf** %4, align 8
  %21 = call i32 @BUFPUTSL(%struct.buf* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.buf*, %struct.buf** %5, align 8
  %24 = icmp ne %struct.buf* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.buf*, %struct.buf** %4, align 8
  %27 = load %struct.buf*, %struct.buf** %5, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.buf*, %struct.buf** %5, align 8
  %31 = getelementptr inbounds %struct.buf, %struct.buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @escape_html(%struct.buf* %26, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %22
  %35 = load %struct.buf*, %struct.buf** %4, align 8
  %36 = call i32 @BUFPUTSL(%struct.buf* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @escape_html(%struct.buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
