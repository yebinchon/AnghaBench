; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamPropagateXCLAIM.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamPropagateXCLAIM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"XCLAIM\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"RETRYCOUNT\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FORCE\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"JUSTID\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"LASTID\00", align 1
@server = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@PROPAGATE_REPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @streamPropagateXCLAIM(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_13__* %2, i32* %3, i32* %4, %struct.TYPE_12__* %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca [14 x i32*], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %12, align 8
  %14 = call i32* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %15 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 0
  store i32* %14, i32** %15, align 16
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 1
  store i32* %16, i32** %17, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 2
  store i32* %18, i32** %19, align 16
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @sdslen(i8* %29)
  %31 = call i32* @createStringObject(i8* %24, i32 %30)
  %32 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 3
  store i32* %31, i32** %32, align 8
  %33 = call i32* @createStringObjectFromLongLong(i32 0)
  %34 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 4
  store i32* %33, i32** %34, align 16
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 5
  store i32* %35, i32** %36, align 8
  %37 = call i32* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %38 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 6
  store i32* %37, i32** %38, align 16
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @createStringObjectFromLongLong(i32 %41)
  %43 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 7
  store i32* %42, i32** %43, align 8
  %44 = call i32* @createStringObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %45 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 8
  store i32* %44, i32** %45, align 16
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @createStringObjectFromLongLong(i32 %48)
  %50 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 9
  store i32* %49, i32** %50, align 8
  %51 = call i32* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %52 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 10
  store i32* %51, i32** %52, align 16
  %53 = call i32* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %54 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 11
  store i32* %53, i32** %54, align 8
  %55 = call i32* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %56 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 12
  store i32* %55, i32** %56, align 16
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = call i32* @createObjectFromStreamID(i32* %58)
  %60 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 13
  store i32* %59, i32** %60, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 0
  %68 = load i32, i32* @PROPAGATE_AOF, align 4
  %69 = load i32, i32* @PROPAGATE_REPL, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @propagate(i32 %61, i32 %66, i32** %67, i32 14, i32 %70)
  %72 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 0
  %73 = load i32*, i32** %72, align 16
  %74 = call i32 @decrRefCount(i32* %73)
  %75 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 3
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @decrRefCount(i32* %76)
  %78 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 4
  %79 = load i32*, i32** %78, align 16
  %80 = call i32 @decrRefCount(i32* %79)
  %81 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 6
  %82 = load i32*, i32** %81, align 16
  %83 = call i32 @decrRefCount(i32* %82)
  %84 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 7
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @decrRefCount(i32* %85)
  %87 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 8
  %88 = load i32*, i32** %87, align 16
  %89 = call i32 @decrRefCount(i32* %88)
  %90 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 9
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @decrRefCount(i32* %91)
  %93 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 10
  %94 = load i32*, i32** %93, align 16
  %95 = call i32 @decrRefCount(i32* %94)
  %96 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 11
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @decrRefCount(i32* %97)
  %99 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 12
  %100 = load i32*, i32** %99, align 16
  %101 = call i32 @decrRefCount(i32* %100)
  %102 = getelementptr inbounds [14 x i32*], [14 x i32*]* %13, i64 0, i64 13
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @decrRefCount(i32* %103)
  ret void
}

declare dso_local i32* @createStringObject(i8*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32* @createStringObjectFromLongLong(i32) #1

declare dso_local i32* @createObjectFromStreamID(i32*) #1

declare dso_local i32 @propagate(i32, i32, i32**, i32, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
