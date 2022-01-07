; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_parsed.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_parsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32 (%struct.context*, %struct.conn*, %struct.msg*, %struct.msg*)*, i32 }
%struct.msg = type { i64, i64, i32, i32, i32 }
%struct.mbuf = type { i64, i64 }

@next = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4
@NC_ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.conn*, %struct.msg*)* @msg_parsed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_parsed(%struct.context* %0, %struct.conn* %1, %struct.msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.conn*, align 8
  %7 = alloca %struct.msg*, align 8
  %8 = alloca %struct.msg*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.conn* %1, %struct.conn** %6, align 8
  store %struct.msg* %2, %struct.msg** %7, align 8
  %11 = load %struct.msg*, %struct.msg** %7, align 8
  %12 = getelementptr inbounds %struct.msg, %struct.msg* %11, i32 0, i32 2
  %13 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %14 = load i32, i32* @next, align 4
  %15 = call %struct.mbuf* @STAILQ_LAST(i32* %12, %struct.mbuf* %13, i32 %14)
  store %struct.mbuf* %15, %struct.mbuf** %9, align 8
  %16 = load %struct.msg*, %struct.msg** %7, align 8
  %17 = getelementptr inbounds %struct.msg, %struct.msg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.conn*, %struct.conn** %6, align 8
  %25 = getelementptr inbounds %struct.conn, %struct.conn* %24, i32 0, i32 0
  %26 = load i32 (%struct.context*, %struct.conn*, %struct.msg*, %struct.msg*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*, %struct.msg*)** %25, align 8
  %27 = load %struct.context*, %struct.context** %5, align 8
  %28 = load %struct.conn*, %struct.conn** %6, align 8
  %29 = load %struct.msg*, %struct.msg** %7, align 8
  %30 = call i32 %26(%struct.context* %27, %struct.conn* %28, %struct.msg* %29, %struct.msg* null)
  %31 = load i32, i32* @NC_OK, align 4
  store i32 %31, i32* %4, align 4
  br label %90

32:                                               ; preds = %3
  %33 = load %struct.msg*, %struct.msg** %7, align 8
  %34 = getelementptr inbounds %struct.msg, %struct.msg* %33, i32 0, i32 2
  %35 = load %struct.msg*, %struct.msg** %7, align 8
  %36 = getelementptr inbounds %struct.msg, %struct.msg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.mbuf* @mbuf_split(i32* %34, i64 %37, i32* null, i32* null)
  store %struct.mbuf* %38, %struct.mbuf** %10, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %40 = icmp eq %struct.mbuf* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %42, i32* %4, align 4
  br label %90

43:                                               ; preds = %32
  %44 = load %struct.msg*, %struct.msg** %7, align 8
  %45 = getelementptr inbounds %struct.msg, %struct.msg* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.msg*, %struct.msg** %7, align 8
  %48 = getelementptr inbounds %struct.msg, %struct.msg* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.conn*, %struct.conn** %6, align 8
  %51 = getelementptr inbounds %struct.conn, %struct.conn* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.msg* @msg_get(i32 %46, i32 %49, i32 %52)
  store %struct.msg* %53, %struct.msg** %8, align 8
  %54 = load %struct.msg*, %struct.msg** %8, align 8
  %55 = icmp eq %struct.msg* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %58 = call i32 @mbuf_put(%struct.mbuf* %57)
  %59 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %59, i32* %4, align 4
  br label %90

60:                                               ; preds = %43
  %61 = load %struct.msg*, %struct.msg** %8, align 8
  %62 = getelementptr inbounds %struct.msg, %struct.msg* %61, i32 0, i32 2
  %63 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %64 = call i32 @mbuf_insert(i32* %62, %struct.mbuf* %63)
  %65 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.msg*, %struct.msg** %8, align 8
  %69 = getelementptr inbounds %struct.msg, %struct.msg* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %71 = call i64 @mbuf_length(%struct.mbuf* %70)
  %72 = load %struct.msg*, %struct.msg** %8, align 8
  %73 = getelementptr inbounds %struct.msg, %struct.msg* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.msg*, %struct.msg** %8, align 8
  %75 = getelementptr inbounds %struct.msg, %struct.msg* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.msg*, %struct.msg** %7, align 8
  %78 = getelementptr inbounds %struct.msg, %struct.msg* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct.conn*, %struct.conn** %6, align 8
  %82 = getelementptr inbounds %struct.conn, %struct.conn* %81, i32 0, i32 0
  %83 = load i32 (%struct.context*, %struct.conn*, %struct.msg*, %struct.msg*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*, %struct.msg*)** %82, align 8
  %84 = load %struct.context*, %struct.context** %5, align 8
  %85 = load %struct.conn*, %struct.conn** %6, align 8
  %86 = load %struct.msg*, %struct.msg** %7, align 8
  %87 = load %struct.msg*, %struct.msg** %8, align 8
  %88 = call i32 %83(%struct.context* %84, %struct.conn* %85, %struct.msg* %86, %struct.msg* %87)
  %89 = load i32, i32* @NC_OK, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %60, %56, %41, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.mbuf* @STAILQ_LAST(i32*, %struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @mbuf_split(i32*, i64, i32*, i32*) #1

declare dso_local %struct.msg* @msg_get(i32, i32, i32) #1

declare dso_local i32 @mbuf_put(%struct.mbuf*) #1

declare dso_local i32 @mbuf_insert(i32*, %struct.mbuf*) #1

declare dso_local i64 @mbuf_length(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
