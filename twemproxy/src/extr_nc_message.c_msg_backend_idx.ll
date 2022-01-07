; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_backend_idx.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_backend_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { %struct.conn* }
%struct.conn = type { %struct.server_pool* }
%struct.server_pool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msg_backend_idx(%struct.msg* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.conn*, align 8
  %8 = alloca %struct.server_pool*, align 8
  store %struct.msg* %0, %struct.msg** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.msg*, %struct.msg** %4, align 8
  %10 = getelementptr inbounds %struct.msg, %struct.msg* %9, i32 0, i32 0
  %11 = load %struct.conn*, %struct.conn** %10, align 8
  store %struct.conn* %11, %struct.conn** %7, align 8
  %12 = load %struct.conn*, %struct.conn** %7, align 8
  %13 = getelementptr inbounds %struct.conn, %struct.conn* %12, i32 0, i32 0
  %14 = load %struct.server_pool*, %struct.server_pool** %13, align 8
  store %struct.server_pool* %14, %struct.server_pool** %8, align 8
  %15 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @server_pool_idx(%struct.server_pool* %15, i32* %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @server_pool_idx(%struct.server_pool*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
