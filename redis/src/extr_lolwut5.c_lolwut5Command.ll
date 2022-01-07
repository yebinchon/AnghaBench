; ModuleID = '/home/carl/AnghaBench/redis/src/extr_lolwut5.c_lolwut5Command.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_lolwut5.c_lolwut5Command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"\0AGeorg Nees - schotter, plotter on paper, 1968. Redis ver. \00", align 1
@REDIS_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lolwut5Command(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i64 66, i64* %3, align 8
  store i64 8, i64* %4, align 8
  store i64 12, i64* %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @getLongFromObjectOrReply(%struct.TYPE_5__* %13, i32 %18, i64* %3, i32* null)
  %20 = load i64, i64* @C_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %102

23:                                               ; preds = %12, %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @getLongFromObjectOrReply(%struct.TYPE_5__* %29, i32 %34, i64* %4, i32* null)
  %36 = load i64, i64* @C_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %102

39:                                               ; preds = %28, %23
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @getLongFromObjectOrReply(%struct.TYPE_5__* %45, i32 %50, i64* %5, i32* null)
  %52 = load i64, i64* @C_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %102

55:                                               ; preds = %44, %39
  %56 = load i64, i64* %3, align 8
  %57 = icmp slt i64 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 1, i64* %3, align 8
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i64, i64* %3, align 8
  %61 = icmp sgt i64 %60, 1000
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i64 1000, i64* %3, align 8
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i64, i64* %4, align 8
  %65 = icmp slt i64 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i64 1, i64* %4, align 8
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i64, i64* %4, align 8
  %69 = icmp sgt i64 %68, 200
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i64 200, i64* %4, align 8
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i64, i64* %5, align 8
  %73 = icmp slt i64 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i64 1, i64* %5, align 8
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i64, i64* %5, align 8
  %77 = icmp sgt i64 %76, 200
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i64 200, i64* %5, align 8
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32* @lwDrawSchotter(i64 %80, i64 %81, i64 %82)
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @renderCanvas(i32* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @sdscat(i32 %86, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i8*, i8** @REDIS_VERSION, align 8
  %90 = call i32 @sdscat(i32 %88, i8* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @sdscatlen(i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @sdslen(i32 %95)
  %97 = call i32 @addReplyVerbatim(%struct.TYPE_5__* %93, i32 %94, i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @sdsfree(i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @lwFreeCanvas(i32* %100)
  br label %102

102:                                              ; preds = %79, %54, %38, %22
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_5__*, i32, i64*, i32*) #1

declare dso_local i32* @lwDrawSchotter(i64, i64, i64) #1

declare dso_local i32 @renderCanvas(i32*) #1

declare dso_local i32 @sdscat(i32, i8*) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @addReplyVerbatim(%struct.TYPE_5__*, i32, i32, i8*) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @lwFreeCanvas(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
