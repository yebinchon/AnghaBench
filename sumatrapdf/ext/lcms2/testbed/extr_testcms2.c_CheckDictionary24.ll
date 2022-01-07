; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckDictionary24.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckDictionary24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.2 = private unnamed_addr constant [13 x i32] [i32 72, i32 101, i32 108, i32 108, i32 111, i32 44, i32 32, i32 119, i32 111, i32 114, i32 108, i32 100, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ES\00", align 1
@.str.5 = private unnamed_addr constant [12 x i32] [i32 72, i32 111, i32 108, i32 97, i32 44, i32 32, i32 109, i32 117, i32 110, i32 100, i32 111, i32 0], align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"FR\00", align 1
@.str.8 = private unnamed_addr constant [18 x i32] [i32 66, i32 111, i32 110, i32 106, i32 111, i32 117, i32 114, i32 44, i32 32, i32 108, i32 101, i32 32, i32 109, i32 111, i32 110, i32 100, i32 101, i32 0], align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str.11 = private unnamed_addr constant [10 x i32] [i32 72, i32 111, i32 108, i32 97, i32 44, i32 32, i32 109, i32 111, i32 110, i32 0], align 4
@.str.12 = private unnamed_addr constant [5 x i32] [i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.13 = private unnamed_addr constant [7 x i32] [i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 0], align 4
@.str.14 = private unnamed_addr constant [6 x i32] [i32 78, i32 97, i32 109, i32 101, i32 50, i32 0], align 4
@.str.15 = private unnamed_addr constant [3 x i32] [i32 49, i32 50, i32 0], align 4
@cmsSigMetaTag = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"Hello, world\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Hola, mundo\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Bonjour, le monde\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Hola, mon\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Unexpected string '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CheckDictionary24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckDictionary24(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %143 [
    i32 1, label %12
    i32 2, label %50
  ]

12:                                               ; preds = %2
  %13 = call i32 (...) @DbgThread()
  %14 = call i32* @cmsDictAlloc(i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = call i32 (...) @DbgThread()
  %16 = call i32* @cmsMLUalloc(i32 %15, i32 0)
  store i32* %16, i32** %8, align 8
  %17 = call i32 (...) @DbgThread()
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @cmsMLUsetWide(i32 %17, i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* bitcast ([13 x i32]* @.str.2 to i8*))
  %20 = call i32 (...) @DbgThread()
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @cmsMLUsetWide(i32 %20, i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* bitcast ([12 x i32]* @.str.5 to i8*))
  %23 = call i32 (...) @DbgThread()
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @cmsMLUsetWide(i32 %23, i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* bitcast ([18 x i32]* @.str.8 to i8*))
  %26 = call i32 (...) @DbgThread()
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @cmsMLUsetWide(i32 %26, i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* bitcast ([10 x i32]* @.str.11 to i8*))
  %29 = call i32 (...) @DbgThread()
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @cmsDictAddEntry(i32 %29, i32* %30, i8* bitcast ([5 x i32]* @.str.12 to i8*), i8* bitcast ([7 x i32]* @.str.13 to i8*), i32* %31, i32* null)
  %33 = call i32 (...) @DbgThread()
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @cmsMLUfree(i32 %33, i32* %34)
  %36 = call i32 (...) @DbgThread()
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @cmsDictAddEntry(i32 %36, i32* %37, i8* bitcast ([6 x i32]* @.str.14 to i8*), i8* bitcast ([3 x i32]* @.str.15 to i8*), i32* null, i32* null)
  %39 = call i32 (...) @DbgThread()
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @cmsSigMetaTag, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @cmsWriteTag(i32 %39, i32 %40, i32 %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %145

46:                                               ; preds = %12
  %47 = call i32 (...) @DbgThread()
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @cmsDictFree(i32 %47, i32* %48)
  store i32 1, i32* %3, align 4
  br label %145

50:                                               ; preds = %2
  %51 = call i32 (...) @DbgThread()
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @cmsSigMetaTag, align 4
  %54 = call i32* @cmsReadTag(i32 %51, i32 %52, i32 %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %145

58:                                               ; preds = %50
  %59 = call i32 (...) @DbgThread()
  %60 = load i32*, i32** %6, align 8
  %61 = call %struct.TYPE_5__* @cmsDictGetEntryList(i32 %59, i32* %60)
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %7, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcmp(i32 %64, i8* bitcast ([6 x i32]* @.str.14 to i8*), i32 20)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %145

68:                                               ; preds = %58
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcmp(i32 %71, i8* bitcast ([3 x i32]* @.str.15 to i8*), i32 8)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %145

75:                                               ; preds = %68
  %76 = call i32 (...) @DbgThread()
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = call %struct.TYPE_5__* @cmsDictNextEntry(i32 %76, %struct.TYPE_5__* %77)
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %7, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcmp(i32 %81, i8* bitcast ([5 x i32]* @.str.12 to i8*), i32 16)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %145

85:                                               ; preds = %75
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcmp(i32 %88, i8* bitcast ([7 x i32]* @.str.13 to i8*), i32 20)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %145

92:                                               ; preds = %85
  %93 = call i32 (...) @DbgThread()
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %98 = call i32 @cmsMLUgetASCII(i32 %93, i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 256)
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %102, %92
  %104 = call i32 (...) @DbgThread()
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %109 = call i32 @cmsMLUgetASCII(i32 %104, i32 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %108, i32 256)
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %113, %103
  %115 = call i32 (...) @DbgThread()
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %120 = call i32 @cmsMLUgetASCII(i32 %115, i32 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %119, i32 256)
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %124, %114
  %126 = call i32 (...) @DbgThread()
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %131 = call i32 @cmsMLUgetASCII(i32 %126, i32 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %130, i32 256)
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %135, %125
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %141 = call i32 @Fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %139, %136
  store i32 1, i32* %3, align 4
  br label %145

143:                                              ; preds = %2
  br label %144

144:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %142, %91, %84, %74, %67, %57, %46, %45
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32* @cmsDictAlloc(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @cmsMLUalloc(i32, i32) #1

declare dso_local i32 @cmsMLUsetWide(i32, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @cmsDictAddEntry(i32, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @cmsMLUfree(i32, i32*) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32*) #1

declare dso_local i32 @cmsDictFree(i32, i32*) #1

declare dso_local i32* @cmsReadTag(i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @cmsDictGetEntryList(i32, i32*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @cmsDictNextEntry(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @cmsMLUgetASCII(i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @Fail(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
