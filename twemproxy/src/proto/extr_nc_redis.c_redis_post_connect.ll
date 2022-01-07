; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_post_connect.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_post_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, i64, i32 }
%struct.server = type { %struct.TYPE_4__, %struct.server_pool* }
%struct.TYPE_4__ = type { i32 }
%struct.server_pool = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.msg = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"*2\0D\0A$6\0D\0ASELECT\0D\0A$%d\0D\0A%d\0D\0A\00", align 1
@NC_OK = common dso_local global i64 0, align 8
@MSG_REQ_REDIS_SELECT = common dso_local global i32 0, align 4
@MSG_PARSE_OK = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"sent 'SELECT %d' to %s | %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redis_post_connect(%struct.context* %0, %struct.conn* %1, %struct.server* %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.conn*, align 8
  %6 = alloca %struct.server*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.server_pool*, align 8
  %9 = alloca %struct.msg*, align 8
  %10 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.conn* %1, %struct.conn** %5, align 8
  store %struct.server* %2, %struct.server** %6, align 8
  %11 = load %struct.server*, %struct.server** %6, align 8
  %12 = getelementptr inbounds %struct.server, %struct.server* %11, i32 0, i32 1
  %13 = load %struct.server_pool*, %struct.server_pool** %12, align 8
  store %struct.server_pool* %13, %struct.server_pool** %8, align 8
  %14 = load %struct.conn*, %struct.conn** %5, align 8
  %15 = getelementptr inbounds %struct.conn, %struct.conn* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.conn*, %struct.conn** %5, align 8
  %20 = getelementptr inbounds %struct.conn, %struct.conn* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %3
  %24 = phi i1 [ false, %3 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.conn*, %struct.conn** %5, align 8
  %28 = getelementptr inbounds %struct.conn, %struct.conn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %32 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %103

36:                                               ; preds = %23
  %37 = load %struct.conn*, %struct.conn** %5, align 8
  %38 = load %struct.conn*, %struct.conn** %5, align 8
  %39 = getelementptr inbounds %struct.conn, %struct.conn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.msg* @msg_get(%struct.conn* %37, i32 1, i32 %40)
  store %struct.msg* %41, %struct.msg** %9, align 8
  %42 = load %struct.msg*, %struct.msg** %9, align 8
  %43 = icmp eq %struct.msg* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %103

45:                                               ; preds = %36
  %46 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %47 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 10
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %52 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @log10(i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = add nsw i32 %55, 1
  br label %58

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %50
  %59 = phi i32 [ %56, %50 ], [ 1, %57 ]
  store i32 %59, i32* %10, align 4
  %60 = load %struct.msg*, %struct.msg** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %63 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @msg_prepend_format(%struct.msg* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @NC_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.msg*, %struct.msg** %9, align 8
  %71 = call i32 @msg_put(%struct.msg* %70)
  br label %103

72:                                               ; preds = %58
  %73 = load i32, i32* @MSG_REQ_REDIS_SELECT, align 4
  %74 = load %struct.msg*, %struct.msg** %9, align 8
  %75 = getelementptr inbounds %struct.msg, %struct.msg* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @MSG_PARSE_OK, align 4
  %77 = load %struct.msg*, %struct.msg** %9, align 8
  %78 = getelementptr inbounds %struct.msg, %struct.msg* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.msg*, %struct.msg** %9, align 8
  %80 = getelementptr inbounds %struct.msg, %struct.msg* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.msg*, %struct.msg** %9, align 8
  %82 = getelementptr inbounds %struct.msg, %struct.msg* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load %struct.context*, %struct.context** %4, align 8
  %84 = load %struct.conn*, %struct.conn** %5, align 8
  %85 = load %struct.msg*, %struct.msg** %9, align 8
  %86 = call i32 @req_server_enqueue_imsgq_head(%struct.context* %83, %struct.conn* %84, %struct.msg* %85)
  %87 = load %struct.context*, %struct.context** %4, align 8
  %88 = load %struct.conn*, %struct.conn** %5, align 8
  %89 = call i32 @msg_send(%struct.context* %87, %struct.conn* %88)
  %90 = load i32, i32* @LOG_NOTICE, align 4
  %91 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %92 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %95 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.server*, %struct.server** %6, align 8
  %99 = getelementptr inbounds %struct.server, %struct.server* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @log_debug(i32 %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %72, %69, %44, %35
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.msg* @msg_get(%struct.conn*, i32, i32) #1

declare dso_local i64 @log10(i32) #1

declare dso_local i64 @msg_prepend_format(%struct.msg*, i8*, i32, i32) #1

declare dso_local i32 @msg_put(%struct.msg*) #1

declare dso_local i32 @req_server_enqueue_imsgq_head(%struct.context*, %struct.conn*, %struct.msg*) #1

declare dso_local i32 @msg_send(%struct.context*, %struct.conn*) #1

declare dso_local i32 @log_debug(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
