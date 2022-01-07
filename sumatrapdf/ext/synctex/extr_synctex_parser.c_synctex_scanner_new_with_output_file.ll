; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_scanner_new_with_output_file.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_scanner_new_with_output_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

@SYNCTEX_BUFFER_SIZE = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"SyncTeX BUG: Internal inconsistency, bad SYNCTEX_BUFFER_SIZE (1)\00", align 1
@SYNCTEX_BUFFER_MIN_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"SyncTeX BUG: Internal inconsistency, bad SYNCTEX_BUFFER_SIZE (2)\00", align 1
@synctex_ADD_QUOTES = common dso_local global i32 0, align 4
@synctex_DONT_ADD_QUOTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"SyncTeX: malloc problem\00", align 1
@.str.3 = private unnamed_addr constant [95 x i8] c"!  synctex_scanner_new_with_output_file: Memory problem (2), scanner's output is not reliable.\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"!  synctex_scanner_new_with_output_file: Copy problem, scanner's output is not reliable.\00", align 1
@SYNCTEX_FILE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @synctex_scanner_new_with_output_file(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* @SYNCTEX_BUFFER_SIZE, align 8
  %13 = load i64, i64* @UINT_MAX, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @_synctex_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %92

17:                                               ; preds = %3
  %18 = load i64, i64* @SYNCTEX_BUFFER_SIZE, align 8
  %19 = load i64, i64* @SYNCTEX_BUFFER_MIN_SIZE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @_synctex_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %92

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @synctex_ADD_QUOTES, align 4
  %27 = call i64 @_synctex_open(i8* %24, i8* %25, i8** %9, i32** %8, i32 %26, i32* %11)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %29, %23
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @synctex_DONT_ADD_QUOTES, align 4
  %36 = call i64 @_synctex_open(i8* %33, i8* %34, i8** %9, i32** %8, i32 %35, i32* %11)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %32
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %92

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %29
  %44 = call i64 @_synctex_malloc(i32 4)
  %45 = inttoptr i64 %44 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %10, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = icmp eq %struct.TYPE_5__* null, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = call i32 @_synctex_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @gzclose(i32* %52)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %92

54:                                               ; preds = %43
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = add nsw i64 %56, 1
  %58 = call i64 @malloc(i64 %57)
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = icmp eq i8* null, %59
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = call i32 @_synctex_error(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0))
  br label %78

65:                                               ; preds = %54
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i8* @strcpy(i8* %71, i8* %72)
  %74 = icmp ne i8* %68, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = call i32 @_synctex_error(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %65
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i8*, i8** %9, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32*, i32** %8, align 8
  store i32* %82, i32** @SYNCTEX_FILE, align 8
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %87 = call %struct.TYPE_5__* @synctex_scanner_parse(%struct.TYPE_5__* %86)
  br label %90

88:                                               ; preds = %78
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi %struct.TYPE_5__* [ %87, %85 ], [ %89, %88 ]
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %4, align 8
  br label %92

92:                                               ; preds = %90, %48, %41, %21, %15
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %93
}

declare dso_local i32 @_synctex_error(i8*) #1

declare dso_local i64 @_synctex_open(i8*, i8*, i8**, i32**, i32, i32*) #1

declare dso_local i64 @_synctex_malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @gzclose(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @synctex_scanner_parse(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
