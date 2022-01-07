; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_string.c_incrbyfloatCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_string.c_incrbyfloatCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32** }
%struct.TYPE_14__ = type { i32 }

@OBJ_STRING = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"increment would produce NaN or Infinity\00", align 1
@NOTIFY_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"incrbyfloat\00", align 1
@server = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"SET\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @incrbyfloatCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32* @lookupKeyWrite(%struct.TYPE_14__* %10, i32* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @OBJ_STRING, align 4
  %23 = call i64 @checkType(%struct.TYPE_13__* %20, i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %120

26:                                               ; preds = %19, %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @getLongDoubleFromObjectOrReply(%struct.TYPE_13__* %27, i32* %28, x86_fp80* %4, i32* null)
  %30 = load i64, i64* @C_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @getLongDoubleFromObjectOrReply(%struct.TYPE_13__* %33, i32* %38, x86_fp80* %3, i32* null)
  %40 = load i64, i64* @C_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32, %26
  br label %120

43:                                               ; preds = %32
  %44 = load x86_fp80, x86_fp80* %3, align 16
  %45 = load x86_fp80, x86_fp80* %4, align 16
  %46 = fadd x86_fp80 %45, %44
  store x86_fp80 %46, x86_fp80* %4, align 16
  %47 = load x86_fp80, x86_fp80* %4, align 16
  %48 = call i64 @isnan(x86_fp80 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load x86_fp80, x86_fp80* %4, align 16
  %52 = call i64 @isinf(x86_fp80 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %43
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %56 = call i32 @addReplyError(%struct.TYPE_13__* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %120

57:                                               ; preds = %50
  %58 = load x86_fp80, x86_fp80* %4, align 16
  %59 = call i32* @createStringObjectFromLongDouble(x86_fp80 %58, i32 1)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @dbOverwrite(%struct.TYPE_14__* %65, i32* %70, i32* %71)
  br label %84

73:                                               ; preds = %57
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @dbAdd(%struct.TYPE_14__* %76, i32* %81, i32* %82)
  br label %84

84:                                               ; preds = %73, %62
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @signalModifiedKey(%struct.TYPE_14__* %87, i32* %92)
  %94 = load i32, i32* @NOTIFY_STRING, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @notifyKeyspaceEvent(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %99, i32 %104)
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @addReplyBulk(%struct.TYPE_13__* %108, i32* %109)
  %111 = call i32* @createStringObject(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  store i32* %111, i32** %7, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @rewriteClientCommandArgument(%struct.TYPE_13__* %112, i32 0, i32* %113)
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @decrRefCount(i32* %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @rewriteClientCommandArgument(%struct.TYPE_13__* %117, i32 2, i32* %118)
  br label %120

120:                                              ; preds = %84, %54, %42, %25
  ret void
}

declare dso_local i32* @lookupKeyWrite(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @checkType(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i64 @getLongDoubleFromObjectOrReply(%struct.TYPE_13__*, i32*, x86_fp80*, i32*) #1

declare dso_local i64 @isnan(x86_fp80) #1

declare dso_local i64 @isinf(x86_fp80) #1

declare dso_local i32 @addReplyError(%struct.TYPE_13__*, i8*) #1

declare dso_local i32* @createStringObjectFromLongDouble(x86_fp80, i32) #1

declare dso_local i32 @dbOverwrite(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @dbAdd(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32*, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_13__*, i32*) #1

declare dso_local i32* @createStringObject(i8*, i32) #1

declare dso_local i32 @rewriteClientCommandArgument(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
