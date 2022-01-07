; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_message_gw.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_message_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }
%struct.in_ev = type { i32 }
%struct.tgl_message = type { i32 }

@TLS = common dso_local global %struct.tgl_state* null, align 8
@binlog_read = common dso_local global i32 0, align 4
@TGL_PEER_ENCR_CHAT = common dso_local global i64 0, align 8
@alert_sound = common dso_local global i64 0, align 8
@disable_output = common dso_local global i64 0, align 8
@notify_ev = common dso_local global %struct.in_ev* null, align 8
@enable_json = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_message_gw(%struct.tgl_state* %0, %struct.tgl_message* %1) #0 {
  %3 = alloca %struct.tgl_state*, align 8
  %4 = alloca %struct.tgl_message*, align 8
  %5 = alloca %struct.in_ev*, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %3, align 8
  store %struct.tgl_message* %1, %struct.tgl_message** %4, align 8
  %6 = load %struct.tgl_state*, %struct.tgl_state** %3, align 8
  %7 = load %struct.tgl_state*, %struct.tgl_state** @TLS, align 8
  %8 = icmp eq %struct.tgl_state* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* @binlog_read, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.tgl_message*, %struct.tgl_message** %4, align 8
  %16 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @tgl_get_peer_type(i32 %17)
  %19 = load i64, i64* @TGL_PEER_ENCR_CHAT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @write_secret_chat_file()
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i64, i64* @alert_sound, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @play_sound()
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i64, i64* @disable_output, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  %33 = icmp ne %struct.in_ev* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %49

35:                                               ; preds = %31, %28
  %36 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  store %struct.in_ev* %36, %struct.in_ev** %5, align 8
  %37 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %38 = call i32 @mprint_start(%struct.in_ev* %37)
  %39 = load i32, i32* @enable_json, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %43 = load %struct.tgl_message*, %struct.tgl_message** %4, align 8
  %44 = call i32 @print_message(%struct.in_ev* %42, %struct.tgl_message* %43)
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %41
  %47 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %48 = call i32 @mprint_end(%struct.in_ev* %47)
  br label %49

49:                                               ; preds = %46, %34, %13
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tgl_get_peer_type(i32) #1

declare dso_local i32 @write_secret_chat_file(...) #1

declare dso_local i32 @play_sound(...) #1

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @print_message(%struct.in_ev*, %struct.tgl_message*) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
