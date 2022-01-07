; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_stream.c_stream_push_packet.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_stream.c_stream_push_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32, i32, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Could not grow packet\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not create packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream*, %struct.TYPE_8__*)* @stream_push_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_push_packet(%struct.stream* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.stream*, %struct.stream** %4, align 8
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %94

23:                                               ; preds = %20, %2
  %24 = load %struct.stream*, %struct.stream** %4, align 8
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.stream*, %struct.stream** %4, align 8
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load %struct.stream*, %struct.stream** %4, align 8
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @av_grow_packet(%struct.TYPE_8__* %34, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = call i32 @LOGE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

42:                                               ; preds = %28
  br label %56

43:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  %44 = load %struct.stream*, %struct.stream** %4, align 8
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @av_new_packet(%struct.TYPE_8__* %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i32 @LOGE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

53:                                               ; preds = %43
  %54 = load %struct.stream*, %struct.stream** %4, align 8
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %42
  %57 = load %struct.stream*, %struct.stream** %4, align 8
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %60, %61
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memcpy(i64 %62, i64 %65, i64 %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %56
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.stream*, %struct.stream** %4, align 8
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.stream*, %struct.stream** %4, align 8
  %83 = getelementptr inbounds %struct.stream, %struct.stream* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.stream*, %struct.stream** %4, align 8
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load %struct.stream*, %struct.stream** %4, align 8
  %92 = getelementptr inbounds %struct.stream, %struct.stream* %91, i32 0, i32 1
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %5, align 8
  br label %93

93:                                               ; preds = %72, %56
  br label %94

94:                                               ; preds = %93, %20
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load %struct.stream*, %struct.stream** %4, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = call i32 @process_config_packet(%struct.stream* %98, %struct.TYPE_8__* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %125

104:                                              ; preds = %97
  br label %124

105:                                              ; preds = %94
  %106 = load %struct.stream*, %struct.stream** %4, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = call i32 @stream_parse(%struct.stream* %106, %struct.TYPE_8__* %107)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.stream*, %struct.stream** %4, align 8
  %110 = getelementptr inbounds %struct.stream, %struct.stream* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load %struct.stream*, %struct.stream** %4, align 8
  %115 = getelementptr inbounds %struct.stream, %struct.stream* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load %struct.stream*, %struct.stream** %4, align 8
  %117 = getelementptr inbounds %struct.stream, %struct.stream* %116, i32 0, i32 1
  %118 = call i32 @av_packet_unref(%struct.TYPE_8__* %117)
  br label %119

119:                                              ; preds = %113, %105
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %125

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %104
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %122, %103, %51, %40
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @av_grow_packet(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @LOGE(i8*) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @process_config_packet(%struct.stream*, %struct.TYPE_8__*) #1

declare dso_local i32 @stream_parse(%struct.stream*, %struct.TYPE_8__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
