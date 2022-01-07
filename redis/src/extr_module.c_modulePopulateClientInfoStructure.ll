; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_modulePopulateClientInfoStructure.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_modulePopulateClientInfoStructure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@REDISMODULE_ERR = common dso_local global i32 0, align 4
@CLIENT_MULTI = common dso_local global i32 0, align 4
@REDISMODULE_CLIENTINFO_FLAG_MULTI = common dso_local global i32 0, align 4
@CLIENT_PUBSUB = common dso_local global i32 0, align 4
@REDISMODULE_CLIENTINFO_FLAG_PUBSUB = common dso_local global i32 0, align 4
@CLIENT_UNIX_SOCKET = common dso_local global i32 0, align 4
@REDISMODULE_CLIENTINFO_FLAG_UNIXSOCKET = common dso_local global i32 0, align 4
@CLIENT_TRACKING = common dso_local global i32 0, align 4
@REDISMODULE_CLIENTINFO_FLAG_TRACKING = common dso_local global i32 0, align 4
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@REDISMODULE_CLIENTINFO_FLAG_BLOCKED = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modulePopulateClientInfoStructure(i8* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %13, i32* %4, align 4
  br label %110

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = call i32 @memset(%struct.TYPE_8__* %17, i32 0, i32 24)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CLIENT_MULTI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = load i32, i32* @REDISMODULE_CLIENTINFO_FLAG_MULTI, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %14
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CLIENT_PUBSUB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* @REDISMODULE_CLIENTINFO_FLAG_PUBSUB, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CLIENT_UNIX_SOCKET, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @REDISMODULE_CLIENTINFO_FLAG_UNIXSOCKET, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CLIENT_TRACKING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @REDISMODULE_CLIENTINFO_FLAG_TRACKING, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CLIENT_BLOCKED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @REDISMODULE_CLIENTINFO_FLAG_BLOCKED, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @connPeerToString(i32 %89, i32 %92, i32 4, i32* %9)
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %86, %12
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @connPeerToString(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
