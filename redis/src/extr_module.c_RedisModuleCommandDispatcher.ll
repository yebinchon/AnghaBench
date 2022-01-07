; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RedisModuleCommandDispatcher.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RedisModuleCommandDispatcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__**, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_12__*, i8**, i32)*, i32 }

@REDISMODULE_CTX_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@REDISMODULE_CTX_MODULE_COMMAND_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RedisModuleCommandDispatcher(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %3, align 8
  %13 = bitcast %struct.TYPE_12__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_12__* @REDISMODULE_CTX_INIT to i8*), i64 16, i1 false)
  %14 = load i32, i32* @REDISMODULE_CTX_MODULE_COMMAND_CALL, align 4
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_12__*, i8**, i32)*, i32 (%struct.TYPE_12__*, i8**, i32)** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %28, align 8
  %30 = bitcast %struct.TYPE_14__** %29 to i8**
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %26(%struct.TYPE_12__* %4, i8** %30, i32 %33)
  %35 = call i32 @moduleFreeContext(%struct.TYPE_12__* %4)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %63, %1
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %45, i64 %47
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %56, i64 %58
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = call i32 @trimStringObjectIfNeeded(%struct.TYPE_14__* %60)
  br label %62

62:                                               ; preds = %53, %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %36

66:                                               ; preds = %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @moduleFreeContext(%struct.TYPE_12__*) #2

declare dso_local i32 @trimStringObjectIfNeeded(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
