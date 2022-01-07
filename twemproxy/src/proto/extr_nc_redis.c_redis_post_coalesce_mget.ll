; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_post_coalesce_mget.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_post_coalesce_mget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { %struct.TYPE_4__*, %struct.TYPE_3__**, i32, i64, %struct.msg* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.msg* }

@.str = private unnamed_addr constant [6 x i8] c"*%d\0D\0A\00", align 1
@NC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msg*)* @redis_post_coalesce_mget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redis_post_coalesce_mget(%struct.msg* %0) #0 {
  %2 = alloca %struct.msg*, align 8
  %3 = alloca %struct.msg*, align 8
  %4 = alloca %struct.msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.msg* %0, %struct.msg** %2, align 8
  %7 = load %struct.msg*, %struct.msg** %2, align 8
  %8 = getelementptr inbounds %struct.msg, %struct.msg* %7, i32 0, i32 4
  %9 = load %struct.msg*, %struct.msg** %8, align 8
  store %struct.msg* %9, %struct.msg** %3, align 8
  %10 = load %struct.msg*, %struct.msg** %3, align 8
  %11 = load %struct.msg*, %struct.msg** %2, align 8
  %12 = getelementptr inbounds %struct.msg, %struct.msg* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i64 @msg_prepend_format(%struct.msg* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @NC_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.msg*, %struct.msg** %3, align 8
  %21 = getelementptr inbounds %struct.msg, %struct.msg* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %64

24:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %61, %24
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.msg*, %struct.msg** %2, align 8
  %28 = getelementptr inbounds %struct.msg, %struct.msg* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @array_n(i32 %29)
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %25
  %33 = load %struct.msg*, %struct.msg** %2, align 8
  %34 = getelementptr inbounds %struct.msg, %struct.msg* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %35, i64 %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.msg*, %struct.msg** %39, align 8
  store %struct.msg* %40, %struct.msg** %4, align 8
  %41 = load %struct.msg*, %struct.msg** %4, align 8
  %42 = icmp eq %struct.msg* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.msg*, %struct.msg** %3, align 8
  %45 = getelementptr inbounds %struct.msg, %struct.msg* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %64

48:                                               ; preds = %32
  %49 = load %struct.msg*, %struct.msg** %3, align 8
  %50 = load %struct.msg*, %struct.msg** %4, align 8
  %51 = call i64 @redis_copy_bulk(%struct.msg* %49, %struct.msg* %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @NC_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.msg*, %struct.msg** %3, align 8
  %57 = getelementptr inbounds %struct.msg, %struct.msg* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %64

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %25

64:                                               ; preds = %19, %43, %55, %25
  ret void
}

declare dso_local i64 @msg_prepend_format(%struct.msg*, i8*, i64) #1

declare dso_local i64 @array_n(i32) #1

declare dso_local i64 @redis_copy_bulk(%struct.msg*, %struct.msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
