; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_image.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i32 }
%struct.html_renderopt = type { i32 }

@HTML_SAFELINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"<img src=\22\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\22 alt=\22\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\22 title=\22\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\22/>\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buf*, %struct.buf*, %struct.buf*, %struct.buf*, i8*)* @rndr_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndr_image(%struct.buf* %0, %struct.buf* %1, %struct.buf* %2, %struct.buf* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca %struct.buf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.html_renderopt*, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.buf* %1, %struct.buf** %8, align 8
  store %struct.buf* %2, %struct.buf** %9, align 8
  store %struct.buf* %3, %struct.buf** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = bitcast i8* %13 to %struct.html_renderopt*
  store %struct.html_renderopt* %14, %struct.html_renderopt** %12, align 8
  %15 = load %struct.buf*, %struct.buf** %8, align 8
  %16 = icmp ne %struct.buf* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %5
  %18 = load %struct.html_renderopt*, %struct.html_renderopt** %12, align 8
  %19 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HTML_SAFELINK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.buf*, %struct.buf** %8, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.buf*, %struct.buf** %8, align 8
  %29 = getelementptr inbounds %struct.buf, %struct.buf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @sd_autolink_issafe(i32 %27, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %99

34:                                               ; preds = %24, %17, %5
  %35 = load %struct.buf*, %struct.buf** %7, align 8
  %36 = call i32 @BUFPUTSL(%struct.buf* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.buf*, %struct.buf** %8, align 8
  %38 = icmp ne %struct.buf* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.buf*, %struct.buf** %8, align 8
  %41 = getelementptr inbounds %struct.buf, %struct.buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.buf*, %struct.buf** %7, align 8
  %46 = load %struct.buf*, %struct.buf** %8, align 8
  %47 = getelementptr inbounds %struct.buf, %struct.buf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.buf*, %struct.buf** %8, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @escape_href(%struct.buf* %45, i32 %48, i64 %51)
  br label %53

53:                                               ; preds = %44, %39, %34
  %54 = load %struct.buf*, %struct.buf** %7, align 8
  %55 = call i32 @BUFPUTSL(%struct.buf* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.buf*, %struct.buf** %10, align 8
  %57 = icmp ne %struct.buf* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.buf*, %struct.buf** %10, align 8
  %60 = getelementptr inbounds %struct.buf, %struct.buf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.buf*, %struct.buf** %7, align 8
  %65 = load %struct.buf*, %struct.buf** %10, align 8
  %66 = getelementptr inbounds %struct.buf, %struct.buf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.buf*, %struct.buf** %10, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @escape_html(%struct.buf* %64, i32 %67, i64 %70)
  br label %72

72:                                               ; preds = %63, %58, %53
  %73 = load %struct.buf*, %struct.buf** %9, align 8
  %74 = icmp ne %struct.buf* %73, null
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load %struct.buf*, %struct.buf** %9, align 8
  %77 = getelementptr inbounds %struct.buf, %struct.buf* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.buf*, %struct.buf** %7, align 8
  %82 = call i32 @BUFPUTSL(%struct.buf* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.buf*, %struct.buf** %7, align 8
  %84 = load %struct.buf*, %struct.buf** %9, align 8
  %85 = getelementptr inbounds %struct.buf, %struct.buf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.buf*, %struct.buf** %9, align 8
  %88 = getelementptr inbounds %struct.buf, %struct.buf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @escape_html(%struct.buf* %83, i32 %86, i64 %89)
  br label %91

91:                                               ; preds = %80, %75, %72
  %92 = load %struct.buf*, %struct.buf** %7, align 8
  %93 = load %struct.html_renderopt*, %struct.html_renderopt** %12, align 8
  %94 = call i64 @USE_XHTML(%struct.html_renderopt* %93)
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %98 = call i32 @bufputs(%struct.buf* %92, i8* %97)
  store i32 1, i32* %6, align 4
  br label %99

99:                                               ; preds = %91, %33
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @sd_autolink_issafe(i32, i64) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @escape_href(%struct.buf*, i32, i64) #1

declare dso_local i32 @escape_html(%struct.buf*, i32, i64) #1

declare dso_local i32 @bufputs(%struct.buf*, i8*) #1

declare dso_local i64 @USE_XHTML(%struct.html_renderopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
