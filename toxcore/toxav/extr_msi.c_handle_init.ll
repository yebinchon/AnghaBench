; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_handle_init.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_handle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Session: %p Handling 'init' friend: %d\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Session: %p Invalid capabilities on 'init'\00", align 1
@msi_EInvalidMessage = common dso_local global i32 0, align 4
@msi_CallRequested = common dso_local global i32 0, align 4
@msi_OnInvite = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Friend is recalling us\00", align 1
@requ_push = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Session: %p Invalid state on 'init'\00", align 1
@msi_EInvalidState = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_init(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_15__* %6)
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %10, i32 %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @msi_EInvalidMessage, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %71

25:                                               ; preds = %2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %65 [
    i32 128, label %29
    i32 129, label %45
  ]

29:                                               ; preds = %25
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @msi_CallRequested, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = load i32, i32* @msi_OnInvite, align 4
  %41 = call i32 @invoke_callback(%struct.TYPE_15__* %39, i32 %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %71

44:                                               ; preds = %29
  br label %70

45:                                               ; preds = %25
  %46 = call i32 @LOGGER_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @requ_push, align 4
  %48 = call i32 @msg_init(%struct.TYPE_14__* %5, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @send_message(i32 %60, i32 %63, %struct.TYPE_14__* %5)
  br label %70

65:                                               ; preds = %25
  %66 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @msi_EInvalidState, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %71

70:                                               ; preds = %45, %44
  br label %86

71:                                               ; preds = %65, %43, %20
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @send_error(i32 %76, i32 %79, i32 %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = call i32 @kill_call(%struct.TYPE_15__* %84)
  br label %86

86:                                               ; preds = %71, %70
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_15__*) #1

declare dso_local i32 @LOGGER_DEBUG(i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @LOGGER_WARNING(i8*) #1

declare dso_local i32 @invoke_callback(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @LOGGER_INFO(i8*) #1

declare dso_local i32 @msg_init(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @send_message(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @send_error(i32, i32, i32) #1

declare dso_local i32 @kill_call(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
