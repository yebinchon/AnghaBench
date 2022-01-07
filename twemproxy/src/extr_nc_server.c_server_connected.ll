; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_connected.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, i32, i32 (%struct.context*, %struct.conn*, %struct.server*)*, i64, i32, i32, %struct.server* }
%struct.server = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@server_connections = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"connected on s %d to server '%.*s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_connected(%struct.context* %0, %struct.conn* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.conn*, align 8
  %5 = alloca %struct.server*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.conn* %1, %struct.conn** %4, align 8
  %6 = load %struct.conn*, %struct.conn** %4, align 8
  %7 = getelementptr inbounds %struct.conn, %struct.conn* %6, i32 0, i32 6
  %8 = load %struct.server*, %struct.server** %7, align 8
  store %struct.server* %8, %struct.server** %5, align 8
  %9 = load %struct.conn*, %struct.conn** %4, align 8
  %10 = getelementptr inbounds %struct.conn, %struct.conn* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.conn*, %struct.conn** %4, align 8
  %15 = getelementptr inbounds %struct.conn, %struct.conn* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.conn*, %struct.conn** %4, align 8
  %24 = getelementptr inbounds %struct.conn, %struct.conn* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.conn*, %struct.conn** %4, align 8
  %29 = getelementptr inbounds %struct.conn, %struct.conn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi i1 [ false, %19 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.context*, %struct.context** %3, align 8
  %38 = load %struct.server*, %struct.server** %5, align 8
  %39 = load i32, i32* @server_connections, align 4
  %40 = call i32 @stats_server_incr(%struct.context* %37, %struct.server* %38, i32 %39)
  %41 = load %struct.conn*, %struct.conn** %4, align 8
  %42 = getelementptr inbounds %struct.conn, %struct.conn* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.conn*, %struct.conn** %4, align 8
  %44 = getelementptr inbounds %struct.conn, %struct.conn* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.conn*, %struct.conn** %4, align 8
  %46 = getelementptr inbounds %struct.conn, %struct.conn* %45, i32 0, i32 2
  %47 = load i32 (%struct.context*, %struct.conn*, %struct.server*)*, i32 (%struct.context*, %struct.conn*, %struct.server*)** %46, align 8
  %48 = load %struct.context*, %struct.context** %3, align 8
  %49 = load %struct.conn*, %struct.conn** %4, align 8
  %50 = load %struct.server*, %struct.server** %5, align 8
  %51 = call i32 %47(%struct.context* %48, %struct.conn* %49, %struct.server* %50)
  %52 = load i32, i32* @LOG_INFO, align 4
  %53 = load %struct.conn*, %struct.conn** %4, align 8
  %54 = getelementptr inbounds %struct.conn, %struct.conn* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.server*, %struct.server** %5, align 8
  %57 = getelementptr inbounds %struct.server, %struct.server* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.server*, %struct.server** %5, align 8
  %61 = getelementptr inbounds %struct.server, %struct.server* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @log_debug(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %59, i32 %63)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @stats_server_incr(%struct.context*, %struct.server*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
