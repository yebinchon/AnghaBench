; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_conn.h_vlc_http_stream_open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_conn.h_vlc_http_stream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_stream = type { i32 }
%struct.vlc_http_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.vlc_http_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_http_stream* (%struct.vlc_http_conn*, %struct.vlc_http_msg*)* @vlc_http_stream_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_http_stream* @vlc_http_stream_open(%struct.vlc_http_conn* %0, %struct.vlc_http_msg* %1) #0 {
  %3 = alloca %struct.vlc_http_conn*, align 8
  %4 = alloca %struct.vlc_http_msg*, align 8
  store %struct.vlc_http_conn* %0, %struct.vlc_http_conn** %3, align 8
  store %struct.vlc_http_msg* %1, %struct.vlc_http_msg** %4, align 8
  %5 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %3, align 8
  %6 = getelementptr inbounds %struct.vlc_http_conn, %struct.vlc_http_conn* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to %struct.vlc_http_stream* (%struct.vlc_http_conn*, %struct.vlc_http_msg*)**
  %10 = load %struct.vlc_http_stream* (%struct.vlc_http_conn*, %struct.vlc_http_msg*)*, %struct.vlc_http_stream* (%struct.vlc_http_conn*, %struct.vlc_http_msg*)** %9, align 8
  %11 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %3, align 8
  %12 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %13 = call %struct.vlc_http_stream* %10(%struct.vlc_http_conn* %11, %struct.vlc_http_msg* %12)
  ret %struct.vlc_http_stream* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
