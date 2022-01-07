; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_CreateDict.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_CreateDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RedisModuleDict = type { i32 }

@REDISMODULE_AM_DICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.RedisModuleDict* @RM_CreateDict(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.RedisModuleDict*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call %struct.RedisModuleDict* @zmalloc(i32 4)
  store %struct.RedisModuleDict* %4, %struct.RedisModuleDict** %3, align 8
  %5 = call i32 (...) @raxNew()
  %6 = load %struct.RedisModuleDict*, %struct.RedisModuleDict** %3, align 8
  %7 = getelementptr inbounds %struct.RedisModuleDict, %struct.RedisModuleDict* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @REDISMODULE_AM_DICT, align 4
  %13 = load %struct.RedisModuleDict*, %struct.RedisModuleDict** %3, align 8
  %14 = call i32 @autoMemoryAdd(i32* %11, i32 %12, %struct.RedisModuleDict* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.RedisModuleDict*, %struct.RedisModuleDict** %3, align 8
  ret %struct.RedisModuleDict* %16
}

declare dso_local %struct.RedisModuleDict* @zmalloc(i32) #1

declare dso_local i32 @raxNew(...) #1

declare dso_local i32 @autoMemoryAdd(i32*, i32, %struct.RedisModuleDict*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
