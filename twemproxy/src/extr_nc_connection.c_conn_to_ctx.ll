; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c_conn_to_ctx.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c_conn_to_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { %struct.server_pool*, i64, i64 }
%struct.server_pool = type { %struct.context*, %struct.server_pool* }
%struct.server = type { %struct.context*, %struct.server* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.context* @conn_to_ctx(%struct.conn* %0) #0 {
  %2 = alloca %struct.conn*, align 8
  %3 = alloca %struct.server_pool*, align 8
  %4 = alloca %struct.server*, align 8
  store %struct.conn* %0, %struct.conn** %2, align 8
  %5 = load %struct.conn*, %struct.conn** %2, align 8
  %6 = getelementptr inbounds %struct.conn, %struct.conn* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.conn*, %struct.conn** %2, align 8
  %11 = getelementptr inbounds %struct.conn, %struct.conn* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9, %1
  %15 = load %struct.conn*, %struct.conn** %2, align 8
  %16 = getelementptr inbounds %struct.conn, %struct.conn* %15, i32 0, i32 0
  %17 = load %struct.server_pool*, %struct.server_pool** %16, align 8
  store %struct.server_pool* %17, %struct.server_pool** %3, align 8
  br label %27

18:                                               ; preds = %9
  %19 = load %struct.conn*, %struct.conn** %2, align 8
  %20 = getelementptr inbounds %struct.conn, %struct.conn* %19, i32 0, i32 0
  %21 = load %struct.server_pool*, %struct.server_pool** %20, align 8
  %22 = bitcast %struct.server_pool* %21 to %struct.server*
  store %struct.server* %22, %struct.server** %4, align 8
  %23 = load %struct.server*, %struct.server** %4, align 8
  %24 = getelementptr inbounds %struct.server, %struct.server* %23, i32 0, i32 1
  %25 = load %struct.server*, %struct.server** %24, align 8
  %26 = bitcast %struct.server* %25 to %struct.server_pool*
  store %struct.server_pool* %26, %struct.server_pool** %3, align 8
  br label %27

27:                                               ; preds = %18, %14
  %28 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %29 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %28, i32 0, i32 0
  %30 = load %struct.context*, %struct.context** %29, align 8
  ret %struct.context* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
