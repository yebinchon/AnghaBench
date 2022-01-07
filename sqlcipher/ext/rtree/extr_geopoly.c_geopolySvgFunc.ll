; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolySvgFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolySvgFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"<polyline points=\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%c%g,%g\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" %g,%g'\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"></polyline>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @geopolySvgFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geopolySvgFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %95

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call %struct.TYPE_7__* @geopolyFuncParam(i32* %17, i32* %20, i32 0)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %95

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @sqlite3_context_db_handle(i32* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @sqlite3_str_new(i32* %27)
  store i32* %28, i32** %9, align 8
  store i8 39, i8* %11, align 1
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %48, %24
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i32*, i32** %9, align 8
  %39 = load i8, i8* %11, align 1
  %40 = sext i8 %39 to i32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @GeoX(%struct.TYPE_7__* %41, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @GeoY(%struct.TYPE_7__* %44, i32 %45)
  %47 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  store i8 32, i8* %11, align 1
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = call i32 @GeoX(%struct.TYPE_7__* %53, i32 0)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = call i32 @GeoY(%struct.TYPE_7__* %55, i32 0)
  %57 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %56)
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %83, %51
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load i32**, i32*** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @sqlite3_value_text(i32* %67)
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %12, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32*, i32** %9, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %72, %62
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %58

86:                                               ; preds = %58
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @sqlite3_str_finish(i32* %90)
  %92 = call i32 @sqlite3_result_text(i32* %89, i32 %91, i32 -1, i32 (%struct.TYPE_7__*)* @sqlite3_free)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = call i32 @sqlite3_free(%struct.TYPE_7__* %93)
  br label %95

95:                                               ; preds = %15, %86, %16
  ret void
}

declare dso_local %struct.TYPE_7__* @geopolyFuncParam(i32*, i32*, i32) #1

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32* @sqlite3_str_new(i32*) #1

declare dso_local i32 @sqlite3_str_appendf(i32*, i8*, ...) #1

declare dso_local i32 @GeoX(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @GeoY(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32 (%struct.TYPE_7__*)*) #1

declare dso_local i32 @sqlite3_str_finish(i32*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
