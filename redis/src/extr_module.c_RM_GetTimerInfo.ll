; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_GetTimerInfo.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_GetTimerInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_7__ = type { i64 }

@Timers = common dso_local global i32 0, align 4
@raxNotFound = common dso_local global %struct.TYPE_6__* null, align 8
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_GetTimerInfo(%struct.TYPE_7__* %0, i32 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* @Timers, align 4
  %13 = bitcast i32* %7 to i8*
  %14 = call %struct.TYPE_6__* @raxFind(i32 %12, i8* %13, i32 4)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @raxNotFound, align 8
  %17 = icmp eq %struct.TYPE_6__* %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18, %4
  %27 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %18
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ntohu64(i32 %32)
  %34 = call i32 (...) @ustime()
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %11, align 4
  %41 = sdiv i32 %40, 1000
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %28
  %44 = load i8**, i8*** %9, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i8**, i8*** %9, align 8
  store i8* %49, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %26
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_6__* @raxFind(i32, i8*, i32) #1

declare dso_local i32 @ntohu64(i32) #1

declare dso_local i32 @ustime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
