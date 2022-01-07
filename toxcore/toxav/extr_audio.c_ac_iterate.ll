; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_ac_iterate.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_ac_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 (i32, i32, i32*, i32, i32, i32, i32)* }
%struct.RTPMessage = type { i64, i32* }

@.str = private unnamed_addr constant [16 x i8] c"OPUS correction\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to reconfigure decoder!\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Decoding error: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ac_iterate(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [11520 x i32], align 16
  %4 = alloca %struct.RTPMessage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %150

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pthread_mutex_lock(i32 %13)
  br label %15

15:                                               ; preds = %78, %10
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.RTPMessage* @jbuf_read(i32 %18, i32* %5)
  store %struct.RTPMessage* %19, %struct.RTPMessage** %4, align 8
  %20 = icmp ne %struct.RTPMessage* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 2
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i1 [ true, %15 ], [ %23, %21 ]
  br i1 %25, label %26, label %145

26:                                               ; preds = %24
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pthread_mutex_unlock(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = sdiv i32 %41, 1000
  store i32 %42, i32* %6, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [11520 x i32], [11520 x i32]* %3, i64 0, i64 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @opus_decode(i32 %45, i32* null, i64 0, i32* %46, i32 %47, i32 1)
  store i32 %48, i32* %5, align 4
  br label %98

49:                                               ; preds = %26
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.RTPMessage*, %struct.RTPMessage** %4, align 8
  %53 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @memcpy(i32* %51, i32* %54, i32 4)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ntohl(i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.RTPMessage*, %struct.RTPMessage** %4, align 8
  %63 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = call i32 @opus_packet_get_nb_channels(i32* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @reconfigure_audio_decoder(%struct.TYPE_6__* %69, i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %49
  %79 = call i32 (i8*, ...) @LOGGER_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.RTPMessage*, %struct.RTPMessage** %4, align 8
  %81 = call i32 @free(%struct.RTPMessage* %80)
  br label %15

82:                                               ; preds = %49
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.RTPMessage*, %struct.RTPMessage** %4, align 8
  %87 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load %struct.RTPMessage*, %struct.RTPMessage** %4, align 8
  %91 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 4
  %94 = getelementptr inbounds [11520 x i32], [11520 x i32]* %3, i64 0, i64 0
  %95 = call i32 @opus_decode(i32 %85, i32* %89, i64 %93, i32* %94, i32 5760, i32 0)
  store i32 %95, i32* %5, align 4
  %96 = load %struct.RTPMessage*, %struct.RTPMessage** %4, align 8
  %97 = call i32 @free(%struct.RTPMessage* %96)
  br label %98

98:                                               ; preds = %82, %33
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @opus_strerror(i32 %102)
  %104 = call i32 (i8*, ...) @LOGGER_WARNING(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %144

105:                                              ; preds = %98
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32 (i32, i32, i32*, i32, i32, i32, i32)*, i32 (i32, i32, i32*, i32, i32, i32, i32)** %108, align 8
  %110 = icmp ne i32 (i32, i32, i32*, i32, i32, i32, i32)* %109, null
  br i1 %110, label %111, label %143

111:                                              ; preds = %105
  %112 = load i32, i32* %5, align 4
  %113 = mul nsw i32 %112, 1000
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %113, %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32 (i32, i32, i32*, i32, i32, i32, i32)*, i32 (i32, i32, i32*, i32, i32, i32, i32)** %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [11520 x i32], [11520 x i32]* %3, i64 0, i64 0
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %123(i32 %126, i32 %129, i32* %130, i32 %131, i32 %134, i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %111, %105
  br label %144

144:                                              ; preds = %143, %101
  br label %150

145:                                              ; preds = %24
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @pthread_mutex_unlock(i32 %148)
  br label %150

150:                                              ; preds = %145, %144, %9
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32) #1

declare dso_local %struct.RTPMessage* @jbuf_read(i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

declare dso_local i32 @LOGGER_DEBUG(i8*) #1

declare dso_local i32 @opus_decode(i32, i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @opus_packet_get_nb_channels(i32*) #1

declare dso_local i32 @reconfigure_audio_decoder(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @LOGGER_WARNING(i8*, ...) #1

declare dso_local i32 @free(%struct.RTPMessage*) #1

declare dso_local i32 @opus_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
