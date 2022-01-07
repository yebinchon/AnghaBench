; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_client.c_client_close_stats.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_client.c_client_close_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.server_pool = type { i32 }

@client_connections = common dso_local global i32 0, align 4
@client_eof = common dso_local global i32 0, align 4
@client_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.server_pool*, i32, i32)* @client_close_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_close_stats(%struct.context* %0, %struct.server_pool* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.server_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.server_pool* %1, %struct.server_pool** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.context*, %struct.context** %5, align 8
  %10 = load %struct.server_pool*, %struct.server_pool** %6, align 8
  %11 = load i32, i32* @client_connections, align 4
  %12 = call i32 @stats_pool_decr(%struct.context* %9, %struct.server_pool* %10, i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.context*, %struct.context** %5, align 8
  %17 = load %struct.server_pool*, %struct.server_pool** %6, align 8
  %18 = load i32, i32* @client_eof, align 4
  %19 = call i32 @stats_pool_incr(%struct.context* %16, %struct.server_pool* %17, i32 %18)
  br label %28

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %23 [
    i32 129, label %22
    i32 128, label %22
    i32 135, label %22
    i32 136, label %22
    i32 130, label %22
    i32 132, label %22
    i32 131, label %22
    i32 134, label %22
    i32 133, label %22
  ]

22:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20
  br label %23

23:                                               ; preds = %20, %22
  %24 = load %struct.context*, %struct.context** %5, align 8
  %25 = load %struct.server_pool*, %struct.server_pool** %6, align 8
  %26 = load i32, i32* @client_err, align 4
  %27 = call i32 @stats_pool_incr(%struct.context* %24, %struct.server_pool* %25, i32 %26)
  br label %28

28:                                               ; preds = %15, %23
  ret void
}

declare dso_local i32 @stats_pool_decr(%struct.context*, %struct.server_pool*, i32) #1

declare dso_local i32 @stats_pool_incr(%struct.context*, %struct.server_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
