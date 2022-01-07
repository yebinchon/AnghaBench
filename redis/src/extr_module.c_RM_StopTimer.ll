; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_StopTimer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_StopTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_8__ = type { i64 }

@Timers = common dso_local global i32 0, align 4
@raxNotFound = common dso_local global %struct.TYPE_7__* null, align 8
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_StopTimer(%struct.TYPE_8__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* @Timers, align 4
  %10 = bitcast i32* %6 to i8*
  %11 = call %struct.TYPE_7__* @raxFind(i32 %9, i8* %10, i32 4)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @raxNotFound, align 8
  %14 = icmp eq %struct.TYPE_7__* %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15, %3
  %24 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %15
  %26 = load i8**, i8*** %7, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %7, align 8
  store i8* %31, i8** %32, align 8
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @Timers, align 4
  %35 = bitcast i32* %6 to i8*
  %36 = call i32 @raxRemove(i32 %34, i8* %35, i32 4, i32* null)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = call i32 @zfree(%struct.TYPE_7__* %37)
  %39 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %23
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_7__* @raxFind(i32, i8*, i32) #1

declare dso_local i32 @raxRemove(i32, i8*, i32, i32*) #1

declare dso_local i32 @zfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
