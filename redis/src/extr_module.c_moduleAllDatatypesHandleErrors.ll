; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleAllDatatypesHandleErrors.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleAllDatatypesHandleErrors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RedisModule = type { i32, i32 }

@modules = common dso_local global i32 0, align 4
@REDISMODULE_OPTIONS_HANDLE_IO_ERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moduleAllDatatypesHandleErrors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.RedisModule*, align 8
  %5 = load i32, i32* @modules, align 4
  %6 = call i32* @dictGetIterator(i32 %5)
  store i32* %6, i32** %2, align 8
  br label %7

7:                                                ; preds = %29, %0
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @dictNext(i32* %8)
  store i32* %9, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.RedisModule* @dictGetVal(i32* %12)
  store %struct.RedisModule* %13, %struct.RedisModule** %4, align 8
  %14 = load %struct.RedisModule*, %struct.RedisModule** %4, align 8
  %15 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @listLength(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load %struct.RedisModule*, %struct.RedisModule** %4, align 8
  %21 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @REDISMODULE_OPTIONS_HANDLE_IO_ERRORS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @dictReleaseIterator(i32* %27)
  store i32 0, i32* %1, align 4
  br label %33

29:                                               ; preds = %19, %11
  br label %7

30:                                               ; preds = %7
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @dictReleaseIterator(i32* %31)
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.RedisModule* @dictGetVal(i32*) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
