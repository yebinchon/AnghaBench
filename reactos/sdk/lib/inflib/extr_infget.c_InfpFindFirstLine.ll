; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpFindFirstLine.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpFindFirstLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@INF_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Section not found\0A\00", align 1
@INF_STATUS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Key not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"MALLOC() failed\0A\00", align 1
@INF_STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@INF_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfpFindFirstLine(i32* %0, i32* %1, i32* %2, %struct.TYPE_9__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %19 = icmp eq %struct.TYPE_9__** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %14, %4
  %21 = call i32 @DPRINT1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @INF_STATUS_INVALID_PARAMETER, align 4
  store i32 %22, i32* %5, align 4
  br label %77

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.TYPE_10__* @InfpFindSection(i32* %24, i32* %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %10, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = icmp eq %struct.TYPE_10__* null, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @INF_STATUS_NOT_FOUND, align 4
  store i32 %31, i32* %5, align 4
  br label %77

32:                                               ; preds = %23
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call %struct.TYPE_11__* @InfpFindKeyLine(%struct.TYPE_10__* %36, i32* %37)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %11, align 8
  br label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %11, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %45 = icmp eq %struct.TYPE_11__* null, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @INF_STATUS_NOT_FOUND, align 4
  store i32 %48, i32* %5, align 4
  br label %77

49:                                               ; preds = %43
  %50 = call %struct.TYPE_9__* @MALLOC(i32 4)
  %51 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %51, align 8
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = icmp eq %struct.TYPE_9__* null, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = call i32 @DPRINT1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @INF_STATUS_NO_MEMORY, align 4
  store i32 %57, i32* %5, align 4
  br label %77

58:                                               ; preds = %49
  %59 = load i32*, i32** %6, align 8
  %60 = ptrtoint i32* %59 to i64
  %61 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i64 %60, i64* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @INF_STATUS_SUCCESS, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %58, %55, %46, %29, %20
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local %struct.TYPE_10__* @InfpFindSection(i32*, i32*) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local %struct.TYPE_11__* @InfpFindKeyLine(%struct.TYPE_10__*, i32*) #1

declare dso_local %struct.TYPE_9__* @MALLOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
