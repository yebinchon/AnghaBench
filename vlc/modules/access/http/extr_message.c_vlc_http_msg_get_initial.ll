; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_get_initial.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_get_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }
%struct.vlc_http_stream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_msg* @vlc_http_msg_get_initial(%struct.vlc_http_stream* %0) #0 {
  %2 = alloca %struct.vlc_http_stream*, align 8
  %3 = alloca %struct.vlc_http_msg*, align 8
  store %struct.vlc_http_stream* %0, %struct.vlc_http_stream** %2, align 8
  %4 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %2, align 8
  %5 = call %struct.vlc_http_msg* @vlc_http_stream_read_headers(%struct.vlc_http_stream* %4)
  store %struct.vlc_http_msg* %5, %struct.vlc_http_msg** %3, align 8
  %6 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  %7 = icmp eq %struct.vlc_http_msg* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %2, align 8
  %10 = call i32 @vlc_http_stream_close(%struct.vlc_http_stream* %9, i32 0)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  ret %struct.vlc_http_msg* %12
}

declare dso_local %struct.vlc_http_msg* @vlc_http_stream_read_headers(%struct.vlc_http_stream*) #1

declare dso_local i32 @vlc_http_stream_close(%struct.vlc_http_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
