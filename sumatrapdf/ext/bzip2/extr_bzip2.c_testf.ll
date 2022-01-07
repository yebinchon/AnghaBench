; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzip2.c_testf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzip2.c_testf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MY_STAT = type { i32 }

@False = common dso_local global i32 0, align 4
@deleteOutputOnInterrupt = common dso_local global i32 0, align 4
@srcMode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"testf: bad modes\0A\00", align 1
@outName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@inName = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@noisy = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: There are no files matching `%s'.\0A\00", align 1
@progName = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: Can't open input %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"testf: bad srcMode\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1
@outputHandleJustInCase = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@True = common dso_local global i32 0, align 4
@testFailsExist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @testf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.MY_STAT, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @False, align 4
  store i32 %6, i32* @deleteOutputOnInterrupt, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @srcMode, align 4
  %11 = icmp ne i32 %10, 128
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9, %1
  %15 = load i8*, i8** @outName, align 8
  %16 = call i32 @copyFileName(i8* %15, i32* bitcast ([7 x i8]* @.str.1 to i32*))
  %17 = load i32, i32* @srcMode, align 4
  switch i32 %17, label %29 [
    i32 128, label %18
    i32 130, label %21
    i32 129, label %25
  ]

18:                                               ; preds = %14
  %19 = load i8*, i8** @inName, align 8
  %20 = call i32 @copyFileName(i8* %19, i32* bitcast ([8 x i8]* @.str.2 to i32*))
  br label %29

21:                                               ; preds = %14
  %22 = load i8*, i8** @inName, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @copyFileName(i8* %22, i32* %23)
  br label %29

25:                                               ; preds = %14
  %26 = load i8*, i8** @inName, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @copyFileName(i8* %26, i32* %27)
  br label %29

29:                                               ; preds = %14, %25, %21, %18
  %30 = load i32, i32* @srcMode, align 4
  %31 = icmp ne i32 %30, 128
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i8*, i8** @inName, align 8
  %34 = call i64 @containsDubiousChars(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i64, i64* @noisy, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** @progName, align 8
  %42 = load i8*, i8** @inName, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = call i32 @setExit(i32 1)
  br label %139

46:                                               ; preds = %32, %29
  %47 = load i32, i32* @srcMode, align 4
  %48 = icmp ne i32 %47, 128
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i8*, i8** @inName, align 8
  %51 = call i32 @fileExists(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** @progName, align 8
  %56 = load i8*, i8** @inName, align 8
  %57 = load i32, i32* @errno, align 4
  %58 = call i8* @strerror(i32 %57)
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %56, i8* %58)
  %60 = call i32 @setExit(i32 1)
  br label %139

61:                                               ; preds = %49, %46
  %62 = load i32, i32* @srcMode, align 4
  %63 = icmp ne i32 %62, 128
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i8*, i8** @inName, align 8
  %66 = call i32 @MY_STAT(i8* %65, %struct.MY_STAT* %5)
  %67 = getelementptr inbounds %struct.MY_STAT, %struct.MY_STAT* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @MY_S_ISDIR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** @progName, align 8
  %74 = load i8*, i8** @inName, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %73, i8* %74)
  %76 = call i32 @setExit(i32 1)
  br label %139

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* @srcMode, align 4
  switch i32 %79, label %110 [
    i32 128, label %80
    i32 129, label %96
    i32 130, label %96
  ]

80:                                               ; preds = %78
  %81 = load i32*, i32** @stdin, align 8
  %82 = call i32 @fileno(i32* %81)
  %83 = call i32 @isatty(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i32, i32* @stderr, align 4
  %87 = load i8*, i8** @progName, align 8
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* @stderr, align 4
  %90 = load i8*, i8** @progName, align 8
  %91 = load i8*, i8** @progName, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %90, i8* %91)
  %93 = call i32 @setExit(i32 1)
  br label %139

94:                                               ; preds = %80
  %95 = load i32*, i32** @stdin, align 8
  store i32* %95, i32** %3, align 8
  br label %112

96:                                               ; preds = %78, %78
  %97 = load i8*, i8** @inName, align 8
  %98 = call i32* @fopen(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %98, i32** %3, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8*, i8** @progName, align 8
  %104 = load i8*, i8** @inName, align 8
  %105 = load i32, i32* @errno, align 4
  %106 = call i8* @strerror(i32 %105)
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %103, i8* %104, i8* %106)
  %108 = call i32 @setExit(i32 1)
  br label %139

109:                                              ; preds = %96
  br label %112

110:                                              ; preds = %78
  %111 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %109, %94
  %113 = load i32, i32* @verbosity, align 4
  %114 = icmp sge i32 %113, 1
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i32, i32* @stderr, align 4
  %117 = load i8*, i8** @inName, align 8
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %117)
  %119 = load i8*, i8** @inName, align 8
  %120 = call i32 @pad(i8* %119)
  %121 = load i32, i32* @stderr, align 4
  %122 = call i32 @fflush(i32 %121)
  br label %123

123:                                              ; preds = %115, %112
  store i32* null, i32** @outputHandleJustInCase, align 8
  %124 = load i32*, i32** %3, align 8
  %125 = call i64 @testStream(i32* %124)
  store i64 %125, i64* %4, align 8
  %126 = load i64, i64* %4, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i32, i32* @verbosity, align 4
  %130 = icmp sge i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* @stderr, align 4
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %128, %123
  %135 = load i64, i64* %4, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @True, align 4
  store i32 %138, i32* @testFailsExist, align 4
  br label %139

139:                                              ; preds = %44, %53, %71, %85, %101, %137, %134
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @copyFileName(i8*, i32*) #1

declare dso_local i64 @containsDubiousChars(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @setExit(i32) #1

declare dso_local i32 @fileExists(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @MY_STAT(i8*, %struct.MY_STAT*) #1

declare dso_local i64 @MY_S_ISDIR(i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pad(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @testStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
