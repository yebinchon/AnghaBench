; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_link.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i32 }
%struct.html_renderopt = type { i32, i32 (%struct.buf.0*, %struct.buf.0*, i8*)* }
%struct.buf.0 = type opaque

@HTML_SAFELINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"<a href=\22\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\22 title=\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"</a>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buf*, %struct.buf*, %struct.buf*, %struct.buf*, i8*)* @rndr_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndr_link(%struct.buf* %0, %struct.buf* %1, %struct.buf* %2, %struct.buf* %3, i8* %4) #0 {
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
  %20 = load i32, i32* %19, align 8
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
  br label %114

34:                                               ; preds = %24, %17, %5
  %35 = load %struct.buf*, %struct.buf** %7, align 8
  %36 = call i32 @BUFPUTSL(%struct.buf* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
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
  %54 = load %struct.buf*, %struct.buf** %9, align 8
  %55 = icmp ne %struct.buf* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.buf*, %struct.buf** %9, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.buf*, %struct.buf** %7, align 8
  %63 = call i32 @BUFPUTSL(%struct.buf* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.buf*, %struct.buf** %7, align 8
  %65 = load %struct.buf*, %struct.buf** %9, align 8
  %66 = getelementptr inbounds %struct.buf, %struct.buf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.buf*, %struct.buf** %9, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @escape_html(%struct.buf* %64, i32 %67, i64 %70)
  br label %72

72:                                               ; preds = %61, %56, %53
  %73 = load %struct.html_renderopt*, %struct.html_renderopt** %12, align 8
  %74 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %73, i32 0, i32 1
  %75 = load i32 (%struct.buf.0*, %struct.buf.0*, i8*)*, i32 (%struct.buf.0*, %struct.buf.0*, i8*)** %74, align 8
  %76 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i8*)* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.buf*, %struct.buf** %7, align 8
  %79 = call i32 @bufputc(%struct.buf* %78, i8 signext 34)
  %80 = load %struct.html_renderopt*, %struct.html_renderopt** %12, align 8
  %81 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %80, i32 0, i32 1
  %82 = load i32 (%struct.buf.0*, %struct.buf.0*, i8*)*, i32 (%struct.buf.0*, %struct.buf.0*, i8*)** %81, align 8
  %83 = load %struct.buf*, %struct.buf** %7, align 8
  %84 = bitcast %struct.buf* %83 to %struct.buf.0*
  %85 = load %struct.buf*, %struct.buf** %8, align 8
  %86 = bitcast %struct.buf* %85 to %struct.buf.0*
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 %82(%struct.buf.0* %84, %struct.buf.0* %86, i8* %87)
  %89 = load %struct.buf*, %struct.buf** %7, align 8
  %90 = call i32 @bufputc(%struct.buf* %89, i8 signext 62)
  br label %94

91:                                               ; preds = %72
  %92 = load %struct.buf*, %struct.buf** %7, align 8
  %93 = call i32 @BUFPUTSL(%struct.buf* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %77
  %95 = load %struct.buf*, %struct.buf** %10, align 8
  %96 = icmp ne %struct.buf* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.buf*, %struct.buf** %10, align 8
  %99 = getelementptr inbounds %struct.buf, %struct.buf* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.buf*, %struct.buf** %7, align 8
  %104 = load %struct.buf*, %struct.buf** %10, align 8
  %105 = getelementptr inbounds %struct.buf, %struct.buf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.buf*, %struct.buf** %10, align 8
  %108 = getelementptr inbounds %struct.buf, %struct.buf* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @bufput(%struct.buf* %103, i32 %106, i64 %109)
  br label %111

111:                                              ; preds = %102, %97, %94
  %112 = load %struct.buf*, %struct.buf** %7, align 8
  %113 = call i32 @BUFPUTSL(%struct.buf* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %33
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @sd_autolink_issafe(i32, i64) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @escape_href(%struct.buf*, i32, i64) #1

declare dso_local i32 @escape_html(%struct.buf*, i32, i64) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @bufput(%struct.buf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
