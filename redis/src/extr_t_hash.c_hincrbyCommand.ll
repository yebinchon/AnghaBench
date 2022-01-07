; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_hincrbyCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_hincrbyCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_15__** }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"hash value is not an integer\00", align 1
@LLONG_MIN = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"increment or decrement would overflow\00", align 1
@HASH_SET_TAKE_VALUE = common dso_local global i32 0, align 4
@NOTIFY_HASH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"hincrby\00", align 1
@server = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hincrbyCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %13, i64 3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_13__* %10, %struct.TYPE_15__* %15, i64* %4, i32* null)
  %17 = load i64, i64* @C_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %127

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %24, i64 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = call i32* @hashTypeLookupWriteOrCreate(%struct.TYPE_13__* %21, %struct.TYPE_15__* %26)
  store i32* %27, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %127

30:                                               ; preds = %20
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %34, i64 2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @hashTypeGetValue(i32* %31, i32 %38, i8** %8, i32* %9, i64* %3)
  %40 = load i64, i64* @C_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %30
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @string2ll(i8* %46, i32 %47, i64* %3)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = call i32 @addReplyError(%struct.TYPE_13__* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %127

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %42
  br label %56

55:                                               ; preds = %30
  store i64 0, i64* %3, align 8
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i64, i64* %3, align 8
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i64, i64* %5, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @LLONG_MIN, align 8
  %66 = load i64, i64* %5, align 8
  %67 = sub nsw i64 %65, %66
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %63, %60, %56
  %70 = load i64, i64* %4, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i64, i64* %5, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @LLONG_MAX, align 8
  %78 = load i64, i64* %5, align 8
  %79 = sub nsw i64 %77, %78
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %63
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %83 = call i32 @addReplyError(%struct.TYPE_13__* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %127

84:                                               ; preds = %75, %72, %69
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* %3, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %3, align 8
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @sdsfromlonglong(i64 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %93, i64 2
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @HASH_SET_TAKE_VALUE, align 4
  %100 = call i32 @hashTypeSet(i32* %90, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %102 = load i64, i64* %3, align 8
  %103 = call i32 @addReplyLongLong(%struct.TYPE_13__* %101, i64 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %109, i64 1
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = call i32 @signalModifiedKey(%struct.TYPE_14__* %106, %struct.TYPE_15__* %111)
  %113 = load i32, i32* @NOTIFY_HASH, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %116, i64 1
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @notifyKeyspaceEvent(i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %118, i32 %123)
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 4
  br label %127

127:                                              ; preds = %84, %81, %50, %29, %19
  ret void
}

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_13__*, %struct.TYPE_15__*, i64*, i32*) #1

declare dso_local i32* @hashTypeLookupWriteOrCreate(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i64 @hashTypeGetValue(i32*, i32, i8**, i32*, i64*) #1

declare dso_local i64 @string2ll(i8*, i32, i64*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @sdsfromlonglong(i64) #1

declare dso_local i32 @hashTypeSet(i32*, i32, i32, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
