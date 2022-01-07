; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleGetCommandKeysViaAPI.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleGetCommandKeysViaAPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32*, i32 }
%struct.redisCommand = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_6__*, i8**, i32)*, i32 }

@REDISMODULE_CTX_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@REDISMODULE_CTX_KEYS_POS_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @moduleGetCommandKeysViaAPI(%struct.redisCommand* %0, i32** %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.redisCommand*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32*, align 8
  store %struct.redisCommand* %0, %struct.redisCommand** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %13 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  %17 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_6__* @REDISMODULE_CTX_INIT to i8*), i64 32, i1 false)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* @REDISMODULE_CTX_KEYS_POS_REQUEST, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_6__*, i8**, i32)*, i32 (%struct.TYPE_6__*, i8**, i32)** %28, align 8
  %30 = load i32**, i32*** %6, align 8
  %31 = bitcast i32** %30 to i8**
  %32 = load i32, i32* %7, align 4
  %33 = call i32 %29(%struct.TYPE_6__* %10, i8** %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %4
  %43 = call i32 @moduleFreeContext(%struct.TYPE_6__* %10)
  %44 = load i32*, i32** %11, align 8
  ret i32* %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @moduleFreeContext(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
