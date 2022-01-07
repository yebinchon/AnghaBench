; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_bpopgt_reply_callback.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_bpopgt_reply_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpopgt_reply_callback(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32**, i32*** %6, align 8
  %12 = ptrtoint i32** %11 to i32
  %13 = call i32 @REDISMODULE_NOT_USED(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @REDISMODULE_NOT_USED(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @RedisModule_GetBlockedClientReadyKey(i32* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @RedisModule_GetBlockedClientPrivateData(i32* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @REDISMODULE_READ, align 4
  %23 = call i32 @get_fsl(i32* %20, i32* %21, i32 %22, i32 0, %struct.TYPE_3__** %10, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %26, i32* %4, align 4
  br label %59

27:                                               ; preds = %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %33, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %30, %27
  %44 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %44, i32* %4, align 4
  br label %59

45:                                               ; preds = %30
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %49, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @RedisModule_ReplyWithLongLong(i32* %46, i64 %56)
  %58 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %45, %43, %25
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i32* @RedisModule_GetBlockedClientReadyKey(i32*) #1

declare dso_local i64 @RedisModule_GetBlockedClientPrivateData(i32*) #1

declare dso_local i32 @get_fsl(i32*, i32*, i32, i32, %struct.TYPE_3__**, i32) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
