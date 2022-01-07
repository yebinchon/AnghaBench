; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_bwcontroller.c_send_update.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_bwcontroller.c_send_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i64 }
%struct.BWCMessage = type { i8*, i8* }

@BWC_REFRESH_INTERVAL_MS = common dso_local global i64 0, align 8
@BWC_SEND_INTERVAL_MS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%p Sent update rcv: %u lost: %u\00", align 1
@BWC_PACKET_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"BWC send failed (len: %d)! std error: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_update(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [17 x i32], align 16
  %4 = alloca %struct.BWCMessage*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = call i64 (...) @current_time_monotonic()
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %5, %9
  %11 = load i64, i64* @BWC_REFRESH_INTERVAL_MS, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 10
  store i32 %18, i32* %16, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 10
  store i32 %23, i32* %21, align 4
  %24 = call i64 (...) @current_time_monotonic()
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  br label %93

28:                                               ; preds = %1
  %29 = call i64 (...) @current_time_monotonic()
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %29, %33
  %35 = load i64, i64* @BWC_SEND_INTERVAL_MS, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %92

37:                                               ; preds = %28
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %44, i32 %48, i32 %52)
  %54 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 0
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = bitcast i32* %55 to %struct.BWCMessage*
  store %struct.BWCMessage* %56, %struct.BWCMessage** %4, align 8
  %57 = load i32, i32* @BWC_PACKET_ID, align 4
  %58 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 0
  store i32 %57, i32* %58, align 16
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @htonl(i32 %62)
  %64 = load %struct.BWCMessage*, %struct.BWCMessage** %4, align 8
  %65 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @htonl(i32 %69)
  %71 = load %struct.BWCMessage*, %struct.BWCMessage** %4, align 8
  %72 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 0
  %80 = call i32 @send_custom_lossy_packet(i32 %75, i32 %78, i32* %79, i32 68)
  %81 = icmp eq i32 -1, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %43
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 @strerror(i32 %83)
  %85 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 68, i32 %84)
  br label %86

86:                                               ; preds = %82, %43
  br label %87

87:                                               ; preds = %86, %37
  %88 = call i64 (...) @current_time_monotonic()
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  store i64 %88, i64* %91, align 8
  br label %92

92:                                               ; preds = %87, %28
  br label %93

93:                                               ; preds = %92, %13
  ret void
}

declare dso_local i64 @current_time_monotonic(...) #1

declare dso_local i32 @LOGGER_DEBUG(i8*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @send_custom_lossy_packet(i32, i32, i32*, i32) #1

declare dso_local i32 @LOGGER_WARNING(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
