; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_init_events.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_init_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@complete_event = common dso_local global i8* null, align 8
@conn_close_event = common dso_local global i8* null, align 8
@conn_wait_event = common dso_local global i8* null, align 8
@server_req_rec_event = common dso_local global i8* null, align 8
@request_sent_event = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_events() #0 {
  %1 = load i32, i32* @FALSE, align 4
  %2 = load i32, i32* @FALSE, align 4
  %3 = call i8* @CreateEventW(i32* null, i32 %1, i32 %2, i32* null)
  store i8* %3, i8** @complete_event, align 8
  %4 = load i32, i32* @FALSE, align 4
  %5 = load i32, i32* @FALSE, align 4
  %6 = call i8* @CreateEventW(i32* null, i32 %4, i32 %5, i32* null)
  store i8* %6, i8** @conn_close_event, align 8
  %7 = load i32, i32* @FALSE, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i8* @CreateEventW(i32* null, i32 %7, i32 %8, i32* null)
  store i8* %9, i8** @conn_wait_event, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i8* @CreateEventW(i32* null, i32 %10, i32 %11, i32* null)
  store i8* %12, i8** @server_req_rec_event, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i8* @CreateEventW(i32* null, i32 %13, i32 %14, i32* null)
  store i8* %15, i8** @request_sent_event, align 8
  ret void
}

declare dso_local i8* @CreateEventW(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
