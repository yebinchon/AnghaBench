; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_request.c_req_client_enqueue_omsgq.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_request.c_req_client_enqueue_omsgq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, i32, i64 }
%struct.msg = type { i32 }

@c_tqe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @req_client_enqueue_omsgq(%struct.context* %0, %struct.conn* %1, %struct.msg* %2) #0 {
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
  %12 = getelementptr inbounds %struct.conn, %struct.conn* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.conn*, %struct.conn** %5, align 8
  %17 = getelementptr inbounds %struct.conn, %struct.conn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ false, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.conn*, %struct.conn** %5, align 8
  %26 = getelementptr inbounds %struct.conn, %struct.conn* %25, i32 0, i32 0
  %27 = load %struct.msg*, %struct.msg** %6, align 8
  %28 = load i32, i32* @c_tqe, align 4
  %29 = call i32 @TAILQ_INSERT_TAIL(i32* %26, %struct.msg* %27, i32 %28)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
