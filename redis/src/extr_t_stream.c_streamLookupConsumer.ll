; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamLookupConsumer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamLookupConsumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@raxNotFound = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @streamLookupConsumer(%struct.TYPE_10__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @sdslen(i64 %14)
  %16 = call %struct.TYPE_9__* @raxFind(i32 %11, i8* %13, i32 %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @raxNotFound, align 8
  %19 = icmp eq %struct.TYPE_9__* %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %47

24:                                               ; preds = %20
  %25 = call %struct.TYPE_9__* @zmalloc(i32 12)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @sdsdup(i64 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = call i32 (...) @raxNew()
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @sdslen(i64 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = call i32 @raxInsert(i32 %35, i8* %37, i32 %39, %struct.TYPE_9__* %40, i32* null)
  br label %42

42:                                               ; preds = %24, %3
  %43 = call i32 (...) @mstime()
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %4, align 8
  br label %47

47:                                               ; preds = %42, %23
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %48
}

declare dso_local %struct.TYPE_9__* @raxFind(i32, i8*, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local %struct.TYPE_9__* @zmalloc(i32) #1

declare dso_local i32 @sdsdup(i64) #1

declare dso_local i32 @raxNew(...) #1

declare dso_local i32 @raxInsert(i32, i8*, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @mstime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
