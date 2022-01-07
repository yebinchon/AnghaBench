; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_hiredis.c_redisGetReply.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_hiredis.c_redisGetReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@REDIS_ERR = common dso_local global i64 0, align 8
@REDIS_BLOCK = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisGetReply(%struct.TYPE_6__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i64 @redisGetReplyFromReader(%struct.TYPE_6__* %8, i8** %7)
  %10 = load i64, i64* @REDIS_ERR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* @REDIS_ERR, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %69

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @REDIS_BLOCK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %35, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = call i64 @redisBufferWrite(%struct.TYPE_6__* %27, i32* %6)
  %29 = load i64, i64* @REDIS_ERR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* @REDIS_ERR, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %26, label %39

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %57, %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = call i64 @redisBufferRead(%struct.TYPE_6__* %41)
  %43 = load i64, i64* @REDIS_ERR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64, i64* @REDIS_ERR, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %69

48:                                               ; preds = %40
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = call i64 @redisGetReplyFromReader(%struct.TYPE_6__* %49, i8** %7)
  %51 = load i64, i64* @REDIS_ERR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64, i64* @REDIS_ERR, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %69

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %7, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %40, label %60

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %18, %15
  %62 = load i8**, i8*** %5, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8
  %66 = load i8**, i8*** %5, align 8
  store i8* %65, i8** %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* @REDIS_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %53, %45, %31, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @redisGetReplyFromReader(%struct.TYPE_6__*, i8**) #1

declare dso_local i64 @redisBufferWrite(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @redisBufferRead(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
