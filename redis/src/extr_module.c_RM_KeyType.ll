; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_KeyType.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_KeyType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@REDISMODULE_KEYTYPE_EMPTY = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_STRING = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_LIST = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_SET = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_ZSET = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_HASH = common dso_local global i32 0, align 4
@REDISMODULE_KEYTYPE_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_KeyType(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = icmp eq %struct.TYPE_5__* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6, %1
  %12 = load i32, i32* @REDISMODULE_KEYTYPE_EMPTY, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %6
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %31 [
    i32 129, label %19
    i32 132, label %21
    i32 130, label %23
    i32 128, label %25
    i32 133, label %27
    i32 131, label %29
  ]

19:                                               ; preds = %13
  %20 = load i32, i32* @REDISMODULE_KEYTYPE_STRING, align 4
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %13
  %22 = load i32, i32* @REDISMODULE_KEYTYPE_LIST, align 4
  store i32 %22, i32* %2, align 4
  br label %32

23:                                               ; preds = %13
  %24 = load i32, i32* @REDISMODULE_KEYTYPE_SET, align 4
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %13
  %26 = load i32, i32* @REDISMODULE_KEYTYPE_ZSET, align 4
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %13
  %28 = load i32, i32* @REDISMODULE_KEYTYPE_HASH, align 4
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %13
  %30 = load i32, i32* @REDISMODULE_KEYTYPE_MODULE, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %29, %27, %25, %23, %21, %19, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
