; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_WindowAttr.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_WindowAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(ll)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@SREQ_WIN = common dso_local global i32 0, align 4
@CheckWindow = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"tabpage\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"__members__\00", align 1
@WindowAttrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i8*)* @WindowAttr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @WindowAttr(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @BufferNew(i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %3, align 8
  br label %112

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %6, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %29, i64 %32)
  store i32* %33, i32** %3, align 8
  br label %112

34:                                               ; preds = %18
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32* @PyLong_FromLong(i64 %43)
  store i32* %44, i32** %3, align 8
  br label %112

45:                                               ; preds = %34
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @NEW_DICTIONARY(i32 %54)
  store i32* %55, i32** %3, align 8
  br label %112

56:                                               ; preds = %45
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* @SREQ_WIN, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i64, i64* @CheckWindow, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = bitcast %struct.TYPE_9__* %67 to i32*
  %69 = call i32* @OptionsNew(i32 %61, %struct.TYPE_10__* %64, i32 %66, i32* %68)
  store i32* %69, i32** %3, align 8
  br label %112

70:                                               ; preds = %56
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @CheckTabPage(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32* null, i32** %3, align 8
  br label %112

81:                                               ; preds = %74
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @get_firstwin(i64 %87)
  %89 = call i64 @get_win_number(%struct.TYPE_10__* %84, i32 %88)
  %90 = call i32* @PyLong_FromLong(i64 %89)
  store i32* %90, i32** %3, align 8
  br label %112

91:                                               ; preds = %70
  %92 = load i8*, i8** %5, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @Py_INCREF(i64 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  store i32* %103, i32** %3, align 8
  br label %112

104:                                              ; preds = %91
  %105 = load i8*, i8** %5, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @WindowAttrs, align 4
  %110 = call i32* @ObjectDir(i32* null, i32 %109)
  store i32* %110, i32** %3, align 8
  br label %112

111:                                              ; preds = %104
  store i32* null, i32** %3, align 8
  br label %112

112:                                              ; preds = %111, %108, %95, %81, %80, %60, %49, %38, %22, %10
  %113 = load i32*, i32** %3, align 8
  ret i32* %113
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @BufferNew(i32) #1

declare dso_local i32* @Py_BuildValue(i8*, i64, i64) #1

declare dso_local i32* @PyLong_FromLong(i64) #1

declare dso_local i32* @NEW_DICTIONARY(i32) #1

declare dso_local i32* @OptionsNew(i32, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @CheckTabPage(i64) #1

declare dso_local i64 @get_win_number(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @get_firstwin(i64) #1

declare dso_local i32 @Py_INCREF(i64) #1

declare dso_local i32* @ObjectDir(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
