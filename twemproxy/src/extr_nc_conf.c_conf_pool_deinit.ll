; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_pool_deinit.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_pool_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_pool = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"deinit conf pool %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conf_pool*)* @conf_pool_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf_pool_deinit(%struct.conf_pool* %0) #0 {
  %2 = alloca %struct.conf_pool*, align 8
  store %struct.conf_pool* %0, %struct.conf_pool** %2, align 8
  %3 = load %struct.conf_pool*, %struct.conf_pool** %2, align 8
  %4 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %3, i32 0, i32 3
  %5 = call i32 @string_deinit(%struct.TYPE_4__* %4)
  %6 = load %struct.conf_pool*, %struct.conf_pool** %2, align 8
  %7 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = call i32 @string_deinit(%struct.TYPE_4__* %8)
  %10 = load %struct.conf_pool*, %struct.conf_pool** %2, align 8
  %11 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @string_deinit(%struct.TYPE_4__* %12)
  %14 = load %struct.conf_pool*, %struct.conf_pool** %2, align 8
  %15 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.conf_pool*, %struct.conf_pool** %2, align 8
  %21 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %20, i32 0, i32 1
  %22 = call i32 @string_deinit(%struct.TYPE_4__* %21)
  br label %23

23:                                               ; preds = %19, %1
  br label %24

24:                                               ; preds = %29, %23
  %25 = load %struct.conf_pool*, %struct.conf_pool** %2, align 8
  %26 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %25, i32 0, i32 0
  %27 = call i64 @array_n(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.conf_pool*, %struct.conf_pool** %2, align 8
  %31 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %30, i32 0, i32 0
  %32 = call i32 @array_pop(i32* %31)
  %33 = call i32 @conf_server_deinit(i32 %32)
  br label %24

34:                                               ; preds = %24
  %35 = load %struct.conf_pool*, %struct.conf_pool** %2, align 8
  %36 = getelementptr inbounds %struct.conf_pool, %struct.conf_pool* %35, i32 0, i32 0
  %37 = call i32 @array_deinit(i32* %36)
  %38 = load i32, i32* @LOG_VVERB, align 4
  %39 = load %struct.conf_pool*, %struct.conf_pool** %2, align 8
  %40 = call i32 @log_debug(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.conf_pool* %39)
  ret void
}

declare dso_local i32 @string_deinit(%struct.TYPE_4__*) #1

declare dso_local i64 @array_n(i32*) #1

declare dso_local i32 @conf_server_deinit(i32) #1

declare dso_local i32 @array_pop(i32*) #1

declare dso_local i32 @array_deinit(i32*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.conf_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
