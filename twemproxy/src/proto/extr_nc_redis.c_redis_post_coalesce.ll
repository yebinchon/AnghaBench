; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_post_coalesce.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_post_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i64, i64, %struct.msg*, i64, %struct.msg* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redis_post_coalesce(%struct.msg* %0) #0 {
  %2 = alloca %struct.msg*, align 8
  %3 = alloca %struct.msg*, align 8
  store %struct.msg* %0, %struct.msg** %2, align 8
  %4 = load %struct.msg*, %struct.msg** %2, align 8
  %5 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 5
  %6 = load %struct.msg*, %struct.msg** %5, align 8
  store %struct.msg* %6, %struct.msg** %3, align 8
  %7 = load %struct.msg*, %struct.msg** %3, align 8
  %8 = getelementptr inbounds %struct.msg, %struct.msg* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.msg*, %struct.msg** %2, align 8
  %15 = getelementptr inbounds %struct.msg, %struct.msg* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.msg*, %struct.msg** %2, align 8
  %20 = getelementptr inbounds %struct.msg, %struct.msg* %19, i32 0, i32 3
  %21 = load %struct.msg*, %struct.msg** %20, align 8
  %22 = load %struct.msg*, %struct.msg** %2, align 8
  %23 = icmp eq %struct.msg* %21, %22
  br label %24

24:                                               ; preds = %18, %1
  %25 = phi i1 [ false, %1 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.msg*, %struct.msg** %2, align 8
  %29 = getelementptr inbounds %struct.msg, %struct.msg* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load %struct.msg*, %struct.msg** %2, align 8
  %34 = getelementptr inbounds %struct.msg, %struct.msg* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %24
  br label %50

38:                                               ; preds = %32
  %39 = load %struct.msg*, %struct.msg** %2, align 8
  %40 = getelementptr inbounds %struct.msg, %struct.msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %48 [
    i32 129, label %42
    i32 130, label %44
    i32 128, label %46
  ]

42:                                               ; preds = %38
  %43 = load %struct.msg*, %struct.msg** %2, align 8
  call void @redis_post_coalesce_mget(%struct.msg* %43)
  br label %50

44:                                               ; preds = %38
  %45 = load %struct.msg*, %struct.msg** %2, align 8
  call void @redis_post_coalesce_del(%struct.msg* %45)
  br label %50

46:                                               ; preds = %38
  %47 = load %struct.msg*, %struct.msg** %2, align 8
  call void @redis_post_coalesce_mset(%struct.msg* %47)
  br label %50

48:                                               ; preds = %38
  %49 = call i32 (...) @NOT_REACHED()
  br label %50

50:                                               ; preds = %37, %42, %44, %46, %48
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local void @redis_post_coalesce_mget(%struct.msg*) #1

declare dso_local void @redis_post_coalesce_del(%struct.msg*) #1

declare dso_local void @redis_post_coalesce_mset(%struct.msg*) #1

declare dso_local i32 @NOT_REACHED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
