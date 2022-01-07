; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_reply.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.msg = type { i32, %struct.conn*, %struct.msg* }
%struct.conn = type { i32 }

@MSG_REQ_REDIS_AUTH = common dso_local global i32 0, align 4
@rsp_auth_required = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@rsp_pong = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@NC_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_reply(%struct.msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msg*, align 8
  %4 = alloca %struct.conn*, align 8
  %5 = alloca %struct.msg*, align 8
  store %struct.msg* %0, %struct.msg** %3, align 8
  %6 = load %struct.msg*, %struct.msg** %3, align 8
  %7 = getelementptr inbounds %struct.msg, %struct.msg* %6, i32 0, i32 2
  %8 = load %struct.msg*, %struct.msg** %7, align 8
  store %struct.msg* %8, %struct.msg** %5, align 8
  %9 = load %struct.msg*, %struct.msg** %5, align 8
  %10 = icmp ne %struct.msg* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.msg*, %struct.msg** %5, align 8
  %13 = getelementptr inbounds %struct.msg, %struct.msg* %12, i32 0, i32 1
  %14 = load %struct.conn*, %struct.conn** %13, align 8
  %15 = icmp ne %struct.conn* %14, null
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i1 [ false, %1 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.msg*, %struct.msg** %5, align 8
  %21 = getelementptr inbounds %struct.msg, %struct.msg* %20, i32 0, i32 1
  %22 = load %struct.conn*, %struct.conn** %21, align 8
  store %struct.conn* %22, %struct.conn** %4, align 8
  %23 = load %struct.msg*, %struct.msg** %3, align 8
  %24 = getelementptr inbounds %struct.msg, %struct.msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MSG_REQ_REDIS_AUTH, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load %struct.msg*, %struct.msg** %3, align 8
  %30 = load %struct.msg*, %struct.msg** %5, align 8
  %31 = call i32 @redis_handle_auth_req(%struct.msg* %29, %struct.msg* %30)
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %16
  %33 = load %struct.conn*, %struct.conn** %4, align 8
  %34 = call i32 @conn_authenticated(%struct.conn* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.msg*, %struct.msg** %5, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rsp_auth_required, i32 0, i32 1), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rsp_auth_required, i32 0, i32 0), align 4
  %40 = call i32 @msg_append(%struct.msg* %37, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %32
  %42 = load %struct.msg*, %struct.msg** %3, align 8
  %43 = getelementptr inbounds %struct.msg, %struct.msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %50 [
    i32 128, label %45
  ]

45:                                               ; preds = %41
  %46 = load %struct.msg*, %struct.msg** %5, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rsp_pong, i32 0, i32 1), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rsp_pong, i32 0, i32 0), align 4
  %49 = call i32 @msg_append(%struct.msg* %46, i32 %47, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %41
  %51 = call i32 (...) @NOT_REACHED()
  %52 = load i32, i32* @NC_ERROR, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %45, %36, %28
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @redis_handle_auth_req(%struct.msg*, %struct.msg*) #1

declare dso_local i32 @conn_authenticated(%struct.conn*) #1

declare dso_local i32 @msg_append(%struct.msg*, i32, i32) #1

declare dso_local i32 @NOT_REACHED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
