; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_msi_new.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_msi_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Could not init session on empty messenger!\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Allocation failed! Program might misbehave!\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to init mutex! Program might misbehave\00", align 1
@handle_msi_packet = common dso_local global i32 0, align 4
@on_peer_status = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"New msi session: %p \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @msi_new(i32* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %40

9:                                                ; preds = %1
  %10 = call %struct.TYPE_8__* @calloc(i32 16, i32 1)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %40

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @create_recursive_mutex(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = call i32 @free(%struct.TYPE_8__* %23)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %40

25:                                               ; preds = %15
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @handle_msi_packet, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 @m_callback_msi_packet(i32* %29, i32 %30, %struct.TYPE_8__* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @on_peer_status, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = call i32 @m_callback_connectionstatus_internal_av(i32* %33, i32 %34, %struct.TYPE_8__* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_8__* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %2, align 8
  br label %40

40:                                               ; preds = %25, %21, %13, %7
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %41
}

declare dso_local i32 @LOGGER_ERROR(i8*) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i64 @create_recursive_mutex(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @m_callback_msi_packet(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @m_callback_connectionstatus_internal_av(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @LOGGER_DEBUG(i8*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
