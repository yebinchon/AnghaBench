; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_setbitCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_setbitCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"bit is not an integer or out of range\00", align 1
@C_OK = common dso_local global i64 0, align 8
@NOTIFY_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"setbit\00", align 1
@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@shared = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setbitCommand(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @getBitOffsetFromArgument(%struct.TYPE_14__* %11, i32 %16, i64* %5, i32 0, i32 0)
  %18 = load i64, i64* @C_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %119

21:                                               ; preds = %1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @getLongFromObjectOrReply(%struct.TYPE_14__* %22, i32 %27, i64* %10, i8* %28)
  %30 = load i64, i64* @C_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %119

33:                                               ; preds = %21
  %34 = load i64, i64* %10, align 8
  %35 = and i64 %34, -2
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @addReplyError(%struct.TYPE_14__* %38, i8* %39)
  br label %119

41:                                               ; preds = %33
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call %struct.TYPE_13__* @lookupStringForBitCommand(%struct.TYPE_14__* %42, i64 %43)
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %3, align 8
  %45 = icmp eq %struct.TYPE_13__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %119

47:                                               ; preds = %41
  %48 = load i64, i64* %5, align 8
  %49 = lshr i64 %48, 3
  store i64 %49, i64* %6, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load i64, i64* %5, align 8
  %58 = and i64 %57, 7
  %59 = sub i64 7, %58
  store i64 %59, i64* %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %7, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 1, %62
  %64 = and i32 %60, %63
  store i32 %64, i32* %9, align 4
  %65 = load i64, i64* %7, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i64, i64* %10, align 8
  %72 = and i64 %71, 1
  %73 = load i64, i64* %7, align 8
  %74 = shl i64 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = or i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @signalModifiedKey(%struct.TYPE_15__* %88, i32 %93)
  %95 = load i32, i32* @NOTIFY_STRING, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @notifyKeyspaceEvent(i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %105)
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %47
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shared, i32 0, i32 1), align 4
  br label %116

114:                                              ; preds = %47
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shared, i32 0, i32 0), align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = call i32 @addReply(%struct.TYPE_14__* %109, i32 %117)
  br label %119

119:                                              ; preds = %116, %46, %37, %32, %20
  ret void
}

declare dso_local i64 @getBitOffsetFromArgument(%struct.TYPE_14__*, i32, i64*, i32, i32) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_14__*, i32, i64*, i8*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.TYPE_13__* @lookupStringForBitCommand(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
