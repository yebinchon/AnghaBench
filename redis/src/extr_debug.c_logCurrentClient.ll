; ModuleID = '/home/carl/AnghaBench/redis/src/extr_debug.c_logCurrentClient.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_debug.c_logCurrentClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@server = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@LL_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"\0A------ CURRENT CLIENT INFO ------\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"argv[%d]: '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"key '%s' found in DB containing the following object:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logCurrentClient() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %9 = icmp eq %struct.TYPE_12__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %93

11:                                               ; preds = %0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %1, align 8
  %13 = load i32, i32* @LL_WARNING, align 4
  %14 = load i32, i32* @LL_RAW, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @serverLogRaw(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @sdsempty()
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %19 = call i8* @catClientInfoString(i32 %17, %struct.TYPE_12__* %18)
  store i8* %19, i8** %2, align 8
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = load i32, i32* @LL_RAW, align 4
  %22 = or i32 %20, %21
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (i32, i8*, ...) @serverLog(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @sdsfree(i8* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %53, %11
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_11__* @getDecodedObject(i32 %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %4, align 8
  %42 = load i32, i32* @LL_WARNING, align 4
  %43 = load i32, i32* @LL_RAW, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (i32, i8*, ...) @serverLog(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %45, i8* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = call i32 @decrRefCount(%struct.TYPE_11__* %51)
  br label %53

53:                                               ; preds = %33
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %27

56:                                               ; preds = %27
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %59, 1
  br i1 %60, label %61, label %93

61:                                               ; preds = %56
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_11__* @getDecodedObject(i32 %66)
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %6, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32* @dictFind(i32 %72, i64 %75)
  store i32* %76, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %61
  %80 = load i32*, i32** %7, align 8
  %81 = call %struct.TYPE_11__* @dictGetVal(i32* %80)
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %5, align 8
  %82 = load i32, i32* @LL_WARNING, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 (i32, i8*, ...) @serverLog(i32 %82, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = call i32 @serverLogObjectDebugInfo(%struct.TYPE_11__* %88)
  br label %90

90:                                               ; preds = %79, %61
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = call i32 @decrRefCount(%struct.TYPE_11__* %91)
  br label %93

93:                                               ; preds = %10, %90, %56
  ret void
}

declare dso_local i32 @serverLogRaw(i32, i8*) #1

declare dso_local i8* @catClientInfoString(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local %struct.TYPE_11__* @getDecodedObject(i32) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_11__*) #1

declare dso_local i32* @dictFind(i32, i64) #1

declare dso_local %struct.TYPE_11__* @dictGetVal(i32*) #1

declare dso_local i32 @serverLogObjectDebugInfo(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
