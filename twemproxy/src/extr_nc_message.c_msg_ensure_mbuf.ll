; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_ensure_mbuf.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_ensure_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.msg = type { i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @msg_ensure_mbuf(%struct.msg* %0, i64 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.msg* %0, %struct.msg** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.msg*, %struct.msg** %4, align 8
  %8 = getelementptr inbounds %struct.msg, %struct.msg* %7, i32 0, i32 0
  %9 = call i64 @STAILQ_EMPTY(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.msg*, %struct.msg** %4, align 8
  %13 = getelementptr inbounds %struct.msg, %struct.msg* %12, i32 0, i32 0
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = load i32, i32* @next, align 4
  %16 = call %struct.mbuf* @STAILQ_LAST(i32* %13, %struct.mbuf* %14, i32 %15)
  %17 = call i64 @mbuf_size(%struct.mbuf* %16)
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %11, %2
  %21 = call %struct.mbuf* (...) @mbuf_get()
  store %struct.mbuf* %21, %struct.mbuf** %6, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %38

25:                                               ; preds = %20
  %26 = load %struct.msg*, %struct.msg** %4, align 8
  %27 = getelementptr inbounds %struct.msg, %struct.msg* %26, i32 0, i32 0
  %28 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %29 = call i32 @mbuf_insert(i32* %27, %struct.mbuf* %28)
  br label %36

30:                                               ; preds = %11
  %31 = load %struct.msg*, %struct.msg** %4, align 8
  %32 = getelementptr inbounds %struct.msg, %struct.msg* %31, i32 0, i32 0
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = load i32, i32* @next, align 4
  %35 = call %struct.mbuf* @STAILQ_LAST(i32* %32, %struct.mbuf* %33, i32 %34)
  store %struct.mbuf* %35, %struct.mbuf** %6, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %37, %struct.mbuf** %3, align 8
  br label %38

38:                                               ; preds = %36, %24
  %39 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %39
}

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i64 @mbuf_size(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @STAILQ_LAST(i32*, %struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @mbuf_get(...) #1

declare dso_local i32 @mbuf_insert(i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
