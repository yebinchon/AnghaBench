; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_sd-bus.c_bus_start_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_sd-bus.c_bus_start_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @bus_start_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_start_address(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_17__* %6)
  br label %8

8:                                                ; preds = %106, %1
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = call i32 @bus_close_io_fds(%struct.TYPE_17__* %9)
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = call i32 @bus_close_inotify_fd(%struct.TYPE_17__* %11)
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = call i32 @bus_kill_exec(%struct.TYPE_17__* %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = call i32 @bus_socket_exec(%struct.TYPE_17__* %20)
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27, %22
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_UNSPEC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = call i32 @bus_container_connect_socket(%struct.TYPE_17__* %41)
  store i32 %42, i32* %4, align 4
  br label %56

43:                                               ; preds = %32, %27
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AF_UNSPEC, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = call i32 @bus_socket_connect(%struct.TYPE_17__* %52)
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %43
  br label %81

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %19
  %58 = load i32, i32* %4, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = call i32 @bus_attach_io_events(%struct.TYPE_17__* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %107

67:                                               ; preds = %60
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = call i32 @bus_attach_inotify_event(%struct.TYPE_17__* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %107

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %107

76:                                               ; preds = %57
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 0, %77
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %54
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = call i32 @bus_parse_next_address(%struct.TYPE_17__* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %107

88:                                               ; preds = %81
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 0, %99
  br label %104

101:                                              ; preds = %91
  %102 = load i32, i32* @ECONNREFUSED, align 4
  %103 = sub nsw i32 0, %102
  br label %104

104:                                              ; preds = %101, %96
  %105 = phi i32 [ %100, %96 ], [ %103, %101 ]
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %88
  br label %8

107:                                              ; preds = %104, %86, %74, %72, %65
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local i32 @bus_close_io_fds(%struct.TYPE_17__*) #1

declare dso_local i32 @bus_close_inotify_fd(%struct.TYPE_17__*) #1

declare dso_local i32 @bus_kill_exec(%struct.TYPE_17__*) #1

declare dso_local i32 @bus_socket_exec(%struct.TYPE_17__*) #1

declare dso_local i32 @bus_container_connect_socket(%struct.TYPE_17__*) #1

declare dso_local i32 @bus_socket_connect(%struct.TYPE_17__*) #1

declare dso_local i32 @bus_attach_io_events(%struct.TYPE_17__*) #1

declare dso_local i32 @bus_attach_inotify_event(%struct.TYPE_17__*) #1

declare dso_local i32 @bus_parse_next_address(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
