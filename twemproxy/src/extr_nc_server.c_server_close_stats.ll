; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_close_stats.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_close_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.server = type { i32 }

@server_connections = common dso_local global i32 0, align 4
@server_eof = common dso_local global i32 0, align 4
@server_timedout = common dso_local global i32 0, align 4
@server_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.server*, i32, i32, i32)* @server_close_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_close_stats(%struct.context* %0, %struct.server* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.context*, align 8
  %7 = alloca %struct.server*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %6, align 8
  store %struct.server* %1, %struct.server** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = load %struct.context*, %struct.context** %6, align 8
  %15 = load %struct.server*, %struct.server** %7, align 8
  %16 = load i32, i32* @server_connections, align 4
  %17 = call i32 @stats_server_decr(%struct.context* %14, %struct.server* %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.context*, %struct.context** %6, align 8
  %23 = load %struct.server*, %struct.server** %7, align 8
  %24 = load i32, i32* @server_eof, align 4
  %25 = call i32 @stats_server_incr(%struct.context* %22, %struct.server* %23, i32 %24)
  br label %39

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %34 [
    i32 128, label %28
    i32 129, label %33
    i32 135, label %33
    i32 137, label %33
    i32 136, label %33
    i32 130, label %33
    i32 132, label %33
    i32 131, label %33
    i32 134, label %33
    i32 133, label %33
  ]

28:                                               ; preds = %26
  %29 = load %struct.context*, %struct.context** %6, align 8
  %30 = load %struct.server*, %struct.server** %7, align 8
  %31 = load i32, i32* @server_timedout, align 4
  %32 = call i32 @stats_server_incr(%struct.context* %29, %struct.server* %30, i32 %31)
  br label %39

33:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26
  br label %34

34:                                               ; preds = %26, %33
  %35 = load %struct.context*, %struct.context** %6, align 8
  %36 = load %struct.server*, %struct.server** %7, align 8
  %37 = load i32, i32* @server_err, align 4
  %38 = call i32 @stats_server_incr(%struct.context* %35, %struct.server* %36, i32 %37)
  br label %39

39:                                               ; preds = %21, %34, %28
  ret void
}

declare dso_local i32 @stats_server_decr(%struct.context*, %struct.server*, i32) #1

declare dso_local i32 @stats_server_incr(%struct.context*, %struct.server*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
