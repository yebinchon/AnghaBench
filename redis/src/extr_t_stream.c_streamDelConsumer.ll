; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamDelConsumer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamDelConsumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @streamDelConsumer(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.TYPE_12__* @streamLookupConsumer(%struct.TYPE_13__* %10, i64 %11, i32 0)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @raxSize(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @raxStart(%struct.TYPE_14__* %8, i32 %23)
  %25 = call i32 @raxSeek(%struct.TYPE_14__* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  br label %26

26:                                               ; preds = %29, %16
  %27 = call i64 @raxNext(%struct.TYPE_14__* %8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %9, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @raxRemove(i32 %34, i8* %36, i32 %38, i32* null)
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @streamFreeNACK(i32* %40)
  br label %26

42:                                               ; preds = %26
  %43 = call i32 @raxStop(%struct.TYPE_14__* %8)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %5, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @sdslen(i64 %49)
  %51 = call i32 @raxRemove(i32 %46, i8* %48, i32 %50, i32* null)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = call i32 @streamFreeConsumer(%struct.TYPE_12__* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %42, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_12__* @streamLookupConsumer(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @raxSize(i32) #1

declare dso_local i32 @raxStart(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @raxSeek(%struct.TYPE_14__*, i8*, i32*, i32) #1

declare dso_local i64 @raxNext(%struct.TYPE_14__*) #1

declare dso_local i32 @raxRemove(i32, i8*, i32, i32*) #1

declare dso_local i32 @streamFreeNACK(i32*) #1

declare dso_local i32 @raxStop(%struct.TYPE_14__*) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32 @streamFreeConsumer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
