; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_main.c_extract_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_main.c_extract_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wine_test = type { i8*, i8* }

@TESTRES = common dso_local global i32 0, align 4
@R_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't find test resource %s: %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@testexe = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Not an .exe file: %s\00", align 1
@R_STEP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Extracting: %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to write file %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wine_test*, i8*, i32)* @extract_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_test(%struct.wine_test* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wine_test*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.wine_test* %0, %struct.wine_test** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TESTRES, align 4
  %13 = call i32* @extract_rcdata(i32 %11, i32 %12, i32* %8)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @R_FATAL, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 (i32, i8*, i8*, ...) @report(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @xstrdup(i32 %24)
  %26 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %27 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %30 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strmake(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %31)
  %33 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %34 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %36 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @testexe, align 4
  %39 = call i8* @strstr(i8* %37, i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* @R_FATAL, align 4
  %44 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %45 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @report(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %42, %23
  %49 = load i8*, i8** %10, align 8
  store i8 0, i8* %49, align 1
  %50 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %51 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %55 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %53 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = add nsw i64 %59, 1
  %61 = trunc i64 %60 to i32
  %62 = call i8* @xrealloc(i8* %52, i32 %61)
  %63 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %64 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @R_STEP, align 4
  %66 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %67 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32, i8*, i8*, ...) @report(i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %71 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32* @fopen(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %73, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %48
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @fwrite(i32* %76, i32 %77, i32 1, i32* %78)
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load i32*, i32** %9, align 8
  %83 = call i64 @fclose(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81, %75, %48
  %86 = load i32, i32* @R_FATAL, align 4
  %87 = load %struct.wine_test*, %struct.wine_test** %4, align 8
  %88 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32, i8*, i8*, ...) @report(i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %85, %81
  ret void
}

declare dso_local i32* @extract_rcdata(i32, i32, i32*) #1

declare dso_local i32 @report(i32, i8*, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i8* @strmake(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
