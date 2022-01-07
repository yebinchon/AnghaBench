; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-ipv4ll.c_ipv4ll_on_acd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-ipv4ll.c_ipv4ll_on_acd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@SD_IPV4LL_EVENT_STOP = common dso_local global i32 0, align 4
@SD_IPV4LL_EVENT_BIND = common dso_local global i32 0, align 4
@SD_IPV4LL_EVENT_CONFLICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid IPv4ACD event.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv4ll_on_acd(%struct.TYPE_8__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %12 = call i32 @IPV4LL_DONT_DESTROY(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = call i32 @assert(%struct.TYPE_8__* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = call i32 @assert(%struct.TYPE_8__* %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %52 [
    i32 128, label %18
    i32 130, label %24
    i32 129, label %33
  ]

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = load i32, i32* @SD_IPV4LL_EVENT_STOP, align 4
  %21 = call i32 @ipv4ll_client_notify(%struct.TYPE_8__* %19, i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %54

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = load i32, i32* @SD_IPV4LL_EVENT_BIND, align 4
  %32 = call i32 @ipv4ll_client_notify(%struct.TYPE_8__* %30, i32 %31)
  br label %54

33:                                               ; preds = %3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = load i32, i32* @SD_IPV4LL_EVENT_CONFLICT, align 4
  %41 = call i32 @ipv4ll_client_notify(%struct.TYPE_8__* %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %51

44:                                               ; preds = %33
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = call i32 @sd_ipv4ll_restart(%struct.TYPE_8__* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %55

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %38
  br label %54

52:                                               ; preds = %3
  %53 = call i32 @assert_not_reached(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %51, %24, %18
  br label %59

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = load i32, i32* @SD_IPV4LL_EVENT_STOP, align 4
  %58 = call i32 @ipv4ll_client_notify(%struct.TYPE_8__* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %54
  ret void
}

declare dso_local i32 @IPV4LL_DONT_DESTROY(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @ipv4ll_client_notify(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sd_ipv4ll_restart(%struct.TYPE_8__*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
