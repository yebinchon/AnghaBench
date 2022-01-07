; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_blockingGenericZpopCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_blockingGenericZpopCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { i64 }

@UNIT_SECONDS = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@OBJ_ZSET = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@ZSET_MAX = common dso_local global i32 0, align 4
@CLIENT_MULTI = common dso_local global i32 0, align 4
@BLOCKED_ZSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blockingGenericZpopCommand(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UNIT_SECONDS, align 4
  %20 = call i64 @getTimeoutFromObjectOrReply(%struct.TYPE_14__* %8, i32 %18, i32* %6, i32 %19)
  %21 = load i64, i64* @C_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %117

24:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %91, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %94

32:                                               ; preds = %25
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_13__* @lookupKeyWrite(i32 %35, i32 %42)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %5, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %45, label %46, label %90

46:                                               ; preds = %32
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @OBJ_ZSET, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 2), align 4
  %55 = call i32 @addReply(%struct.TYPE_14__* %53, i32 %54)
  br label %117

56:                                               ; preds = %46
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = call i64 @zsetLength(%struct.TYPE_13__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @genericZpopCommand(%struct.TYPE_14__* %61, i32* %67, i32 1, i32 %68, i32 1, i32* null)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ZSET_MAX, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 1), align 4
  br label %78

76:                                               ; preds = %60
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 0), align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rewriteClientCommandVector(%struct.TYPE_14__* %70, i32 2, i32 %79, i32 %86)
  br label %117

88:                                               ; preds = %56
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %32
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %25

94:                                               ; preds = %25
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CLIENT_MULTI, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = call i32 @addReplyNullArray(%struct.TYPE_14__* %102)
  br label %117

104:                                              ; preds = %94
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = load i32, i32* @BLOCKED_ZSET, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 2
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @blockForKeys(%struct.TYPE_14__* %105, i32 %106, i32* %110, i32 %114, i32 %115, i32* null, i32* null)
  br label %117

117:                                              ; preds = %104, %101, %78, %52, %23
  ret void
}

declare dso_local i64 @getTimeoutFromObjectOrReply(%struct.TYPE_14__*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_13__* @lookupKeyWrite(i32, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @zsetLength(%struct.TYPE_13__*) #1

declare dso_local i32 @genericZpopCommand(%struct.TYPE_14__*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @rewriteClientCommandVector(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @addReplyNullArray(%struct.TYPE_14__*) #1

declare dso_local i32 @blockForKeys(%struct.TYPE_14__*, i32, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
