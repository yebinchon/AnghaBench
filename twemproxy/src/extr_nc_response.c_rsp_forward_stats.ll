; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_response.c_rsp_forward_stats.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_response.c_rsp_forward_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.server = type { i32 }
%struct.msg = type { i32 }

@responses = common dso_local global i32 0, align 4
@response_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.server*, %struct.msg*, i32)* @rsp_forward_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsp_forward_stats(%struct.context* %0, %struct.server* %1, %struct.msg* %2, i32 %3) #0 {
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.server*, align 8
  %7 = alloca %struct.msg*, align 8
  %8 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.server* %1, %struct.server** %6, align 8
  store %struct.msg* %2, %struct.msg** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.msg*, %struct.msg** %7, align 8
  %10 = getelementptr inbounds %struct.msg, %struct.msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.context*, %struct.context** %5, align 8
  %17 = load %struct.server*, %struct.server** %6, align 8
  %18 = load i32, i32* @responses, align 4
  %19 = call i32 @stats_server_incr(%struct.context* %16, %struct.server* %17, i32 %18)
  %20 = load %struct.context*, %struct.context** %5, align 8
  %21 = load %struct.server*, %struct.server** %6, align 8
  %22 = load i32, i32* @response_bytes, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @stats_server_incr_by(%struct.context* %20, %struct.server* %21, i32 %22, i32 %23)
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
