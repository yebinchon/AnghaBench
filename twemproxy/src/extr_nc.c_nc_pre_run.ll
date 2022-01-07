; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_pre_run.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_pre_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instance = type { i64, i32, i32, i32 }

@NC_OK = common dso_local global i64 0, align 8
@daemonize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.instance*)* @nc_pre_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nc_pre_run(%struct.instance* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.instance*, align 8
  %4 = alloca i64, align 8
  store %struct.instance* %0, %struct.instance** %3, align 8
  %5 = load %struct.instance*, %struct.instance** %3, align 8
  %6 = getelementptr inbounds %struct.instance, %struct.instance* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.instance*, %struct.instance** %3, align 8
  %9 = getelementptr inbounds %struct.instance, %struct.instance* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @log_init(i32 %7, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @NC_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %56

17:                                               ; preds = %1
  %18 = load i64, i64* @daemonize, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = call i64 @nc_daemonize(i32 1)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @NC_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %56

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %17
  %29 = call i32 (...) @getpid()
  %30 = load %struct.instance*, %struct.instance** %3, align 8
  %31 = getelementptr inbounds %struct.instance, %struct.instance* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = call i64 (...) @signal_init()
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @NC_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %2, align 8
  br label %56

38:                                               ; preds = %28
  %39 = load %struct.instance*, %struct.instance** %3, align 8
  %40 = getelementptr inbounds %struct.instance, %struct.instance* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.instance*, %struct.instance** %3, align 8
  %45 = call i64 @nc_create_pidfile(%struct.instance* %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @NC_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %56

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.instance*, %struct.instance** %3, align 8
  %54 = call i32 @nc_print_run(%struct.instance* %53)
  %55 = load i64, i64* @NC_OK, align 8
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %52, %49, %36, %25, %15
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local i64 @log_init(i32, i32) #1

declare dso_local i64 @nc_daemonize(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @signal_init(...) #1

declare dso_local i64 @nc_create_pidfile(%struct.instance*) #1

declare dso_local i32 @nc_print_run(%struct.instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
