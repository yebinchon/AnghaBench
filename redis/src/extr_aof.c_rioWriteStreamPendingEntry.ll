; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_rioWriteStreamPendingEntry.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_rioWriteStreamPendingEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"XCLAIM\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"RETRYCOUNT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"JUSTID\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FORCE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rioWriteStreamPendingEntry(i32* %0, i32* %1, i8* %2, i64 %3, %struct.TYPE_6__* %4, i8* %5, %struct.TYPE_5__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %15, align 8
  %17 = load i8*, i8** %14, align 8
  %18 = call i32 @streamDecodeID(i8* %17, i32* %16)
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @rioWriteBulkCount(i32* %19, i8 signext 42, i32 12)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %101

23:                                               ; preds = %7
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @rioWriteBulkString(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %101

28:                                               ; preds = %23
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i64 @rioWriteBulkObject(i32* %29, i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %101

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @rioWriteBulkString(i32* %35, i8* %36, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %101

42:                                               ; preds = %34
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @sdslen(i8* %49)
  %51 = call i64 @rioWriteBulkString(i32* %43, i8* %46, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %101

54:                                               ; preds = %42
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @rioWriteBulkString(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %101

59:                                               ; preds = %54
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 @rioWriteBulkStreamID(i32* %60, i32* %16)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %101

64:                                               ; preds = %59
  %65 = load i32*, i32** %9, align 8
  %66 = call i64 @rioWriteBulkString(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %101

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @rioWriteBulkLongLong(i32* %70, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %101

77:                                               ; preds = %69
  %78 = load i32*, i32** %9, align 8
  %79 = call i64 @rioWriteBulkString(i32* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %101

82:                                               ; preds = %77
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @rioWriteBulkLongLong(i32* %83, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 0, i32* %8, align 4
  br label %101

90:                                               ; preds = %82
  %91 = load i32*, i32** %9, align 8
  %92 = call i64 @rioWriteBulkString(i32* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  br label %101

95:                                               ; preds = %90
  %96 = load i32*, i32** %9, align 8
  %97 = call i64 @rioWriteBulkString(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 0, i32* %8, align 4
  br label %101

100:                                              ; preds = %95
  store i32 1, i32* %8, align 4
  br label %101

101:                                              ; preds = %100, %99, %94, %89, %81, %76, %68, %63, %58, %53, %41, %33, %27, %22
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local i32 @streamDecodeID(i8*, i32*) #1

declare dso_local i64 @rioWriteBulkCount(i32*, i8 signext, i32) #1

declare dso_local i64 @rioWriteBulkString(i32*, i8*, i32) #1

declare dso_local i64 @rioWriteBulkObject(i32*, i32*) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i64 @rioWriteBulkStreamID(i32*, i32*) #1

declare dso_local i64 @rioWriteBulkLongLong(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
