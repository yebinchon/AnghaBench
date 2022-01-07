; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_hooks.c_clearEvents.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_hooks.c_clearEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i64 }

@event_log = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearEvents(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @event_log, align 4
  %7 = call i32* @RedisModule_DictIteratorStart(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %7, i32** %5, align 8
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast %struct.TYPE_3__** %4 to i8**
  %12 = call i32* @RedisModule_DictNext(i32* %9, i32* %10, i8** %11)
  store i32* %12, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i32*, i32** %2, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @RedisModule_FreeString(i32* %24, i32* %27)
  br label %29

29:                                               ; preds = %23, %14
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @event_log, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @RedisModule_DictDel(i32 %32, i32* %33, i32* null)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = call i32 @RedisModule_Free(%struct.TYPE_3__* %35)
  br label %8

37:                                               ; preds = %8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @RedisModule_DictIteratorStop(i32* %38)
  ret void
}

declare dso_local i32* @RedisModule_DictIteratorStart(i32, i8*, i32*) #1

declare dso_local i32* @RedisModule_DictNext(i32*, i32*, i8**) #1

declare dso_local i32 @RedisModule_FreeString(i32*, i32*) #1

declare dso_local i32 @RedisModule_DictDel(i32, i32*, i32*) #1

declare dso_local i32 @RedisModule_Free(%struct.TYPE_3__*) #1

declare dso_local i32 @RedisModule_DictIteratorStop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
