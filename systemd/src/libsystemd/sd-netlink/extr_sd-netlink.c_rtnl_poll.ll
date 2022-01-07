; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_sd-netlink.c_rtnl_poll.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_sd-netlink.c_rtnl_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pollfd = type { i32, i32 }
%struct.timespec = type { i32 }

@USEC_INFINITY = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i64)* @rtnl_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_poll(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [1 x %struct.pollfd], align 4
  %9 = alloca %struct.timespec, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = bitcast [1 x %struct.pollfd]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load i64, i64* @USEC_INFINITY, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = call i32 @assert(%struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = call i32 @sd_netlink_get_events(%struct.TYPE_6__* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %97

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @POLLIN, align 4
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %12, align 4
  br label %56

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call i32 @sd_netlink_get_timeout(%struct.TYPE_6__* %33, i64* %13)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %97

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %44 = call i64 @now(i32 %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = sub nsw i64 %49, %50
  br label %53

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i64 [ %51, %48 ], [ 0, %52 ]
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %53, %39
  br label %56

56:                                               ; preds = %55, %28
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, -1
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %59
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %66, %62, %56
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %73 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %76 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %78 = load i64, i64* %10, align 8
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %84

81:                                               ; preds = %68
  %82 = load i64, i64* %10, align 8
  %83 = call i32* @timespec_store(%struct.timespec* %9, i64 %82)
  br label %84

84:                                               ; preds = %81, %80
  %85 = phi i32* [ null, %80 ], [ %83, %81 ]
  %86 = call i32 @ppoll(%struct.pollfd* %77, i32 1, i32* %85, i32* null)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @errno, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %97

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = icmp sgt i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %89, %37, %23
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.TYPE_6__*) #2

declare dso_local i32 @sd_netlink_get_events(%struct.TYPE_6__*) #2

declare dso_local i32 @sd_netlink_get_timeout(%struct.TYPE_6__*, i64*) #2

declare dso_local i64 @now(i32) #2

declare dso_local i32 @ppoll(%struct.pollfd*, i32, i32*, i32*) #2

declare dso_local i32* @timespec_store(%struct.timespec*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
