; ModuleID = '/home/carl/AnghaBench/redis/src/extr_lolwut6.c_lolwut6Command.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_lolwut6.c_lolwut6Command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [124 x i8] c"\0ADedicated to the 8 bit game developers of past and present.\0AOriginal 8 bit image from Plaguemon by hikikomori. Redis ver. \00", align 1
@REDIS_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lolwut6Command(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i64 80, i64* %3, align 8
  store i64 20, i64* %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @getLongFromObjectOrReply(%struct.TYPE_5__* %12, i32 %17, i64* %3, i32* null)
  %19 = load i64, i64* @C_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %78

22:                                               ; preds = %11, %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @getLongFromObjectOrReply(%struct.TYPE_5__* %28, i32 %33, i64* %4, i32* null)
  %35 = load i64, i64* @C_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %78

38:                                               ; preds = %27, %22
  %39 = load i64, i64* %3, align 8
  %40 = icmp slt i64 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i64 1, i64* %3, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i64, i64* %3, align 8
  %44 = icmp sgt i64 %43, 1000
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i64 1000, i64* %3, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i64, i64* %4, align 8
  %48 = icmp slt i64 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i64 1, i64* %4, align 8
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i64, i64* %4, align 8
  %52 = icmp sgt i64 %51, 1000
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i64 1000, i64* %4, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i32* @lwCreateCanvas(i64 %55, i64 %56, i32 3)
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @generateSkyline(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @renderCanvas(i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @sdscat(i32 %62, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str, i64 0, i64 0))
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i8*, i8** @REDIS_VERSION, align 8
  %66 = call i32 @sdscat(i32 %64, i8* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @sdscatlen(i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @sdslen(i32 %71)
  %73 = call i32 @addReplyVerbatim(%struct.TYPE_5__* %69, i32 %70, i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @sdsfree(i32 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @lwFreeCanvas(i32* %76)
  br label %78

78:                                               ; preds = %54, %37, %21
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_5__*, i32, i64*, i32*) #1

declare dso_local i32* @lwCreateCanvas(i64, i64, i32) #1

declare dso_local i32 @generateSkyline(i32*) #1

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
