; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_handle_msi_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_handle_msi_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Got msi message\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Error parsing message\00", align 1
@msi_EInvalidMessage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Successfully parsed message\00", align 1
@msi_EStrayMessage = common dso_local global i32 0, align 4
@msi_ESystem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_msi_packet(i32* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %11, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @msg_parse_in(%struct.TYPE_12__* %12, i32* %17, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @msi_EInvalidMessage, align 4
  %26 = call i32 @send_error(i32* %23, i32 %24, i32 %25)
  br label %87

27:                                               ; preds = %5
  %28 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pthread_mutex_lock(i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32* @get_call(%struct.TYPE_11__* %34, i32 %35)
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 130
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @msi_EStrayMessage, align 4
  %48 = call i32 @send_error(i32* %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pthread_mutex_unlock(i32 %51)
  br label %87

53:                                               ; preds = %39
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32* @new_call(%struct.TYPE_11__* %54, i32 %55)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @msi_ESystem, align 4
  %63 = call i32 @send_error(i32* %60, i32 %61, i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pthread_mutex_unlock(i32 %66)
  br label %87

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %29
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %82 [
    i32 130, label %73
    i32 128, label %76
    i32 129, label %79
  ]

73:                                               ; preds = %69
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @handle_init(i32* %74, %struct.TYPE_12__* %12)
  br label %82

76:                                               ; preds = %69
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @handle_push(i32* %77, %struct.TYPE_12__* %12)
  br label %82

79:                                               ; preds = %69
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @handle_pop(i32* %80, %struct.TYPE_12__* %12)
  br label %82

82:                                               ; preds = %69, %79, %76, %73
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pthread_mutex_unlock(i32 %85)
  br label %87

87:                                               ; preds = %82, %59, %44, %21
  ret void
}

declare dso_local i32 @LOGGER_DEBUG(i8*) #1

declare dso_local i32 @msg_parse_in(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @LOGGER_WARNING(i8*) #1

declare dso_local i32 @send_error(i32*, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32) #1

declare dso_local i32* @get_call(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

declare dso_local i32* @new_call(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @handle_init(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @handle_push(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @handle_pop(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
