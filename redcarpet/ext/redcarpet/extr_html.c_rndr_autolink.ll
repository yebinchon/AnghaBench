; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_autolink.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_autolink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i64 }
%struct.html_renderopt = type { i32, i32 (%struct.buf.0*, %struct.buf.0*, i8*)* }
%struct.buf.0 = type opaque

@HTML_SAFELINK = common dso_local global i32 0, align 4
@MKDA_EMAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"<a href=\22\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mailto:\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"</a>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buf*, %struct.buf*, i32, i8*)* @rndr_autolink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndr_autolink(%struct.buf* %0, %struct.buf* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.html_renderopt*, align 8
  store %struct.buf* %0, %struct.buf** %6, align 8
  store %struct.buf* %1, %struct.buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to %struct.html_renderopt*
  store %struct.html_renderopt* %12, %struct.html_renderopt** %10, align 8
  %13 = load %struct.buf*, %struct.buf** %7, align 8
  %14 = icmp ne %struct.buf* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.buf*, %struct.buf** %7, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %108

21:                                               ; preds = %15
  %22 = load %struct.html_renderopt*, %struct.html_renderopt** %10, align 8
  %23 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HTML_SAFELINK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = load %struct.buf*, %struct.buf** %7, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.buf*, %struct.buf** %7, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @sd_autolink_issafe(i64 %31, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MKDA_EMAIL, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %108

42:                                               ; preds = %37, %28, %21
  %43 = load %struct.buf*, %struct.buf** %6, align 8
  %44 = call i32 @BUFPUTSL(%struct.buf* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MKDA_EMAIL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.buf*, %struct.buf** %6, align 8
  %50 = call i32 @BUFPUTSL(%struct.buf* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.buf*, %struct.buf** %6, align 8
  %53 = load %struct.buf*, %struct.buf** %7, align 8
  %54 = getelementptr inbounds %struct.buf, %struct.buf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.buf*, %struct.buf** %7, align 8
  %57 = getelementptr inbounds %struct.buf, %struct.buf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @escape_href(%struct.buf* %52, i64 %55, i64 %58)
  %60 = load %struct.html_renderopt*, %struct.html_renderopt** %10, align 8
  %61 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %60, i32 0, i32 1
  %62 = load i32 (%struct.buf.0*, %struct.buf.0*, i8*)*, i32 (%struct.buf.0*, %struct.buf.0*, i8*)** %61, align 8
  %63 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i8*)* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %51
  %65 = load %struct.buf*, %struct.buf** %6, align 8
  %66 = call i32 @bufputc(%struct.buf* %65, i8 signext 34)
  %67 = load %struct.html_renderopt*, %struct.html_renderopt** %10, align 8
  %68 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %67, i32 0, i32 1
  %69 = load i32 (%struct.buf.0*, %struct.buf.0*, i8*)*, i32 (%struct.buf.0*, %struct.buf.0*, i8*)** %68, align 8
  %70 = load %struct.buf*, %struct.buf** %6, align 8
  %71 = bitcast %struct.buf* %70 to %struct.buf.0*
  %72 = load %struct.buf*, %struct.buf** %7, align 8
  %73 = bitcast %struct.buf* %72 to %struct.buf.0*
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 %69(%struct.buf.0* %71, %struct.buf.0* %73, i8* %74)
  %76 = load %struct.buf*, %struct.buf** %6, align 8
  %77 = call i32 @bufputc(%struct.buf* %76, i8 signext 62)
  br label %81

78:                                               ; preds = %51
  %79 = load %struct.buf*, %struct.buf** %6, align 8
  %80 = call i32 @BUFPUTSL(%struct.buf* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %64
  %82 = load %struct.buf*, %struct.buf** %7, align 8
  %83 = call i64 @bufprefix(%struct.buf* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.buf*, %struct.buf** %6, align 8
  %87 = load %struct.buf*, %struct.buf** %7, align 8
  %88 = getelementptr inbounds %struct.buf, %struct.buf* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 7
  %91 = load %struct.buf*, %struct.buf** %7, align 8
  %92 = getelementptr inbounds %struct.buf, %struct.buf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, 7
  %95 = call i32 @escape_html(%struct.buf* %86, i64 %90, i64 %94)
  br label %105

96:                                               ; preds = %81
  %97 = load %struct.buf*, %struct.buf** %6, align 8
  %98 = load %struct.buf*, %struct.buf** %7, align 8
  %99 = getelementptr inbounds %struct.buf, %struct.buf* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.buf*, %struct.buf** %7, align 8
  %102 = getelementptr inbounds %struct.buf, %struct.buf* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @escape_html(%struct.buf* %97, i64 %100, i64 %103)
  br label %105

105:                                              ; preds = %96, %85
  %106 = load %struct.buf*, %struct.buf** %6, align 8
  %107 = call i32 @BUFPUTSL(%struct.buf* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %41, %20
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @sd_autolink_issafe(i64, i64) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @escape_href(%struct.buf*, i64, i64) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i64 @bufprefix(%struct.buf*, i8*) #1

declare dso_local i32 @escape_html(%struct.buf*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
