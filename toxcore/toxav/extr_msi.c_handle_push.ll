; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_handle_push.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_handle_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Session: %p Handling 'push' friend: %d\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Session: %p Invalid capabilities on 'push'\00", align 1
@msi_EInvalidMessage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Friend is changing capabilities to: %u\00", align 1
@msi_OnCapabilities = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Friend answered our call\00", align 1
@msi_OnStart = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Ignoring invalid push\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_push(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_12__* %5)
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %9, i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @msi_EInvalidMessage, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %75

24:                                               ; preds = %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %74 [
    i32 131, label %28
    i32 128, label %56
    i32 130, label %72
    i32 129, label %72
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %28
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @LOGGER_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = load i32, i32* @msi_OnCapabilities, align 4
  %51 = call i32 @invoke_callback(%struct.TYPE_12__* %49, i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %75

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %28
  br label %74

56:                                               ; preds = %24
  %57 = call i32 (i8*, ...) @LOGGER_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 131, i32* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = load i32, i32* @msi_OnStart, align 4
  %68 = call i32 @invoke_callback(%struct.TYPE_12__* %66, i32 %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %75

71:                                               ; preds = %56
  br label %74

72:                                               ; preds = %24, %24
  %73 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %24, %72, %71, %55
  br label %90

75:                                               ; preds = %70, %53, %19
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @send_error(i32 %80, i32 %83, i32 %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = call i32 @kill_call(%struct.TYPE_12__* %88)
  br label %90

90:                                               ; preds = %75, %74
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @LOGGER_DEBUG(i8*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @LOGGER_WARNING(i8*) #1

declare dso_local i32 @LOGGER_INFO(i8*, ...) #1

declare dso_local i32 @invoke_callback(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @send_error(i32, i32, i32) #1

declare dso_local i32 @kill_call(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
