; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_wrk.c_thread_main.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_wrk.c_thread_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32, i32*, i32 }
%struct.TYPE_10__ = type { i8*, i64, i32, i32*, %struct.TYPE_9__* }

@cfg = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@RECORD_INTERVAL_MS = common dso_local global i32 0, align 4
@record_rate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %3, align 8
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cfg, i32 0, i32 2), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @script_request(i32 %16, i8** %4, i64* %5)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 40
  %24 = trunc i64 %23 to i32
  %25 = call %struct.TYPE_10__* @zcalloc(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %63, %18
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %40, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cfg, i32 0, i32 1), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cfg, i32 0, i32 1), align 8
  %45 = call i32* @SSL_new(i64 %44)
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32* [ %45, %43 ], [ null, %46 ]
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cfg, i32 0, i32 0), align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = call i32 @connect_socket(%struct.TYPE_9__* %60, %struct.TYPE_10__* %61)
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 1
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %6, align 8
  br label %31

68:                                               ; preds = %31
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* @RECORD_INTERVAL_MS, align 4
  %74 = load i32, i32* @record_rate, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = call i32 @aeCreateTimeEvent(i32* %72, i32 %73, i32 %74, %struct.TYPE_9__* %75, i32* null)
  %77 = call i32 (...) @time_us()
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @aeMain(i32* %80)
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @aeDeleteEventLoop(i32* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = call i32 @zfree(%struct.TYPE_10__* %86)
  ret i8* null
}

declare dso_local i32 @script_request(i32, i8**, i64*) #1

declare dso_local %struct.TYPE_10__* @zcalloc(i32) #1

declare dso_local i32* @SSL_new(i64) #1

declare dso_local i32 @connect_socket(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @aeCreateTimeEvent(i32*, i32, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @time_us(...) #1

declare dso_local i32 @aeMain(i32*) #1

declare dso_local i32 @aeDeleteEventLoop(i32*) #1

declare dso_local i32 @zfree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
