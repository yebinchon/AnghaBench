; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_add_auth.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_add_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, i32 (%struct.context*, %struct.conn*, %struct.msg*)*, i32, i32, %struct.server_pool*, i32, i32 }
%struct.msg = type { i32 }
%struct.server_pool = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@NC_ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"*2\0D\0A$4\0D\0AAUTH\0D\0A$%d\0D\0A%s\0D\0A\00", align 1
@NC_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @redis_add_auth(%struct.context* %0, %struct.conn* %1, %struct.conn* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.conn*, align 8
  %7 = alloca %struct.conn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.msg*, align 8
  %10 = alloca %struct.server_pool*, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.conn* %1, %struct.conn** %6, align 8
  store %struct.conn* %2, %struct.conn** %7, align 8
  %11 = load %struct.conn*, %struct.conn** %7, align 8
  %12 = getelementptr inbounds %struct.conn, %struct.conn* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.conn*, %struct.conn** %7, align 8
  %17 = getelementptr inbounds %struct.conn, %struct.conn* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ false, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.conn*, %struct.conn** %7, align 8
  %26 = call i32 @conn_authenticated(%struct.conn* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.conn*, %struct.conn** %6, align 8
  %32 = getelementptr inbounds %struct.conn, %struct.conn* %31, i32 0, i32 4
  %33 = load %struct.server_pool*, %struct.server_pool** %32, align 8
  store %struct.server_pool* %33, %struct.server_pool** %10, align 8
  %34 = load %struct.conn*, %struct.conn** %6, align 8
  %35 = load %struct.conn*, %struct.conn** %6, align 8
  %36 = getelementptr inbounds %struct.conn, %struct.conn* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.msg* @msg_get(%struct.conn* %34, i32 1, i32 %37)
  store %struct.msg* %38, %struct.msg** %9, align 8
  %39 = load %struct.msg*, %struct.msg** %9, align 8
  %40 = icmp eq %struct.msg* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %21
  %42 = load i32, i32* @errno, align 4
  %43 = load %struct.conn*, %struct.conn** %6, align 8
  %44 = getelementptr inbounds %struct.conn, %struct.conn* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* @NC_ENOMEM, align 8
  store i64 %45, i64* %4, align 8
  br label %77

46:                                               ; preds = %21
  %47 = load %struct.msg*, %struct.msg** %9, align 8
  %48 = load %struct.server_pool*, %struct.server_pool** %10, align 8
  %49 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.server_pool*, %struct.server_pool** %10, align 8
  %53 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @msg_prepend_format(%struct.msg* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @NC_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load %struct.msg*, %struct.msg** %9, align 8
  %62 = call i32 @msg_put(%struct.msg* %61)
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %4, align 8
  br label %77

64:                                               ; preds = %46
  %65 = load %struct.msg*, %struct.msg** %9, align 8
  %66 = getelementptr inbounds %struct.msg, %struct.msg* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %struct.conn*, %struct.conn** %7, align 8
  %68 = getelementptr inbounds %struct.conn, %struct.conn* %67, i32 0, i32 1
  %69 = load i32 (%struct.context*, %struct.conn*, %struct.msg*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*)** %68, align 8
  %70 = load %struct.context*, %struct.context** %5, align 8
  %71 = load %struct.conn*, %struct.conn** %7, align 8
  %72 = load %struct.msg*, %struct.msg** %9, align 8
  %73 = call i32 %69(%struct.context* %70, %struct.conn* %71, %struct.msg* %72)
  %74 = load %struct.conn*, %struct.conn** %7, align 8
  %75 = getelementptr inbounds %struct.conn, %struct.conn* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i64, i64* @NC_OK, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %64, %60, %41
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @conn_authenticated(%struct.conn*) #1

declare dso_local %struct.msg* @msg_get(%struct.conn*, i32, i32) #1

declare dso_local i64 @msg_prepend_format(%struct.msg*, i8*, i32, i32) #1

declare dso_local i32 @msg_put(%struct.msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
