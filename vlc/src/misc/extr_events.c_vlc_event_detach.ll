; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_events.c_vlc_event_detach.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_events.c_vlc_event_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.vlc_event_listener_t** }
%struct.vlc_event_listener_t = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_event_detach(%struct.TYPE_5__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vlc_event_listener_t*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %15
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @vlc_mutex_lock(i32* %18)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %63, %4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %20
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.vlc_event_listener_t**, %struct.vlc_event_listener_t*** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vlc_event_listener_t*, %struct.vlc_event_listener_t** %31, i64 %33
  %35 = load %struct.vlc_event_listener_t*, %struct.vlc_event_listener_t** %34, align 8
  store %struct.vlc_event_listener_t* %35, %struct.vlc_event_listener_t** %11, align 8
  %36 = load %struct.vlc_event_listener_t*, %struct.vlc_event_listener_t** %11, align 8
  %37 = getelementptr inbounds %struct.vlc_event_listener_t, %struct.vlc_event_listener_t* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %27
  %42 = load %struct.vlc_event_listener_t*, %struct.vlc_event_listener_t** %11, align 8
  %43 = getelementptr inbounds %struct.vlc_event_listener_t, %struct.vlc_event_listener_t* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %10, align 4
  %51 = bitcast %struct.TYPE_7__* %49 to { i32, %struct.vlc_event_listener_t** }*
  %52 = getelementptr inbounds { i32, %struct.vlc_event_listener_t** }, { i32, %struct.vlc_event_listener_t** }* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds { i32, %struct.vlc_event_listener_t** }, { i32, %struct.vlc_event_listener_t** }* %51, i32 0, i32 1
  %55 = load %struct.vlc_event_listener_t**, %struct.vlc_event_listener_t*** %54, align 8
  %56 = call i32 @ARRAY_REMOVE(i32 %53, %struct.vlc_event_listener_t** %55, i32 %50)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @vlc_mutex_unlock(i32* %58)
  %60 = load %struct.vlc_event_listener_t*, %struct.vlc_event_listener_t** %11, align 8
  %61 = call i32 @free(%struct.vlc_event_listener_t* %60)
  br label %68

62:                                               ; preds = %41, %27
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %20

66:                                               ; preds = %20
  %67 = call i32 (...) @vlc_assert_unreachable()
  br label %68

68:                                               ; preds = %66, %47
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_REMOVE(i32, %struct.vlc_event_listener_t**, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.vlc_event_listener_t*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
