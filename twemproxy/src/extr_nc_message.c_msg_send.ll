; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_send.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, %struct.msg* (%struct.context*, %struct.conn*)*, i32 }
%struct.msg = type { i32 }

@NC_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msg_send(%struct.context* %0, %struct.conn* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.conn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.msg*, align 8
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.conn* %1, %struct.conn** %5, align 8
  %8 = load %struct.conn*, %struct.conn** %5, align 8
  %9 = getelementptr inbounds %struct.conn, %struct.conn* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.conn*, %struct.conn** %5, align 8
  %13 = getelementptr inbounds %struct.conn, %struct.conn* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  br label %14

14:                                               ; preds = %36, %2
  %15 = load %struct.conn*, %struct.conn** %5, align 8
  %16 = getelementptr inbounds %struct.conn, %struct.conn* %15, i32 0, i32 1
  %17 = load %struct.msg* (%struct.context*, %struct.conn*)*, %struct.msg* (%struct.context*, %struct.conn*)** %16, align 8
  %18 = load %struct.context*, %struct.context** %4, align 8
  %19 = load %struct.conn*, %struct.conn** %5, align 8
  %20 = call %struct.msg* %17(%struct.context* %18, %struct.conn* %19)
  store %struct.msg* %20, %struct.msg** %7, align 8
  %21 = load %struct.msg*, %struct.msg** %7, align 8
  %22 = icmp eq %struct.msg* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, i64* @NC_OK, align 8
  store i64 %24, i64* %3, align 8
  br label %43

25:                                               ; preds = %14
  %26 = load %struct.context*, %struct.context** %4, align 8
  %27 = load %struct.conn*, %struct.conn** %5, align 8
  %28 = load %struct.msg*, %struct.msg** %7, align 8
  %29 = call i64 @msg_send_chain(%struct.context* %26, %struct.conn* %27, %struct.msg* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @NC_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %3, align 8
  br label %43

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.conn*, %struct.conn** %5, align 8
  %38 = getelementptr inbounds %struct.conn, %struct.conn* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %14, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* @NC_OK, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %41, %33, %23
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @msg_send_chain(%struct.context*, %struct.conn*, %struct.msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
