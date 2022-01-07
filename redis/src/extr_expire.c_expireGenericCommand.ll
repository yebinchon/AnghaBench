; ModuleID = '/home/carl/AnghaBench/redis/src/extr_expire.c_expireGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_expire.c_expireGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_18__ = type { i32, i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32** }
%struct.TYPE_16__ = type { i32 }

@C_OK = common dso_local global i64 0, align 8
@UNIT_SECONDS = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@server = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"expire\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expireGenericCommand(%struct.TYPE_15__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_15__* %22, i32* %23, i64* %9, i32* null)
  %25 = load i64, i64* @C_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %136

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UNIT_SECONDS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  %34 = mul nsw i64 %33, 1000
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %9, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32* @lookupKeyWrite(%struct.TYPE_16__* %41, i32* %42)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 3), align 8
  %48 = call i32 @addReply(%struct.TYPE_15__* %46, i32 %47)
  br label %136

49:                                               ; preds = %35
  %50 = load i64, i64* %9, align 8
  %51 = call i64 (...) @mstime()
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %49
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 3), align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %110, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 2), align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %110, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 1), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @dbAsyncDelete(%struct.TYPE_16__* %65, i32* %66)
  br label %74

68:                                               ; preds = %59
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @dbSyncDelete(%struct.TYPE_16__* %71, i32* %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i32 [ %67, %62 ], [ %73, %68 ]
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @serverAssertWithInfo(%struct.TYPE_15__* %76, i32* %77, i32 %78)
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 1), align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 2), align 8
  br label %88

86:                                               ; preds = %74
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 1), align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32* [ %85, %84 ], [ %87, %86 ]
  store i32* %89, i32** %10, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @rewriteClientCommandVector(%struct.TYPE_15__* %90, i32 2, i32* %91, i32* %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @signalModifiedKey(%struct.TYPE_16__* %96, i32* %97)
  %99 = load i32, i32* @NOTIFY_GENERIC, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @notifyKeyspaceEvent(i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %100, i32 %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 0), align 8
  %109 = call i32 @addReply(%struct.TYPE_15__* %107, i32 %108)
  br label %136

110:                                              ; preds = %56, %53, %49
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @setExpire(%struct.TYPE_15__* %111, %struct.TYPE_16__* %114, i32* %115, i64 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 0), align 8
  %120 = call i32 @addReply(%struct.TYPE_15__* %118, i32 %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @signalModifiedKey(%struct.TYPE_16__* %123, i32* %124)
  %126 = load i32, i32* @NOTIFY_GENERIC, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @notifyKeyspaceEvent(i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %127, i32 %132)
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 8
  br label %136

136:                                              ; preds = %110, %88, %45, %27
  ret void
}

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_15__*, i32*, i64*, i32*) #1

declare dso_local i32* @lookupKeyWrite(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @dbAsyncDelete(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @dbSyncDelete(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @rewriteClientCommandVector(%struct.TYPE_15__*, i32, i32*, i32*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32*, i32) #1

declare dso_local i32 @setExpire(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
