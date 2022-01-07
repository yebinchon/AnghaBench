; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_handle_auth_req.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_handle_auth_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.msg = type { i32, i64 }
%struct.conn = type { i32, i64, i32, i64 }
%struct.server_pool = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.keypos = type { i32*, i32* }

@rsp_no_password = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@rsp_ok = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@rsp_invalid_password = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg*, %struct.msg*)* @redis_handle_auth_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_handle_auth_req(%struct.msg* %0, %struct.msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg*, align 8
  %5 = alloca %struct.msg*, align 8
  %6 = alloca %struct.conn*, align 8
  %7 = alloca %struct.server_pool*, align 8
  %8 = alloca %struct.keypos*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.msg* %0, %struct.msg** %4, align 8
  store %struct.msg* %1, %struct.msg** %5, align 8
  %12 = load %struct.msg*, %struct.msg** %5, align 8
  %13 = getelementptr inbounds %struct.msg, %struct.msg* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.conn*
  store %struct.conn* %15, %struct.conn** %6, align 8
  %16 = load %struct.conn*, %struct.conn** %6, align 8
  %17 = getelementptr inbounds %struct.conn, %struct.conn* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.conn*, %struct.conn** %6, align 8
  %22 = getelementptr inbounds %struct.conn, %struct.conn* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %2
  %27 = phi i1 [ false, %2 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.conn*, %struct.conn** %6, align 8
  %31 = getelementptr inbounds %struct.conn, %struct.conn* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.server_pool*
  store %struct.server_pool* %33, %struct.server_pool** %7, align 8
  %34 = load %struct.server_pool*, %struct.server_pool** %7, align 8
  %35 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = load %struct.msg*, %struct.msg** %5, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rsp_no_password, i32 0, i32 1), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rsp_no_password, i32 0, i32 0), align 4
  %42 = call i32 @msg_append(%struct.msg* %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %96

43:                                               ; preds = %26
  %44 = load %struct.msg*, %struct.msg** %4, align 8
  %45 = getelementptr inbounds %struct.msg, %struct.msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.keypos* @array_get(i32 %46, i32 0)
  store %struct.keypos* %47, %struct.keypos** %8, align 8
  %48 = load %struct.keypos*, %struct.keypos** %8, align 8
  %49 = getelementptr inbounds %struct.keypos, %struct.keypos* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %9, align 8
  %51 = load %struct.keypos*, %struct.keypos** %8, align 8
  %52 = getelementptr inbounds %struct.keypos, %struct.keypos* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.keypos*, %struct.keypos** %8, align 8
  %55 = getelementptr inbounds %struct.keypos, %struct.keypos* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = ptrtoint i32* %53 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.server_pool*, %struct.server_pool** %7, align 8
  %63 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %43
  %68 = load %struct.server_pool*, %struct.server_pool** %7, align 8
  %69 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @memcmp(i32 %71, i32* %72, i64 %73)
  %75 = icmp eq i64 %74, 0
  br label %76

76:                                               ; preds = %67, %43
  %77 = phi i1 [ false, %43 ], [ %75, %67 ]
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.conn*, %struct.conn** %6, align 8
  %84 = getelementptr inbounds %struct.conn, %struct.conn* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.msg*, %struct.msg** %5, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rsp_ok, i32 0, i32 1), align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rsp_ok, i32 0, i32 0), align 4
  %88 = call i32 @msg_append(%struct.msg* %85, i32 %86, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %96

89:                                               ; preds = %76
  %90 = load %struct.conn*, %struct.conn** %6, align 8
  %91 = getelementptr inbounds %struct.conn, %struct.conn* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.msg*, %struct.msg** %5, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rsp_invalid_password, i32 0, i32 1), align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rsp_invalid_password, i32 0, i32 0), align 4
  %95 = call i32 @msg_append(%struct.msg* %92, i32 %93, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %89, %82, %38
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @msg_append(%struct.msg*, i32, i32) #1

declare dso_local %struct.keypos* @array_get(i32, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
