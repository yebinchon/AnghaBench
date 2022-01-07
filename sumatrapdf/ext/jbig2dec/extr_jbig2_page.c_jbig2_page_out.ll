; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_page.c_jbig2_page_out.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_page.c_jbig2_page_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32* }

@JBIG2_PAGE_COMPLETE = common dso_local global i64 0, align 8
@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"page %d returned with no associated image\00", align 1
@JBIG2_PAGE_RETURNED = common dso_local global i64 0, align 8
@JBIG2_SEVERITY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"page %d returned to the client\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @jbig2_page_out(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %65, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %7
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @JBIG2_PAGE_COMPLETE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %13
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %6, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %24
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @jbig2_error(%struct.TYPE_7__* %44, i32 %45, i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %65

48:                                               ; preds = %24
  %49 = load i64, i64* @JBIG2_PAGE_RETURNED, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i64 %49, i64* %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = load i32, i32* @JBIG2_SEVERITY_DEBUG, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @jbig2_error(%struct.TYPE_7__* %57, i32 %58, i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32* @jbig2_image_reference(%struct.TYPE_7__* %61, i32* %62)
  store i32* %63, i32** %2, align 8
  br label %69

64:                                               ; preds = %13
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %7

68:                                               ; preds = %7
  store i32* null, i32** %2, align 8
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32*, i32** %2, align 8
  ret i32* %70
}

declare dso_local i32 @jbig2_error(%struct.TYPE_7__*, i32, i32, i8*, i32) #1

declare dso_local i32* @jbig2_image_reference(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
