; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_pfaddCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_pfaddCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_28__** }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_25__ = type { %struct.hllhdr* }
%struct.hllhdr = type { i32 }

@C_OK = common dso_local global i64 0, align 8
@invalid_hll_err = common dso_local global i32 0, align 4
@NOTIFY_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pfadd\00", align 1
@server = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@shared = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfaddCommand(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.hllhdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %13, i64 1
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %16 = call %struct.TYPE_25__* @lookupKeyWrite(%struct.TYPE_27__* %10, %struct.TYPE_28__* %15)
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %3, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = icmp eq %struct.TYPE_25__* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = call %struct.TYPE_25__* (...) @createHLLObject()
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %3, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %26, i64 1
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %30 = call i32 @dbAdd(%struct.TYPE_27__* %23, %struct.TYPE_28__* %28, %struct.TYPE_25__* %29)
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %51

33:                                               ; preds = %1
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %36 = call i64 @isHLLObjectOrReply(%struct.TYPE_26__* %34, %struct.TYPE_25__* %35)
  %37 = load i64, i64* @C_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %137

40:                                               ; preds = %33
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %42, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %46, i64 1
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %47, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %50 = call %struct.TYPE_25__* @dbUnshareStringValue(%struct.TYPE_27__* %43, %struct.TYPE_28__* %48, %struct.TYPE_25__* %49)
  store %struct.TYPE_25__* %50, %struct.TYPE_25__** %3, align 8
  br label %51

51:                                               ; preds = %40, %19
  store i32 2, i32* %6, align 4
  br label %52

52:                                               ; preds = %91, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %52
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %62, i64 %64
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %72, i64 %74
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @sdslen(i64 %78)
  %80 = call i32 @hllAdd(%struct.TYPE_25__* %59, i8* %69, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  switch i32 %81, label %90 [
    i32 1, label %82
    i32 -1, label %85
  ]

82:                                               ; preds = %58
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %90

85:                                               ; preds = %58
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %87 = load i32, i32* @invalid_hll_err, align 4
  %88 = call i32 @sdsnew(i32 %87)
  %89 = call i32 @addReplySds(%struct.TYPE_26__* %86, i32 %88)
  br label %137

90:                                               ; preds = %58, %82
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %52

94:                                               ; preds = %52
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = load %struct.hllhdr*, %struct.hllhdr** %96, align 8
  store %struct.hllhdr* %97, %struct.hllhdr** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %94
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %102, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %106, i64 1
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %107, align 8
  %109 = call i32 @signalModifiedKey(%struct.TYPE_27__* %103, %struct.TYPE_28__* %108)
  %110 = load i32, i32* @NOTIFY_STRING, align 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %113, i64 1
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %114, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @notifyKeyspaceEvent(i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_28__* %115, i32 %120)
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @server, i32 0, i32 0), align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @server, i32 0, i32 0), align 4
  %124 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %125 = call i32 @HLL_INVALIDATE_CACHE(%struct.hllhdr* %124)
  br label %126

126:                                              ; preds = %100, %94
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @shared, i32 0, i32 1), align 4
  br label %134

132:                                              ; preds = %126
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @shared, i32 0, i32 0), align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = call i32 @addReply(%struct.TYPE_26__* %127, i32 %135)
  br label %137

137:                                              ; preds = %134, %85, %39
  ret void
}

declare dso_local %struct.TYPE_25__* @lookupKeyWrite(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_25__* @createHLLObject(...) #1

declare dso_local i32 @dbAdd(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_25__*) #1

declare dso_local i64 @isHLLObjectOrReply(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @dbUnshareStringValue(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_25__*) #1

declare dso_local i32 @hllAdd(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32 @addReplySds(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @sdsnew(i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @HLL_INVALIDATE_CACHE(%struct.hllhdr*) #1

declare dso_local i32 @addReply(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
