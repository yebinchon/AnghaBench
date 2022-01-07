; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstdecode.c_CloseDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstdecode.c_CloseDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"app src eos: %s\00", align 1
@GST_MESSAGE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got eos\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"pipeline may not close gracefully\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"no message, pipeline may not close gracefully\00", align 1
@GST_STATE_NULL = common dso_local global i32 0, align 4
@GST_STATE_CHANGE_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [69 x i8] c"failed to change the state to NULL,pipeline may not close gracefully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @CloseDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CloseDecoder(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @GST_APP_SRC_CAST(i64 %24)
  %26 = call i32 @gst_app_src_end_of_stream(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @gst_flow_get_name(i32 %28)
  %30 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Dbg(%struct.TYPE_8__* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @GST_MESSAGE_ERROR, align 4
  %35 = or i32 128, %34
  %36 = call i32* @gst_bus_timed_pop_filtered(i64 %33, i64 2000000000, i32 %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %19
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @GST_MESSAGE_TYPE(i32* %40)
  switch i32 %41, label %45 [
    i32 128, label %42
  ]

42:                                               ; preds = %39
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Dbg(%struct.TYPE_8__* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %54

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @default_msg_handler(%struct.TYPE_8__* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = call i32 @msg_Err(%struct.TYPE_8__* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %158

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @gst_message_unref(i32* %55)
  br label %60

57:                                               ; preds = %19
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = call i32 @msg_Warn(%struct.TYPE_8__* %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %73, %66
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = call i32* @gst_atomic_queue_pop(i64 %70)
  store i32* %71, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @gst_buffer_unref(i32* %74)
  br label %67

76:                                               ; preds = %67
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @gst_atomic_queue_unref(i64 %79)
  br label %81

81:                                               ; preds = %76, %61
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @GST_STATE_NULL, align 4
  %89 = call i64 @gst_element_set_state(i64 %87, i32 %88)
  %90 = load i64, i64* @GST_STATE_CHANGE_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = call i32 @msg_Err(%struct.TYPE_8__* %93, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %84, %81
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @gst_object_unref(i64 %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @gst_object_unref(i64 %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @gst_object_unref(i64 %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @gst_object_unref(i64 %133)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @gst_object_unref(i64 %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @gst_object_unref(i64 %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %157 = call i32 @free(%struct.TYPE_9__* %156)
  br label %158

158:                                              ; preds = %155, %50
  ret void
}

declare dso_local i32 @gst_app_src_end_of_stream(i32) #1

declare dso_local i32 @GST_APP_SRC_CAST(i64) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @gst_flow_get_name(i32) #1

declare dso_local i32* @gst_bus_timed_pop_filtered(i64, i64, i32) #1

declare dso_local i32 @GST_MESSAGE_TYPE(i32*) #1

declare dso_local i32 @default_msg_handler(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @gst_message_unref(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @gst_atomic_queue_pop(i64) #1

declare dso_local i32 @gst_buffer_unref(i32*) #1

declare dso_local i32 @gst_atomic_queue_unref(i64) #1

declare dso_local i64 @gst_element_set_state(i64, i32) #1

declare dso_local i32 @gst_object_unref(i64) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
