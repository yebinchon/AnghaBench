; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_request.c_req_make_reply.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_request.c_req_make_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { {}*, i32, i32 }
%struct.msg = type { i32, i64, %struct.msg* }

@errno = common dso_local global i32 0, align 4
@NC_ENOMEM = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.conn*, %struct.msg*)* @req_make_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @req_make_reply(%struct.context* %0, %struct.conn* %1, %struct.msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.conn*, align 8
  %7 = alloca %struct.msg*, align 8
  %8 = alloca %struct.msg*, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.conn* %1, %struct.conn** %6, align 8
  store %struct.msg* %2, %struct.msg** %7, align 8
  %9 = load %struct.conn*, %struct.conn** %6, align 8
  %10 = load %struct.conn*, %struct.conn** %6, align 8
  %11 = getelementptr inbounds %struct.conn, %struct.conn* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.msg* @msg_get(%struct.conn* %9, i32 0, i32 %12)
  store %struct.msg* %13, %struct.msg** %8, align 8
  %14 = load %struct.msg*, %struct.msg** %8, align 8
  %15 = icmp eq %struct.msg* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @errno, align 4
  %18 = load %struct.conn*, %struct.conn** %6, align 8
  %19 = getelementptr inbounds %struct.conn, %struct.conn* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.msg*, %struct.msg** %8, align 8
  %23 = load %struct.msg*, %struct.msg** %7, align 8
  %24 = getelementptr inbounds %struct.msg, %struct.msg* %23, i32 0, i32 2
  store %struct.msg* %22, %struct.msg** %24, align 8
  %25 = load %struct.msg*, %struct.msg** %7, align 8
  %26 = load %struct.msg*, %struct.msg** %8, align 8
  %27 = getelementptr inbounds %struct.msg, %struct.msg* %26, i32 0, i32 2
  store %struct.msg* %25, %struct.msg** %27, align 8
  %28 = load %struct.msg*, %struct.msg** %8, align 8
  %29 = getelementptr inbounds %struct.msg, %struct.msg* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.msg*, %struct.msg** %7, align 8
  %31 = getelementptr inbounds %struct.msg, %struct.msg* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.conn*, %struct.conn** %6, align 8
  %33 = getelementptr inbounds %struct.conn, %struct.conn* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.context*, %struct.conn*, %struct.msg*)**
  %35 = load i32 (%struct.context*, %struct.conn*, %struct.msg*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*)** %34, align 8
  %36 = load %struct.context*, %struct.context** %5, align 8
  %37 = load %struct.conn*, %struct.conn** %6, align 8
  %38 = load %struct.msg*, %struct.msg** %7, align 8
  %39 = call i32 %35(%struct.context* %36, %struct.conn* %37, %struct.msg* %38)
  %40 = load i32, i32* @NC_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %21, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.msg* @msg_get(%struct.conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
