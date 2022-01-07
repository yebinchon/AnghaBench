; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_input.c_rtp_stream_thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_input.c_rtp_stream_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32* }

@MSG_WAITALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rtp_stream_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %55, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MSG_WAITALL, align 4
  %21 = call i32 @recv(i32 %19, i32* %7, i32 2, i32 %20)
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %67

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = call %struct.TYPE_12__* @block_Alloc(i32 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %8, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = icmp eq %struct.TYPE_12__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %67

34:                                               ; preds = %24
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = call i32 @block_cleanup_push(%struct.TYPE_12__* %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MSG_WAITALL, align 4
  %45 = call i32 @recv(i32 %37, i32* %40, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = call i32 (...) @vlc_cleanup_pop()
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %34
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = call i32 @block_Release(%struct.TYPE_12__* %53)
  br label %67

55:                                               ; preds = %34
  %56 = call i32 (...) @vlc_savecancel()
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = call i32 @rtp_process(%struct.TYPE_10__* %57, %struct.TYPE_12__* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @rtp_dequeue_force(%struct.TYPE_10__* %60, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @vlc_restorecancel(i32 %65)
  br label %18

67:                                               ; preds = %52, %33, %23
  ret i8* null
}

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @block_Alloc(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_cleanup_push(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i32 @block_Release(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @rtp_process(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @rtp_dequeue_force(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
