; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_migrateGetSocket.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_migrateGetSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@server = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@MIGRATE_SOCKET_CACHE_ITEMS = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"-IOERR error or timeout connecting to the client\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @migrateGetSocket(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = call i32 (...) @sdsempty()
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @sdslen(i8* %21)
  %23 = call i32 @sdscatlen(i32 %15, i8* %18, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @sdscatlen(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @sdslen(i8* %32)
  %34 = call i32 @sdscatlen(i32 %26, i8* %29, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.TYPE_18__* @dictFetchValue(i32 %35, i32 %36)
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %12, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %39 = icmp ne %struct.TYPE_18__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @sdsfree(i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 1), align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %5, align 8
  br label %121

47:                                               ; preds = %4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %49 = call i64 @dictSize(i32 %48)
  %50 = load i64, i64* @MIGRATE_SOCKET_CACHE_ITEMS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %54 = call i32* @dictGetRandomKey(i32 %53)
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call %struct.TYPE_18__* @dictGetVal(i32* %55)
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %12, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @connClose(i32* %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %62 = call i32 @zfree(%struct.TYPE_18__* %61)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @dictGetKey(i32* %64)
  %66 = call i32 @dictDelete(i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %52, %47
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 2), align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32* (...) @connCreateTLS()
  br label %74

72:                                               ; preds = %67
  %73 = call i32* (...) @connCreateSocket()
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32* [ %71, %70 ], [ %73, %72 ]
  store i32* %75, i32** %10, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %79, i64 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %86, i64 2
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @atoi(i32 %90)
  %92 = load i64, i64* %9, align 8
  %93 = call i64 @connBlockingConnect(i32* %76, i32 %83, i32 %91, i64 %92)
  %94 = load i64, i64* @C_OK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %74
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = call i32 @sdsnew(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %99 = call i32 @addReplySds(%struct.TYPE_19__* %97, i32 %98)
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @connClose(i32* %100)
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @sdsfree(i32 %102)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %121

104:                                              ; preds = %74
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @connEnableTcpNoDelay(i32* %105)
  %107 = call %struct.TYPE_18__* @zmalloc(i32 16)
  store %struct.TYPE_18__* %107, %struct.TYPE_18__** %12, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  store i32 -1, i32* %112, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 1), align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %119 = call i32 @dictAdd(i32 %116, i32 %117, %struct.TYPE_18__* %118)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %120, %struct.TYPE_18__** %5, align 8
  br label %121

121:                                              ; preds = %104, %96, %40
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  ret %struct.TYPE_18__* %122
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local %struct.TYPE_18__* @dictFetchValue(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32* @dictGetRandomKey(i32) #1

declare dso_local %struct.TYPE_18__* @dictGetVal(i32*) #1

declare dso_local i32 @connClose(i32*) #1

declare dso_local i32 @zfree(%struct.TYPE_18__*) #1

declare dso_local i32 @dictDelete(i32, i32) #1

declare dso_local i32 @dictGetKey(i32*) #1

declare dso_local i32* @connCreateTLS(...) #1

declare dso_local i32* @connCreateSocket(...) #1

declare dso_local i64 @connBlockingConnect(i32*, i32, i32, i64) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @addReplySds(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @connEnableTcpNoDelay(i32*) #1

declare dso_local %struct.TYPE_18__* @zmalloc(i32) #1

declare dso_local i32 @dictAdd(i32, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
