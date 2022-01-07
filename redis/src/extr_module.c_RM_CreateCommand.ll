; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_CreateCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_CreateCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.redisCommand = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32*, i32, i32 }

@REDISMODULE_ERR = common dso_local global i32 0, align 4
@CMD_MODULE_NO_CLUSTER = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RedisModuleCommandDispatcher = common dso_local global i32 0, align 4
@CMD_MODULE = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_CreateCommand(%struct.TYPE_6__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.redisCommand*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @commandFlagsFromString(i8* %23)
  br label %26

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %31, i32* %8, align 4
  br label %139

32:                                               ; preds = %26
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @CMD_MODULE_NO_CLUSTER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %41, i32* %8, align 4
  br label %139

42:                                               ; preds = %37, %32
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @sdsnew(i8* %43)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = call i32* @lookupCommand(i32 %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @sdsfree(i32 %49)
  %51 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %51, i32* %8, align 4
  br label %139

52:                                               ; preds = %42
  %53 = call i8* @zmalloc(i32 16)
  %54 = bitcast i8* %53 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %18, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = call i8* @zmalloc(i32 4)
  %64 = bitcast i8* %63 to %struct.TYPE_9__*
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %66, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 10
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @RedisModuleCommandDispatcher, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 9
  store i32 %72, i32* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* @CMD_MODULE, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %89 = ptrtoint %struct.TYPE_7__* %88 to i64
  %90 = inttoptr i64 %89 to i32*
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 8
  store i32* %90, i32** %94, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  store i32 %105, i32* %109, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 7
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 6
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 4
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @sdsdup(i32 %119)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = call i32 @dictAdd(i32 %118, i32 %120, %struct.TYPE_9__* %123)
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %126 = load i32, i32* %19, align 4
  %127 = call i32 @sdsdup(i32 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = call i32 @dictAdd(i32 %125, i32 %127, %struct.TYPE_9__* %130)
  %132 = load i32, i32* %19, align 4
  %133 = call i32 @ACLGetCommandID(i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 5
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %52, %48, %40, %30
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i32 @commandFlagsFromString(i8*) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32* @lookupCommand(i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @dictAdd(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @sdsdup(i32) #1

declare dso_local i32 @ACLGetCommandID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
