; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_bwcontroller.c_on_update.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_bwcontroller.c_on_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 (%struct.TYPE_6__*, i32, float, i32)*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.BWCMessage = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%p Got update from peer\00", align 1
@BWC_SEND_INTERVAL_MS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%p Rejecting extra update\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"recved: %u lost: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @on_update(%struct.TYPE_6__* %0, %struct.BWCMessage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.BWCMessage*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.BWCMessage* %1, %struct.BWCMessage** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = call i32 (i8*, ...) @LOGGER_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %6)
  %8 = call i64 (...) @current_time_monotonic()
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BWC_SEND_INTERVAL_MS, align 8
  %14 = add nsw i64 %12, %13
  %15 = icmp slt i64 %8, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call i32 (i8*, ...) @LOGGER_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %17)
  store i32 -1, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = call i64 (...) @current_time_monotonic()
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.BWCMessage*, %struct.BWCMessage** %5, align 8
  %25 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @ntohl(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.BWCMessage*, %struct.BWCMessage** %5, align 8
  %30 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.BWCMessage*, %struct.BWCMessage** %5, align 8
  %32 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @ntohl(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.BWCMessage*, %struct.BWCMessage** %5, align 8
  %37 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.BWCMessage*, %struct.BWCMessage** %5, align 8
  %39 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.BWCMessage*, %struct.BWCMessage** %5, align 8
  %42 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @LOGGER_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.BWCMessage*, %struct.BWCMessage** %5, align 8
  %46 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %19
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32 (%struct.TYPE_6__*, i32, float, i32)*, i32 (%struct.TYPE_6__*, i32, float, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.TYPE_6__*, i32, float, i32)* %52, null
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32 (%struct.TYPE_6__*, i32, float, i32)*, i32 (%struct.TYPE_6__*, i32, float, i32)** %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.BWCMessage*, %struct.BWCMessage** %5, align 8
  %63 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to float
  %66 = load %struct.BWCMessage*, %struct.BWCMessage** %5, align 8
  %67 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.BWCMessage*, %struct.BWCMessage** %5, align 8
  %70 = getelementptr inbounds %struct.BWCMessage, %struct.BWCMessage* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  %73 = sitofp i32 %72 to float
  %74 = fdiv float %65, %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %57(%struct.TYPE_6__* %58, i32 %61, float %74, i32 %77)
  br label %79

79:                                               ; preds = %54, %49, %19
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @LOGGER_DEBUG(i8*, ...) #1

declare dso_local i64 @current_time_monotonic(...) #1

declare dso_local i8* @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
