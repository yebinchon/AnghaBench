; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_swallow_msg.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_swallow_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i64 }
%struct.msg = type { i64, i32 }
%struct.server = type { %struct.TYPE_4__, %struct.server_pool* }
%struct.TYPE_4__ = type { i32 }
%struct.server_pool = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mbuf = type { i32* }

@MSG_REQ_REDIS_SELECT = common dso_local global i64 0, align 8
@mbuf = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SELECT %d failed on %s | %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redis_swallow_msg(%struct.conn* %0, %struct.msg* %1, %struct.msg* %2) #0 {
  %4 = alloca %struct.conn*, align 8
  %5 = alloca %struct.msg*, align 8
  %6 = alloca %struct.msg*, align 8
  %7 = alloca %struct.server*, align 8
  %8 = alloca %struct.server_pool*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca [128 x i64], align 16
  %11 = alloca i64, align 8
  store %struct.conn* %0, %struct.conn** %4, align 8
  store %struct.msg* %1, %struct.msg** %5, align 8
  store %struct.msg* %2, %struct.msg** %6, align 8
  %12 = load %struct.msg*, %struct.msg** %5, align 8
  %13 = icmp ne %struct.msg* %12, null
  br i1 %13, label %14, label %66

14:                                               ; preds = %3
  %15 = load %struct.msg*, %struct.msg** %5, align 8
  %16 = getelementptr inbounds %struct.msg, %struct.msg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MSG_REQ_REDIS_SELECT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %14
  %21 = load %struct.msg*, %struct.msg** %6, align 8
  %22 = icmp ne %struct.msg* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %20
  %24 = load %struct.msg*, %struct.msg** %6, align 8
  %25 = call i64 @redis_error(%struct.msg* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load %struct.conn*, %struct.conn** %4, align 8
  %29 = getelementptr inbounds %struct.conn, %struct.conn* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.server*
  store %struct.server* %31, %struct.server** %7, align 8
  %32 = load %struct.server*, %struct.server** %7, align 8
  %33 = getelementptr inbounds %struct.server, %struct.server* %32, i32 0, i32 1
  %34 = load %struct.server_pool*, %struct.server_pool** %33, align 8
  store %struct.server_pool* %34, %struct.server_pool** %8, align 8
  %35 = load %struct.msg*, %struct.msg** %6, align 8
  %36 = getelementptr inbounds %struct.msg, %struct.msg* %35, i32 0, i32 1
  %37 = load i32, i32* @mbuf, align 4
  %38 = load i32, i32* @next, align 4
  %39 = call %struct.mbuf* @STAILQ_LAST(i32* %36, i32 %37, i32 %38)
  store %struct.mbuf* %39, %struct.mbuf** %9, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %41 = call i64 @mbuf_length(%struct.mbuf* %40)
  %42 = sub nsw i64 %41, 3
  %43 = call i64 @MIN(i64 %42, i32 1023)
  store i64 %43, i64* %11, align 8
  %44 = getelementptr inbounds [128 x i64], [128 x i64]* %10, i64 0, i64 0
  %45 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @nc_memcpy(i64* %44, i32* %48, i64 %49)
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds [128 x i64], [128 x i64]* %10, i64 0, i64 %51
  store i64 0, i64* %52, align 8
  %53 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %54 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %57 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.server*, %struct.server** %7, align 8
  %61 = getelementptr inbounds %struct.server, %struct.server* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds [128 x i64], [128 x i64]* %10, i64 0, i64 0
  %65 = call i32 @log_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %59, i32 %63, i64* %64)
  br label %66

66:                                               ; preds = %27, %23, %20, %14, %3
  ret void
}

declare dso_local i64 @redis_error(%struct.msg*) #1

declare dso_local %struct.mbuf* @STAILQ_LAST(i32*, i32, i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @mbuf_length(%struct.mbuf*) #1

declare dso_local i32 @nc_memcpy(i64*, i32*, i64) #1

declare dso_local i32 @log_warn(i8*, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
