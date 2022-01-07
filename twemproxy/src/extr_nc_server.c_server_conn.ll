; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_conn.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32, i32 }
%struct.server = type { i64, i32, %struct.server_pool* }
%struct.server_pool = type { i64, i32 }

@conn_tqe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn* @server_conn(%struct.server* %0) #0 {
  %2 = alloca %struct.conn*, align 8
  %3 = alloca %struct.server*, align 8
  %4 = alloca %struct.server_pool*, align 8
  %5 = alloca %struct.conn*, align 8
  store %struct.server* %0, %struct.server** %3, align 8
  %6 = load %struct.server*, %struct.server** %3, align 8
  %7 = getelementptr inbounds %struct.server, %struct.server* %6, i32 0, i32 2
  %8 = load %struct.server_pool*, %struct.server_pool** %7, align 8
  store %struct.server_pool* %8, %struct.server_pool** %4, align 8
  %9 = load %struct.server*, %struct.server** %3, align 8
  %10 = getelementptr inbounds %struct.server, %struct.server* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.server_pool*, %struct.server_pool** %4, align 8
  %13 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.server*, %struct.server** %3, align 8
  %18 = load %struct.server_pool*, %struct.server_pool** %4, align 8
  %19 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.conn* @conn_get(%struct.server* %17, i32 0, i32 %20)
  store %struct.conn* %21, %struct.conn** %2, align 8
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.server*, %struct.server** %3, align 8
  %24 = getelementptr inbounds %struct.server, %struct.server* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.server_pool*, %struct.server_pool** %4, align 8
  %27 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.server*, %struct.server** %3, align 8
  %33 = getelementptr inbounds %struct.server, %struct.server* %32, i32 0, i32 1
  %34 = call %struct.conn* @TAILQ_FIRST(i32* %33)
  store %struct.conn* %34, %struct.conn** %5, align 8
  %35 = load %struct.conn*, %struct.conn** %5, align 8
  %36 = getelementptr inbounds %struct.conn, %struct.conn* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %22
  %40 = load %struct.conn*, %struct.conn** %5, align 8
  %41 = getelementptr inbounds %struct.conn, %struct.conn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %22
  %46 = phi i1 [ false, %22 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load %struct.server*, %struct.server** %3, align 8
  %50 = getelementptr inbounds %struct.server, %struct.server* %49, i32 0, i32 1
  %51 = load %struct.conn*, %struct.conn** %5, align 8
  %52 = load i32, i32* @conn_tqe, align 4
  %53 = call i32 @TAILQ_REMOVE(i32* %50, %struct.conn* %51, i32 %52)
  %54 = load %struct.server*, %struct.server** %3, align 8
  %55 = getelementptr inbounds %struct.server, %struct.server* %54, i32 0, i32 1
  %56 = load %struct.conn*, %struct.conn** %5, align 8
  %57 = load i32, i32* @conn_tqe, align 4
  %58 = call i32 @TAILQ_INSERT_TAIL(i32* %55, %struct.conn* %56, i32 %57)
  %59 = load %struct.conn*, %struct.conn** %5, align 8
  store %struct.conn* %59, %struct.conn** %2, align 8
  br label %60

60:                                               ; preds = %45, %16
  %61 = load %struct.conn*, %struct.conn** %2, align 8
  ret %struct.conn* %61
}

declare dso_local %struct.conn* @conn_get(%struct.server*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.conn* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.conn*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
