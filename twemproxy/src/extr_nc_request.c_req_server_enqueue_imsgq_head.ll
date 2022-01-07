; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_request.c_req_server_enqueue_imsgq_head.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_request.c_req_server_enqueue_imsgq_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, i32, i32, i32 }
%struct.msg = type { i32, i32, i32 }

@s_tqe = common dso_local global i32 0, align 4
@in_queue = common dso_local global i32 0, align 4
@in_queue_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @req_server_enqueue_imsgq_head(%struct.context* %0, %struct.conn* %1, %struct.msg* %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.conn*, align 8
  %6 = alloca %struct.msg*, align 8
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.conn* %1, %struct.conn** %5, align 8
  store %struct.msg* %2, %struct.msg** %6, align 8
  %7 = load %struct.msg*, %struct.msg** %6, align 8
  %8 = getelementptr inbounds %struct.msg, %struct.msg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.conn*, %struct.conn** %5, align 8
  %12 = getelementptr inbounds %struct.conn, %struct.conn* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.conn*, %struct.conn** %5, align 8
  %17 = getelementptr inbounds %struct.conn, %struct.conn* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ false, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.msg*, %struct.msg** %6, align 8
  %26 = getelementptr inbounds %struct.msg, %struct.msg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load %struct.msg*, %struct.msg** %6, align 8
  %31 = load %struct.conn*, %struct.conn** %5, align 8
  %32 = call i32 @msg_tmo_insert(%struct.msg* %30, %struct.conn* %31)
  br label %33

33:                                               ; preds = %29, %21
  %34 = load %struct.conn*, %struct.conn** %5, align 8
  %35 = getelementptr inbounds %struct.conn, %struct.conn* %34, i32 0, i32 1
  %36 = load %struct.msg*, %struct.msg** %6, align 8
  %37 = load i32, i32* @s_tqe, align 4
  %38 = call i32 @TAILQ_INSERT_HEAD(i32* %35, %struct.msg* %36, i32 %37)
  %39 = load %struct.context*, %struct.context** %4, align 8
  %40 = load %struct.conn*, %struct.conn** %5, align 8
  %41 = getelementptr inbounds %struct.conn, %struct.conn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @in_queue, align 4
  %44 = call i32 @stats_server_incr(%struct.context* %39, i32 %42, i32 %43)
  %45 = load %struct.context*, %struct.context** %4, align 8
  %46 = load %struct.conn*, %struct.conn** %5, align 8
  %47 = getelementptr inbounds %struct.conn, %struct.conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @in_queue_bytes, align 4
  %50 = load %struct.msg*, %struct.msg** %6, align 8
  %51 = getelementptr inbounds %struct.msg, %struct.msg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @stats_server_incr_by(%struct.context* %45, i32 %48, i32 %49, i32 %52)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @msg_tmo_insert(%struct.msg*, %struct.conn*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.msg*, i32) #1

declare dso_local i32 @stats_server_incr(%struct.context*, i32, i32) #1

declare dso_local i32 @stats_server_incr_by(%struct.context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
