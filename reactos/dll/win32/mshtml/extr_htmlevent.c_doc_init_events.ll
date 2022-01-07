; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_doc_init_events.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_doc_init_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EVENTID_LAST = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@event_info = common dso_local global %struct.TYPE_7__* null, align 8
@EVENT_HASDEFAULTHANDLERS = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @doc_init_events(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load i32, i32* @EVENTID_LAST, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = call i32 @heap_alloc_zero(i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = call i32 @init_nsevents(%struct.TYPE_6__* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %47, %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @EVENTID_LAST, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @event_info, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EVENT_HASDEFAULTHANDLERS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ensure_doc_nsevent_handler(%struct.TYPE_6__* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load i32, i32* @S_OK, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %43, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @heap_alloc_zero(i32) #1

declare dso_local i32 @init_nsevents(%struct.TYPE_6__*) #1

declare dso_local i32 @ensure_doc_nsevent_handler(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
