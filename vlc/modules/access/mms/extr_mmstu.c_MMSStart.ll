; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_MMSStart.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_MMSStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"unknown answer (0x%x instead of 0x05)\00", align 1
@MMS_PACKET_MEDIA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"streaming started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @MMSStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMSStart(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %6, align 8
  %11 = call i32 @var_buffer_initwrite(%struct.TYPE_15__* %7, i32 0)
  %12 = call i32 @var_buffer_add64(%struct.TYPE_15__* %7, i32 0)
  %13 = call i32 @var_buffer_add32(%struct.TYPE_15__* %7, i32 -1)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @var_buffer_add32(%struct.TYPE_15__* %7, i32 %14)
  %16 = call i32 @var_buffer_add8(%struct.TYPE_15__* %7, i32 255)
  %17 = call i32 @var_buffer_add8(%struct.TYPE_15__* %7, i32 255)
  %18 = call i32 @var_buffer_add8(%struct.TYPE_15__* %7, i32 255)
  %19 = call i32 @var_buffer_add8(%struct.TYPE_15__* %7, i32 0)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @var_buffer_add32(%struct.TYPE_15__* %7, i32 %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mms_CommandSend(%struct.TYPE_16__* %24, i32 7, i32 %27, i32 131071, i32 %29, i32 %31)
  %33 = call i32 @var_buffer_free(%struct.TYPE_15__* %7)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = call i32 @mms_CommandRead(%struct.TYPE_16__* %34, i32 5, i32 0)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 5
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @msg_Err(%struct.TYPE_16__* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %3, align 4
  br label %55

46:                                               ; preds = %2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = load i32, i32* @MMS_PACKET_MEDIA, align 4
  %49 = call i64 @mms_HeaderMediaRead(%struct.TYPE_16__* %47, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = call i32 @msg_Dbg(%struct.TYPE_16__* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %51, %40
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @var_buffer_initwrite(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @var_buffer_add64(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @var_buffer_add32(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @var_buffer_add8(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @mms_CommandSend(%struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @var_buffer_free(%struct.TYPE_15__*) #1

declare dso_local i32 @mms_CommandRead(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i64 @mms_HeaderMediaRead(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
