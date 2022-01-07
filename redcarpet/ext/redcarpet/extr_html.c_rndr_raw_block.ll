; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_raw_block.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_raw_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i8* }
%struct.html_renderopt = type { i32 }

@HTML_SKIP_STYLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"style\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i8*)* @rndr_raw_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_raw_block(%struct.buf* %0, %struct.buf* %1, i8* %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.html_renderopt*, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store %struct.buf* %1, %struct.buf** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.html_renderopt*
  store %struct.html_renderopt* %11, %struct.html_renderopt** %9, align 8
  %12 = load %struct.buf*, %struct.buf** %5, align 8
  %13 = icmp ne %struct.buf* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %98

15:                                               ; preds = %3
  %16 = load %struct.buf*, %struct.buf** %5, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  br label %19

19:                                               ; preds = %34, %15
  %20 = load i64, i64* %8, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.buf*, %struct.buf** %5, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br label %32

32:                                               ; preds = %22, %19
  %33 = phi i1 [ false, %19 ], [ %31, %22 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %8, align 8
  br label %19

37:                                               ; preds = %32
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %59, %37
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.buf*, %struct.buf** %5, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br label %51

51:                                               ; preds = %42, %38
  %52 = phi i1 [ false, %38 ], [ %50, %42 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %98

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %38

62:                                               ; preds = %51
  %63 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %64 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @HTML_SKIP_STYLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.buf*, %struct.buf** %5, align 8
  %71 = getelementptr inbounds %struct.buf, %struct.buf* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @sdhtml_is_tag(i8* %72, i64 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %98

77:                                               ; preds = %69, %62
  %78 = load %struct.buf*, %struct.buf** %4, align 8
  %79 = getelementptr inbounds %struct.buf, %struct.buf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.buf*, %struct.buf** %4, align 8
  %84 = call i32 @bufputc(%struct.buf* %83, i8 signext 10)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.buf*, %struct.buf** %4, align 8
  %87 = load %struct.buf*, %struct.buf** %5, align 8
  %88 = getelementptr inbounds %struct.buf, %struct.buf* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub i64 %92, %93
  %95 = call i32 @bufput(%struct.buf* %86, i8* %91, i64 %94)
  %96 = load %struct.buf*, %struct.buf** %4, align 8
  %97 = call i32 @bufputc(%struct.buf* %96, i8 signext 10)
  br label %98

98:                                               ; preds = %85, %76, %57, %14
  ret void
}

declare dso_local i64 @sdhtml_is_tag(i8*, i64, i8*) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
