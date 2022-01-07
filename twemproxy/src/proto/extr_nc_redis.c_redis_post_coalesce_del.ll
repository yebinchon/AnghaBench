; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_post_coalesce_del.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_post_coalesce_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i32, i32, %struct.msg* }

@.str = private unnamed_addr constant [6 x i8] c":%d\0D\0A\00", align 1
@NC_OK = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redis_post_coalesce_del(%struct.msg* %0) #0 {
  %2 = alloca %struct.msg*, align 8
  %3 = alloca %struct.msg*, align 8
  %4 = alloca i64, align 8
  store %struct.msg* %0, %struct.msg** %2, align 8
  %5 = load %struct.msg*, %struct.msg** %2, align 8
  %6 = getelementptr inbounds %struct.msg, %struct.msg* %5, i32 0, i32 3
  %7 = load %struct.msg*, %struct.msg** %6, align 8
  store %struct.msg* %7, %struct.msg** %3, align 8
  %8 = load %struct.msg*, %struct.msg** %3, align 8
  %9 = load %struct.msg*, %struct.msg** %2, align 8
  %10 = getelementptr inbounds %struct.msg, %struct.msg* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @msg_prepend_format(%struct.msg* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @NC_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.msg*, %struct.msg** %3, align 8
  %18 = getelementptr inbounds %struct.msg, %struct.msg* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @errno, align 4
  %20 = load %struct.msg*, %struct.msg** %3, align 8
  %21 = getelementptr inbounds %struct.msg, %struct.msg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %16, %1
  ret void
}

declare dso_local i64 @msg_prepend_format(%struct.msg*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
