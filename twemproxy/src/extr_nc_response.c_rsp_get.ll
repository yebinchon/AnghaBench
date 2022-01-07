; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_response.c_rsp_get.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_response.c_rsp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32 }
%struct.conn = type { i32, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msg* @rsp_get(%struct.conn* %0) #0 {
  %2 = alloca %struct.conn*, align 8
  %3 = alloca %struct.msg*, align 8
  store %struct.conn* %0, %struct.conn** %2, align 8
  %4 = load %struct.conn*, %struct.conn** %2, align 8
  %5 = getelementptr inbounds %struct.conn, %struct.conn* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.conn*, %struct.conn** %2, align 8
  %10 = getelementptr inbounds %struct.conn, %struct.conn* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ false, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.conn*, %struct.conn** %2, align 8
  %19 = load %struct.conn*, %struct.conn** %2, align 8
  %20 = getelementptr inbounds %struct.conn, %struct.conn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.msg* @msg_get(%struct.conn* %18, i32 0, i32 %21)
  store %struct.msg* %22, %struct.msg** %3, align 8
  %23 = load %struct.msg*, %struct.msg** %3, align 8
  %24 = icmp eq %struct.msg* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i32, i32* @errno, align 4
  %27 = load %struct.conn*, %struct.conn** %2, align 8
  %28 = getelementptr inbounds %struct.conn, %struct.conn* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %14
  %30 = load %struct.msg*, %struct.msg** %3, align 8
  ret %struct.msg* %30
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.msg* @msg_get(%struct.conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
