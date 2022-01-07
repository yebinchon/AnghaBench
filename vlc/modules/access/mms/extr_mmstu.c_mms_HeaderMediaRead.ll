; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_HeaderMediaRead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_HeaderMediaRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@MMS_RETRY_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot receive header (%d/%d)\00", align 1
@MMS_PACKET_ANY = common dso_local global i32 0, align 4
@MMS_PACKET_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"socket closed by server\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"end of media stream\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"reinitialization needed --> unsupported\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot receive %s (aborting)\00", align 1
@MMS_PACKET_HEADER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"media data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @mms_HeaderMediaRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms_HeaderMediaRead(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %65, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MMS_RETRY_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i32 @mms_ReceivePacket(%struct.TYPE_7__* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MMS_RETRY_MAX, align 4
  %27 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Warn(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %65

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MMS_PACKET_ANY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %3, align 4
  br label %76

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MMS_PACKET_CMD, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %61 [
    i32 3, label %46
    i32 30, label %51
    i32 32, label %56
  ]

46:                                               ; preds = %42
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Warn(%struct.TYPE_7__* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  store i32 -1, i32* %3, align 4
  br label %76

51:                                               ; preds = %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Warn(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  store i32 -1, i32* %3, align 4
  br label %76

56:                                               ; preds = %42
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  store i32 -1, i32* %3, align 4
  br label %76

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %38
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %21
  br label %12

66:                                               ; preds = %12
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @MMS_PACKET_HEADER, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)
  %73 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  store i32 -1, i32* %3, align 4
  br label %76

76:                                               ; preds = %66, %56, %51, %46, %36
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @mms_ReceivePacket(%struct.TYPE_7__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
