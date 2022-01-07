; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_mark_read_upd.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_mark_read_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.tgl_message = type { i32 }

@TLS = common dso_local global %struct.tgl_state* null, align 8
@binlog_read = common dso_local global i32 0, align 4
@log_level = common dso_local global i32 0, align 4
@unread_message_count = common dso_local global i64 0, align 8
@MAX_UNREAD_MESSAGE_COUNT = common dso_local global i64 0, align 8
@unread_message_list = common dso_local global i64 0, align 8
@unread_message_event = common dso_local global i64 0, align 8
@unread_message_alarm = common dso_local global i32 0, align 4
@mark_read_upd.ptimeout = internal global %struct.timeval { i32 1, i32 0 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_read_upd(%struct.tgl_state* %0, i32 %1, %struct.tgl_message** %2) #0 {
  %4 = alloca %struct.tgl_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tgl_message**, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tgl_message** %2, %struct.tgl_message*** %6, align 8
  %7 = load %struct.tgl_state*, %struct.tgl_state** %4, align 8
  %8 = load %struct.tgl_state*, %struct.tgl_state** @TLS, align 8
  %9 = icmp eq %struct.tgl_state* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* @binlog_read, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %66

15:                                               ; preds = %3
  %16 = load i32, i32* @log_level, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %66

19:                                               ; preds = %15
  %20 = load i64, i64* @unread_message_count, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i64, i64* @MAX_UNREAD_MESSAGE_COUNT, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %19
  %27 = load i64, i64* @unread_message_list, align 8
  %28 = load i64, i64* @unread_message_count, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.tgl_message**, %struct.tgl_message*** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcpy(i64 %29, %struct.tgl_message** %30, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @unread_message_count, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* @unread_message_count, align 8
  %40 = load i64, i64* @unread_message_event, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %26
  %43 = load %struct.tgl_state*, %struct.tgl_state** @TLS, align 8
  %44 = getelementptr inbounds %struct.tgl_state, %struct.tgl_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @unread_message_alarm, align 4
  %47 = call i64 @evtimer_new(i32 %45, i32 %46, i32 0)
  store i64 %47, i64* @unread_message_event, align 8
  %48 = load i64, i64* @unread_message_event, align 8
  %49 = call i32 @event_add(i64 %48, %struct.timeval* @mark_read_upd.ptimeout)
  br label %50

50:                                               ; preds = %42, %26
  br label %66

51:                                               ; preds = %19
  %52 = load i64, i64* @unread_message_count, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* @unread_message_list, align 8
  %55 = call i32 @print_read_list(i32 %53, i64 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.tgl_message**, %struct.tgl_message*** %6, align 8
  %58 = ptrtoint %struct.tgl_message** %57 to i64
  %59 = call i32 @print_read_list(i32 %56, i64 %58)
  store i64 0, i64* @unread_message_count, align 8
  %60 = load i64, i64* @unread_message_event, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i64, i64* @unread_message_event, align 8
  %64 = call i32 @event_free(i64 %63)
  store i64 0, i64* @unread_message_event, align 8
  br label %65

65:                                               ; preds = %62, %51
  br label %66

66:                                               ; preds = %14, %18, %65, %50
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64, %struct.tgl_message**, i32) #1

declare dso_local i64 @evtimer_new(i32, i32, i32) #1

declare dso_local i32 @event_add(i64, %struct.timeval*) #1

declare dso_local i32 @print_read_list(i32, i64) #1

declare dso_local i32 @event_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
