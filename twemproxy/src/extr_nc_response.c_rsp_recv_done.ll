; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_response.c_rsp_recv_done.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_response.c_rsp_recv_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { %struct.msg*, i32, i32 }
%struct.msg = type { i32, %struct.conn* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsp_recv_done(%struct.context* %0, %struct.conn* %1, %struct.msg* %2, %struct.msg* %3) #0 {
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.conn*, align 8
  %7 = alloca %struct.msg*, align 8
  %8 = alloca %struct.msg*, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.conn* %1, %struct.conn** %6, align 8
  store %struct.msg* %2, %struct.msg** %7, align 8
  store %struct.msg* %3, %struct.msg** %8, align 8
  %9 = load %struct.conn*, %struct.conn** %6, align 8
  %10 = getelementptr inbounds %struct.conn, %struct.conn* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load %struct.conn*, %struct.conn** %6, align 8
  %15 = getelementptr inbounds %struct.conn, %struct.conn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %4
  %20 = phi i1 [ false, %4 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.msg*, %struct.msg** %7, align 8
  %24 = icmp ne %struct.msg* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.conn*, %struct.conn** %6, align 8
  %27 = getelementptr inbounds %struct.conn, %struct.conn* %26, i32 0, i32 0
  %28 = load %struct.msg*, %struct.msg** %27, align 8
  %29 = load %struct.msg*, %struct.msg** %7, align 8
  %30 = icmp eq %struct.msg* %28, %29
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i1 [ false, %19 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.msg*, %struct.msg** %7, align 8
  %36 = getelementptr inbounds %struct.msg, %struct.msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.msg*, %struct.msg** %7, align 8
  %43 = getelementptr inbounds %struct.msg, %struct.msg* %42, i32 0, i32 1
  %44 = load %struct.conn*, %struct.conn** %43, align 8
  %45 = load %struct.conn*, %struct.conn** %6, align 8
  %46 = icmp eq %struct.conn* %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load %struct.msg*, %struct.msg** %8, align 8
  %50 = icmp eq %struct.msg* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %31
  %52 = load %struct.msg*, %struct.msg** %8, align 8
  %53 = getelementptr inbounds %struct.msg, %struct.msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %51, %31
  %58 = phi i1 [ true, %31 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.msg*, %struct.msg** %8, align 8
  %62 = load %struct.conn*, %struct.conn** %6, align 8
  %63 = getelementptr inbounds %struct.conn, %struct.conn* %62, i32 0, i32 0
  store %struct.msg* %61, %struct.msg** %63, align 8
  %64 = load %struct.context*, %struct.context** %5, align 8
  %65 = load %struct.conn*, %struct.conn** %6, align 8
  %66 = load %struct.msg*, %struct.msg** %7, align 8
  %67 = call i64 @rsp_filter(%struct.context* %64, %struct.conn* %65, %struct.msg* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %75

70:                                               ; preds = %57
  %71 = load %struct.context*, %struct.context** %5, align 8
  %72 = load %struct.conn*, %struct.conn** %6, align 8
  %73 = load %struct.msg*, %struct.msg** %7, align 8
  %74 = call i32 @rsp_forward(%struct.context* %71, %struct.conn* %72, %struct.msg* %73)
  br label %75

75:                                               ; preds = %70, %69
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @rsp_filter(%struct.context*, %struct.conn*, %struct.msg*) #1

declare dso_local i32 @rsp_forward(%struct.context*, %struct.conn*, %struct.msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
