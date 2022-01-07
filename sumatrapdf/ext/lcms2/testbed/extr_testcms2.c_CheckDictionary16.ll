; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckDictionary16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckDictionary16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }

@.str = private unnamed_addr constant [6 x i32] [i32 78, i32 97, i32 109, i32 101, i32 48, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 78, i32 97, i32 109, i32 101, i32 49, i32 0], align 4
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [7 x i32] [i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 0], align 4
@.str.5 = private unnamed_addr constant [6 x i32] [i32 78, i32 97, i32 109, i32 101, i32 50, i32 0], align 4
@.str.6 = private unnamed_addr constant [3 x i32] [i32 49, i32 50, i32 0], align 4
@cmsSigMetaTag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CheckDictionary16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckDictionary16(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %117 [
    i32 1, label %9
    i32 2, label %35
  ]

9:                                                ; preds = %2
  %10 = call i32 (...) @DbgThread()
  %11 = call i32* @cmsDictAlloc(i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = call i32 (...) @DbgThread()
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @cmsDictAddEntry(i32 %12, i32* %13, i8* bitcast ([6 x i32]* @.str to i8*), i8* null, i32* null, i32* null)
  %15 = call i32 (...) @DbgThread()
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @cmsDictAddEntry(i32 %15, i32* %16, i8* bitcast ([6 x i32]* @.str.1 to i8*), i8* bitcast ([1 x i32]* @.str.2 to i8*), i32* null, i32* null)
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @cmsDictAddEntry(i32 %18, i32* %19, i8* bitcast ([5 x i32]* @.str.3 to i8*), i8* bitcast ([7 x i32]* @.str.4 to i8*), i32* null, i32* null)
  %21 = call i32 (...) @DbgThread()
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @cmsDictAddEntry(i32 %21, i32* %22, i8* bitcast ([6 x i32]* @.str.5 to i8*), i8* bitcast ([3 x i32]* @.str.6 to i8*), i32* null, i32* null)
  %24 = call i32 (...) @DbgThread()
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @cmsSigMetaTag, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @cmsWriteTag(i32 %24, i32 %25, i32 %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %119

31:                                               ; preds = %9
  %32 = call i32 (...) @DbgThread()
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @cmsDictFree(i32 %32, i32* %33)
  store i32 1, i32* %3, align 4
  br label %119

35:                                               ; preds = %2
  %36 = call i32 (...) @DbgThread()
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @cmsSigMetaTag, align 4
  %39 = call i32* @cmsReadTag(i32 %36, i32 %37, i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %119

43:                                               ; preds = %35
  %44 = call i32 (...) @DbgThread()
  %45 = load i32*, i32** %6, align 8
  %46 = call %struct.TYPE_5__* @cmsDictGetEntryList(i32 %44, i32* %45)
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @memcmp(i32* %49, i8* bitcast ([6 x i32]* @.str.5 to i8*), i32 20)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %119

53:                                               ; preds = %43
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @memcmp(i32* %56, i8* bitcast ([3 x i32]* @.str.6 to i8*), i32 8)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %119

60:                                               ; preds = %53
  %61 = call i32 (...) @DbgThread()
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = call %struct.TYPE_5__* @cmsDictNextEntry(i32 %61, %struct.TYPE_5__* %62)
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %7, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @memcmp(i32* %66, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 16)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %119

70:                                               ; preds = %60
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @memcmp(i32* %73, i8* bitcast ([7 x i32]* @.str.4 to i8*), i32 20)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %119

77:                                               ; preds = %70
  %78 = call i32 (...) @DbgThread()
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = call %struct.TYPE_5__* @cmsDictNextEntry(i32 %78, %struct.TYPE_5__* %79)
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %7, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @memcmp(i32* %83, i8* bitcast ([6 x i32]* @.str.1 to i8*), i32 20)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %119

87:                                               ; preds = %77
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %119

93:                                               ; preds = %87
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %119

100:                                              ; preds = %93
  %101 = call i32 (...) @DbgThread()
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = call %struct.TYPE_5__* @cmsDictNextEntry(i32 %101, %struct.TYPE_5__* %102)
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %7, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @memcmp(i32* %106, i8* bitcast ([6 x i32]* @.str to i8*), i32 20)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %119

110:                                              ; preds = %100
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %119

116:                                              ; preds = %110
  store i32 1, i32* %3, align 4
  br label %119

117:                                              ; preds = %2
  br label %118

118:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %116, %115, %109, %99, %92, %86, %76, %69, %59, %52, %42, %31, %30
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32* @cmsDictAlloc(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsDictAddEntry(i32, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32*) #1

declare dso_local i32 @cmsDictFree(i32, i32*) #1

declare dso_local i32* @cmsReadTag(i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @cmsDictGetEntryList(i32, i32*) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @cmsDictNextEntry(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
