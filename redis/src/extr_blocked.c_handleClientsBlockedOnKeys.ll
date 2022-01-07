; ModuleID = '/home/carl/AnghaBench/redis/src/extr_blocked.c_handleClientsBlockedOnKeys.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_blocked.c_handleClientsBlockedOnKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64 }

@server = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@OBJ_LIST = common dso_local global i64 0, align 8
@OBJ_ZSET = common dso_local global i64 0, align 8
@OBJ_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handleClientsBlockedOnKeys() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  br label %5

5:                                                ; preds = %85, %0
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 8
  %7 = call i64 @listLength(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %88

9:                                                ; preds = %5
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 8
  store i32* %10, i32** %1, align 8
  %11 = call i32* (...) @listCreate()
  store i32* %11, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 8
  br label %12

12:                                               ; preds = %75, %9
  %13 = load i32*, i32** %1, align 8
  %14 = call i64 @listLength(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %85

16:                                               ; preds = %12
  %17 = load i32*, i32** %1, align 8
  %18 = call %struct.TYPE_20__* @listFirst(i32* %17)
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %2, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %3, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dictDelete(i32 %26, i32 %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_18__* @lookupKeyWrite(%struct.TYPE_17__* %33, i32 %36)
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %4, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = icmp ne %struct.TYPE_18__* %38, null
  br i1 %39, label %40, label %75

40:                                               ; preds = %16
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OBJ_LIST, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %49 = call i32 @serveClientsBlockedOnListKey(%struct.TYPE_18__* %47, %struct.TYPE_19__* %48)
  br label %72

50:                                               ; preds = %40
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OBJ_ZSET, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = call i32 @serveClientsBlockedOnSortedSetKey(%struct.TYPE_18__* %57, %struct.TYPE_19__* %58)
  br label %71

60:                                               ; preds = %50
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @OBJ_STREAM, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = call i32 @serveClientsBlockedOnStreamKey(%struct.TYPE_18__* %67, %struct.TYPE_19__* %68)
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70, %56
  br label %72

72:                                               ; preds = %71, %46
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = call i32 @serveClientsBlockedOnKeyByModule(%struct.TYPE_19__* %73)
  br label %75

75:                                               ; preds = %72, %16
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @decrRefCount(i32 %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = call i32 @zfree(%struct.TYPE_19__* %80)
  %82 = load i32*, i32** %1, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %84 = call i32 @listDelNode(i32* %82, %struct.TYPE_20__* %83)
  br label %12

85:                                               ; preds = %12
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @listRelease(i32* %86)
  br label %5

88:                                               ; preds = %5
  ret void
}

declare dso_local i64 @listLength(i32*) #1

declare dso_local i32* @listCreate(...) #1

declare dso_local %struct.TYPE_20__* @listFirst(i32*) #1

declare dso_local i32 @dictDelete(i32, i32) #1

declare dso_local %struct.TYPE_18__* @lookupKeyWrite(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @serveClientsBlockedOnListKey(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @serveClientsBlockedOnSortedSetKey(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @serveClientsBlockedOnStreamKey(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @serveClientsBlockedOnKeyByModule(%struct.TYPE_19__*) #1

declare dso_local i32 @decrRefCount(i32) #1

declare dso_local i32 @zfree(%struct.TYPE_19__*) #1

declare dso_local i32 @listDelNode(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @listRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
