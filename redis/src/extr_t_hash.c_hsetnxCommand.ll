; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_hsetnxCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_hsetnxCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_14__** }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@shared = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@HASH_SET_COPY = common dso_local global i32 0, align 4
@NOTIFY_HASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hset\00", align 1
@server = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsetnxCommand(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %7, i64 1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = call i32* @hashTypeLookupWriteOrCreate(%struct.TYPE_12__* %4, %struct.TYPE_14__* %9)
  store i32* %10, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %77

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %18 = call i32 @hashTypeTryConversion(i32* %14, %struct.TYPE_14__** %17, i32 2, i32 3)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %22, i64 2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @hashTypeExists(i32* %19, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 1), align 4
  %32 = call i32 @addReply(%struct.TYPE_12__* %30, i32 %31)
  br label %77

33:                                               ; preds = %13
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %37, i64 2
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %44, i64 3
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HASH_SET_COPY, align 4
  %50 = call i32 @hashTypeSet(i32* %34, i32 %41, i32 %48, i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 0), align 4
  %53 = call i32 @addReply(%struct.TYPE_12__* %51, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %59, i64 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = call i32 @signalModifiedKey(%struct.TYPE_13__* %56, %struct.TYPE_14__* %61)
  %63 = load i32, i32* @NOTIFY_HASH, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %66, i64 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @notifyKeyspaceEvent(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %68, i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 4
  br label %77

77:                                               ; preds = %12, %33, %29
  ret void
}

declare dso_local i32* @hashTypeLookupWriteOrCreate(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

declare dso_local i32 @hashTypeTryConversion(i32*, %struct.TYPE_14__**, i32, i32) #1

declare dso_local i64 @hashTypeExists(i32*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @hashTypeSet(i32*, i32, i32, i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
