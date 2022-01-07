; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_shall_restart.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_shall_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"manual stop\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"prevented by exit status\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"forced by exit status\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"restart setting\00", align 1
@SERVICE_SUCCESS = common dso_local global i32 0, align 4
@SERVICE_FAILURE_EXIT_CODE = common dso_local global i32 0, align 4
@SERVICE_FAILURE_WATCHDOG = common dso_local global i32 0, align 4
@SERVICE_FAILURE_SIGNAL = common dso_local global i32 0, align 4
@SERVICE_FAILURE_CORE_DUMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown restart setting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8**)* @service_shall_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_shall_restart(%struct.TYPE_6__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_6__* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %3, align 4
  br label %91

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @exit_status_set_test(i32* %16, i32 %20, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  store i32 0, i32* %3, align 4
  br label %91

29:                                               ; preds = %14
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @exit_status_set_test(i32* %31, i32 %35, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %43, align 8
  store i32 1, i32* %3, align 4
  br label %91

44:                                               ; preds = %29
  %45 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %89 [
    i32 133, label %49
    i32 134, label %50
    i32 129, label %51
    i32 130, label %58
    i32 132, label %65
    i32 128, label %75
    i32 131, label %82
  ]

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %91

50:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %91

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SERVICE_SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %91

58:                                               ; preds = %44
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SERVICE_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %91

65:                                               ; preds = %44
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SERVICE_SUCCESS, align 4
  %70 = load i32, i32* @SERVICE_FAILURE_EXIT_CODE, align 4
  %71 = call i32 @IN_SET(i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %91

75:                                               ; preds = %44
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SERVICE_FAILURE_WATCHDOG, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %3, align 4
  br label %91

82:                                               ; preds = %44
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SERVICE_FAILURE_SIGNAL, align 4
  %87 = load i32, i32* @SERVICE_FAILURE_CORE_DUMP, align 4
  %88 = call i32 @IN_SET(i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %91

89:                                               ; preds = %44
  %90 = call i32 @assert_not_reached(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %12, %27, %42, %49, %50, %51, %58, %65, %75, %82, %89
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i64 @exit_status_set_test(i32*, i32, i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
