; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_page.c_jbig2_page_add_result.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_page.c_jbig2_page_add_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64, i32 }

@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"page info possibly missing, no image defined\00", align 1
@JBIG2_SEVERITY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"growing page buffer to %u rows to accommodate new stripe\00", align 1
@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"unable to resize image to accommodate new stripe\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to compose image with page\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbig2_page_add_result(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = icmp eq %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %24 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %22, i32 %23, i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %7, align 4
  br label %96

25:                                               ; preds = %6
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %79

35:                                               ; preds = %30
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %15, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %15, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %35
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @JBIG2_SEVERITY_DEBUG, align 4
  %51 = load i64, i64* %15, align 8
  %52 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %49, i32 %50, i32 -1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 4
  %67 = call %struct.TYPE_10__* @jbig2_image_resize(i32* %53, %struct.TYPE_10__* %56, i32 %61, i64 %62, i32 %66)
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %16, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %69 = icmp eq %struct.TYPE_10__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %48
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %73 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %71, i32 %72, i32 -1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 %73, i32* %7, align 4
  br label %96

74:                                               ; preds = %48
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %77, align 8
  br label %78

78:                                               ; preds = %74, %35
  br label %79

79:                                               ; preds = %78, %30, %25
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @jbig2_image_compose(i32* %80, %struct.TYPE_10__* %83, %struct.TYPE_10__* %84, i64 %85, i64 %86, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %79
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %94 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %92, i32 %93, i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 %94, i32* %7, align 4
  br label %96

95:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %91, %70, %21
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @jbig2_image_resize(i32*, %struct.TYPE_10__*, i32, i64, i32) #1

declare dso_local i32 @jbig2_image_compose(i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
