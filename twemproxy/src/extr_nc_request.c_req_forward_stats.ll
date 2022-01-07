; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_request.c_req_forward_stats.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_request.c_req_forward_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.server = type { i32 }
%struct.msg = type { i32, i32 }

@requests = common dso_local global i32 0, align 4
@request_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.server*, %struct.msg*)* @req_forward_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @req_forward_stats(%struct.context* %0, %struct.server* %1, %struct.msg* %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.server*, align 8
  %6 = alloca %struct.msg*, align 8
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.server* %1, %struct.server** %5, align 8
  store %struct.msg* %2, %struct.msg** %6, align 8
  %7 = load %struct.msg*, %struct.msg** %6, align 8
  %8 = getelementptr inbounds %struct.msg, %struct.msg* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.context*, %struct.context** %4, align 8
  %12 = load %struct.server*, %struct.server** %5, align 8
  %13 = load i32, i32* @requests, align 4
  %14 = call i32 @stats_server_incr(%struct.context* %11, %struct.server* %12, i32 %13)
  %15 = load %struct.context*, %struct.context** %4, align 8
  %16 = load %struct.server*, %struct.server** %5, align 8
  %17 = load i32, i32* @request_bytes, align 4
  %18 = load %struct.msg*, %struct.msg** %6, align 8
  %19 = getelementptr inbounds %struct.msg, %struct.msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @stats_server_incr_by(%struct.context* %15, %struct.server* %16, i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @stats_server_incr(%struct.context*, %struct.server*, i32) #1

declare dso_local i32 @stats_server_incr_by(%struct.context*, %struct.server*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
