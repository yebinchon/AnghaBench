; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleHandlePropagationAfterCommandCallback.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleHandlePropagationAfterCommandCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@REDISMODULE_CTX_MULTI_EMITTED = common dso_local global i32 0, align 4
@CLIENT_LUA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@server = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@PROPAGATE_REPL = common dso_local global i32 0, align 4
@REDISMODULE_CTX_MODULE_COMMAND_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moduleHandlePropagationAfterCommandCallback(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [1 x i32*], align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @REDISMODULE_CTX_MULTI_EMITTED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %91

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CLIENT_LUA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %91

26:                                               ; preds = %18
  %27 = call i32* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %28 = getelementptr inbounds [1 x i32*], [1 x i32*]* %4, i64 0, i64 0
  store i32* %27, i32** %28, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 1), align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [1 x i32*], [1 x i32*]* %4, i64 0, i64 0
  %36 = load i32, i32* @PROPAGATE_AOF, align 4
  %37 = load i32, i32* @PROPAGATE_REPL, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @alsoPropagate(i32 %29, i32 %34, i32** %35, i32 1, i32 %38)
  %40 = getelementptr inbounds [1 x i32*], [1 x i32*]* %4, i64 0, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @decrRefCount(i32* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @REDISMODULE_CTX_MODULE_COMMAND_CALL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %91, label %49

49:                                               ; preds = %26
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0, i32 0), align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %83, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0, i32 0), align 8
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0, i32 1), align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %60
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %6, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %57
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @propagate(i32 %70, i32 %73, i32 %76, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %67, %57
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %53

86:                                               ; preds = %53
  %87 = call i32 @redisOpArrayFree(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0))
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = bitcast %struct.TYPE_13__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_12__* @server to i8*), i8* align 8 %90, i64 16, i1 false)
  br label %91

91:                                               ; preds = %17, %25, %86, %49, %26
  ret void
}

declare dso_local i32* @createStringObject(i8*, i32) #1

declare dso_local i32 @alsoPropagate(i32, i32, i32**, i32, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @propagate(i32, i32, i32, i32, i32) #1

declare dso_local i32 @redisOpArrayFree(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
