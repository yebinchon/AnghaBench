; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_streams.c_ts_pmt_New.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_streams.c_ts_pmt_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32*, i32*, i64, i8*, %struct.TYPE_9__, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@TS_TICK_UNKNOWN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @ts_pmt_New(i32* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.TYPE_13__* @malloc(i32 136)
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %4, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %7 = icmp ne %struct.TYPE_13__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %84

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 14
  %13 = call i32 @handle_Init(i32* %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = call i32 @free(%struct.TYPE_13__* %16)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %84

18:                                               ; preds = %9
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ARRAY_INIT(i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  store i32 8191, i32* %28, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 12
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 11
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ARRAY_INIT(i32 %39)
  %41 = load i8*, i8** @TS_TICK_UNKNOWN, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 10
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 8
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 7
  store i32* null, i32** %49, align 8
  %50 = load i8*, i8** @TS_TICK_UNKNOWN, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** @TS_TICK_UNKNOWN, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  store i8* %54, i8** %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load i8*, i8** @TS_TICK_UNKNOWN, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  store i8* %61, i8** %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i32 -1, i32* %82, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %2, align 8
  br label %84

84:                                               ; preds = %18, %15, %8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %85
}

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i32 @handle_Init(i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i32 @ARRAY_INIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
