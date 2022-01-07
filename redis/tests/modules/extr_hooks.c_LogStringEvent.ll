; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_hooks.c_LogStringEvent.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_hooks.c_LogStringEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@event_log = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LogStringEvent(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @event_log, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = call %struct.TYPE_6__* @RedisModule_DictGetC(i32 %8, i8* %9, i32 %11, i32* null)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = call %struct.TYPE_6__* @RedisModule_Alloc(i32 16)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = call i32 @memset(%struct.TYPE_6__* %17, i32 0, i32 16)
  %19 = load i32, i32* @event_log, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = call i32 @RedisModule_DictSetC(i32 %19, i8* %20, i32 %22, %struct.TYPE_6__* %23)
  br label %25

25:                                               ; preds = %15, %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @RedisModule_FreeString(i32* %31, i64 %34)
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32*, i32** %4, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i64 @RedisModule_CreateString(i32* %37, i8* %38, i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  ret void
}

declare dso_local %struct.TYPE_6__* @RedisModule_DictGetC(i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_6__* @RedisModule_Alloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @RedisModule_DictSetC(i32, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @RedisModule_FreeString(i32*, i64) #1

declare dso_local i64 @RedisModule_CreateString(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
