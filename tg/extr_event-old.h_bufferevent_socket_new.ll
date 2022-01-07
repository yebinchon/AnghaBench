; ModuleID = '/home/carl/AnghaBench/tg/extr_event-old.h_bufferevent_socket_new.c'
source_filename = "/home/carl/AnghaBench/tg/extr_event-old.h_bufferevent_socket_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.event_base = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufferevent* (%struct.event_base*, i32, i32)* @bufferevent_socket_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufferevent* @bufferevent_socket_new(%struct.event_base* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufferevent*, align 8
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.bufferevent* @bufferevent_new(i32 %13, i32 0, i32 0, i32 0, i32 0)
  store %struct.bufferevent* %14, %struct.bufferevent** %7, align 8
  %15 = load %struct.event_base*, %struct.event_base** %4, align 8
  %16 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %17 = call i32 @bufferevent_base_set(%struct.event_base* %15, %struct.bufferevent* %16)
  %18 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  ret %struct.bufferevent* %18
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.bufferevent* @bufferevent_new(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bufferevent_base_set(%struct.event_base*, %struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
