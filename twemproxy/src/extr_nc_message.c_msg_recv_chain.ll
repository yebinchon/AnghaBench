; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_recv_chain.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_recv_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { %struct.msg* (%struct.context*, %struct.conn*, i32)* }
%struct.msg = type { i32, i32, i32 }
%struct.mbuf = type { i64, i64, i32 }

@next = common dso_local global i32 0, align 4
@NC_ENOMEM = common dso_local global i64 0, align 8
@NC_EAGAIN = common dso_local global i64 0, align 8
@NC_OK = common dso_local global i64 0, align 8
@NC_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.context*, %struct.conn*, %struct.msg*)* @msg_recv_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msg_recv_chain(%struct.context* %0, %struct.conn* %1, %struct.msg* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.conn*, align 8
  %7 = alloca %struct.msg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.msg*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.conn* %1, %struct.conn** %6, align 8
  store %struct.msg* %2, %struct.msg** %7, align 8
  %13 = load %struct.msg*, %struct.msg** %7, align 8
  %14 = getelementptr inbounds %struct.msg, %struct.msg* %13, i32 0, i32 2
  %15 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %16 = load i32, i32* @next, align 4
  %17 = call %struct.mbuf* @STAILQ_LAST(i32* %14, %struct.mbuf* %15, i32 %16)
  store %struct.mbuf* %17, %struct.mbuf** %10, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %19 = icmp eq %struct.mbuf* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %22 = call i64 @mbuf_full(%struct.mbuf* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20, %3
  %25 = call %struct.mbuf* (...) @mbuf_get()
  store %struct.mbuf* %25, %struct.mbuf** %10, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %27 = icmp eq %struct.mbuf* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @NC_ENOMEM, align 8
  store i64 %29, i64* %4, align 8
  br label %121

30:                                               ; preds = %24
  %31 = load %struct.msg*, %struct.msg** %7, align 8
  %32 = getelementptr inbounds %struct.msg, %struct.msg* %31, i32 0, i32 2
  %33 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %34 = call i32 @mbuf_insert(i32* %32, %struct.mbuf* %33)
  %35 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.msg*, %struct.msg** %7, align 8
  %39 = getelementptr inbounds %struct.msg, %struct.msg* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %20
  %41 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = icmp sgt i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %52 = call i64 @mbuf_size(%struct.mbuf* %51)
  store i64 %52, i64* %11, align 8
  %53 = load %struct.conn*, %struct.conn** %6, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i64 @conn_recv(%struct.conn* %53, i64 %56, i64 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %40
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @NC_EAGAIN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* @NC_OK, align 8
  store i64 %66, i64* %4, align 8
  br label %121

67:                                               ; preds = %61
  %68 = load i64, i64* @NC_ERROR, align 8
  store i64 %68, i64* %4, align 8
  br label %121

69:                                               ; preds = %40
  %70 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sle i64 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.msg*, %struct.msg** %7, align 8
  %88 = getelementptr inbounds %struct.msg, %struct.msg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  br label %93

93:                                               ; preds = %117, %69
  %94 = load %struct.context*, %struct.context** %5, align 8
  %95 = load %struct.conn*, %struct.conn** %6, align 8
  %96 = load %struct.msg*, %struct.msg** %7, align 8
  %97 = call i64 @msg_parse(%struct.context* %94, %struct.conn* %95, %struct.msg* %96)
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @NC_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i64, i64* %8, align 8
  store i64 %102, i64* %4, align 8
  br label %121

103:                                              ; preds = %93
  %104 = load %struct.conn*, %struct.conn** %6, align 8
  %105 = getelementptr inbounds %struct.conn, %struct.conn* %104, i32 0, i32 0
  %106 = load %struct.msg* (%struct.context*, %struct.conn*, i32)*, %struct.msg* (%struct.context*, %struct.conn*, i32)** %105, align 8
  %107 = load %struct.context*, %struct.context** %5, align 8
  %108 = load %struct.conn*, %struct.conn** %6, align 8
  %109 = call %struct.msg* %106(%struct.context* %107, %struct.conn* %108, i32 0)
  store %struct.msg* %109, %struct.msg** %9, align 8
  %110 = load %struct.msg*, %struct.msg** %9, align 8
  %111 = icmp eq %struct.msg* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %103
  %113 = load %struct.msg*, %struct.msg** %9, align 8
  %114 = load %struct.msg*, %struct.msg** %7, align 8
  %115 = icmp eq %struct.msg* %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %103
  br label %119

117:                                              ; preds = %112
  %118 = load %struct.msg*, %struct.msg** %9, align 8
  store %struct.msg* %118, %struct.msg** %7, align 8
  br label %93

119:                                              ; preds = %116
  %120 = load i64, i64* @NC_OK, align 8
  store i64 %120, i64* %4, align 8
  br label %121

121:                                              ; preds = %119, %101, %67, %65, %28
  %122 = load i64, i64* %4, align 8
  ret i64 %122
}

declare dso_local %struct.mbuf* @STAILQ_LAST(i32*, %struct.mbuf*, i32) #1

declare dso_local i64 @mbuf_full(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @mbuf_get(...) #1

declare dso_local i32 @mbuf_insert(i32*, %struct.mbuf*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @mbuf_size(%struct.mbuf*) #1

declare dso_local i64 @conn_recv(%struct.conn*, i64, i64) #1

declare dso_local i64 @msg_parse(%struct.context*, %struct.conn*, %struct.msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
