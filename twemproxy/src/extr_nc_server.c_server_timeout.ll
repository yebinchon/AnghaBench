; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_timeout.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { %struct.server*, i32, i32 }
%struct.server = type { %struct.server_pool* }
%struct.server_pool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_timeout(%struct.conn* %0) #0 {
  %2 = alloca %struct.conn*, align 8
  %3 = alloca %struct.server*, align 8
  %4 = alloca %struct.server_pool*, align 8
  store %struct.conn* %0, %struct.conn** %2, align 8
  %5 = load %struct.conn*, %struct.conn** %2, align 8
  %6 = getelementptr inbounds %struct.conn, %struct.conn* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.conn*, %struct.conn** %2, align 8
  %11 = getelementptr inbounds %struct.conn, %struct.conn* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ false, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.conn*, %struct.conn** %2, align 8
  %20 = getelementptr inbounds %struct.conn, %struct.conn* %19, i32 0, i32 0
  %21 = load %struct.server*, %struct.server** %20, align 8
  store %struct.server* %21, %struct.server** %3, align 8
  %22 = load %struct.server*, %struct.server** %3, align 8
  %23 = getelementptr inbounds %struct.server, %struct.server* %22, i32 0, i32 0
  %24 = load %struct.server_pool*, %struct.server_pool** %23, align 8
  store %struct.server_pool* %24, %struct.server_pool** %4, align 8
  %25 = load %struct.server_pool*, %struct.server_pool** %4, align 8
  %26 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
