; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_bpop2_reply_callback.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_bpop2_reply_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpop2_reply_callback(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32**, i32*** %6, align 8
  %11 = ptrtoint i32** %10 to i32
  %12 = call i32 @REDISMODULE_NOT_USED(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @REDISMODULE_NOT_USED(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @RedisModule_GetBlockedClientReadyKey(i32* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @REDISMODULE_READ, align 4
  %20 = call i32 @get_fsl(i32* %17, i32* %18, i32 %19, i32 0, %struct.TYPE_3__** %9, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %24
  %33 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %33, i32* %4, align 4
  br label %62

34:                                               ; preds = %27
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @RedisModule_ReplyWithArray(i32* %35, i32 2)
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @RedisModule_ReplyWithLongLong(i32* %37, i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @RedisModule_ReplyWithLongLong(i32* %49, i32 %59)
  %61 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %34, %32, %22
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i32* @RedisModule_GetBlockedClientReadyKey(i32*) #1

declare dso_local i32 @get_fsl(i32*, i32*, i32, i32, %struct.TYPE_3__**, i32) #1

declare dso_local i32 @RedisModule_ReplyWithArray(i32*, i32) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
