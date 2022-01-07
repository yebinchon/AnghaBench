; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_varlink.c_varlink_process.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_varlink.c_varlink_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@VARLINK_DISCONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SD_EVENT_ON = common dso_local global i32 0, align 4
@SD_EVENT_OFF = common dso_local global i32 0, align 4
@VARLINK_PENDING_DISCONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @varlink_process(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  %9 = call i32 @assert_return(%struct.TYPE_17__* %6, i32 %8)
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VARLINK_DISCONNECTED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOTCONN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %122

18:                                               ; preds = %1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = call i32 @varlink_ref(%struct.TYPE_17__* %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = call i32 @varlink_write(%struct.TYPE_17__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %75

26:                                               ; preds = %18
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = call i32 @varlink_dispatch_reply(%struct.TYPE_17__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %75

32:                                               ; preds = %26
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = call i32 @varlink_dispatch_method(%struct.TYPE_17__* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %75

38:                                               ; preds = %32
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = call i32 @varlink_parse_message(%struct.TYPE_17__* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %75

44:                                               ; preds = %38
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = call i32 @varlink_read(%struct.TYPE_17__* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %75

50:                                               ; preds = %44
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = call i32 @varlink_test_disconnect(%struct.TYPE_17__* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %75

56:                                               ; preds = %50
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = call i32 @varlink_dispatch_disconnect(%struct.TYPE_17__* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %75

62:                                               ; preds = %56
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = call i32 @varlink_test_timeout(%struct.TYPE_17__* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %75

68:                                               ; preds = %62
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = call i32 @varlink_dispatch_timeout(%struct.TYPE_17__* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %75

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %73, %67, %61, %55, %49, %43, %37, %31, %25
  %76 = load i32, i32* %4, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @SD_EVENT_ON, align 4
  br label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @SD_EVENT_OFF, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = call i32 @sd_event_source_set_enabled(i64 %86, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %93
  br label %101

101:                                              ; preds = %100, %78, %75
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @VARLINK_STATE_IS_ALIVE(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = load i32, i32* @VARLINK_PENDING_DISCONNECT, align 4
  %113 = call i32 @varlink_set_state(%struct.TYPE_17__* %111, i32 %112)
  br label %117

114:                                              ; preds = %104
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %116 = call i32 @varlink_close(%struct.TYPE_17__* %115)
  br label %117

117:                                              ; preds = %114, %110
  br label %118

118:                                              ; preds = %117, %101
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %120 = call i32 @varlink_unref(%struct.TYPE_17__* %119)
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %15
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @assert_return(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @varlink_ref(%struct.TYPE_17__*) #1

declare dso_local i32 @varlink_write(%struct.TYPE_17__*) #1

declare dso_local i32 @varlink_dispatch_reply(%struct.TYPE_17__*) #1

declare dso_local i32 @varlink_dispatch_method(%struct.TYPE_17__*) #1

declare dso_local i32 @varlink_parse_message(%struct.TYPE_17__*) #1

declare dso_local i32 @varlink_read(%struct.TYPE_17__*) #1

declare dso_local i32 @varlink_test_disconnect(%struct.TYPE_17__*) #1

declare dso_local i32 @varlink_dispatch_disconnect(%struct.TYPE_17__*) #1

declare dso_local i32 @varlink_test_timeout(%struct.TYPE_17__*) #1

declare dso_local i32 @varlink_dispatch_timeout(%struct.TYPE_17__*) #1

declare dso_local i32 @sd_event_source_set_enabled(i64, i32) #1

declare dso_local i64 @VARLINK_STATE_IS_ALIVE(i64) #1

declare dso_local i32 @varlink_set_state(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @varlink_close(%struct.TYPE_17__*) #1

declare dso_local i32 @varlink_unref(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
