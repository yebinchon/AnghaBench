; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_toxav.c_toxav_new.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_toxav.c_toxav_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }

@TOXAV_ERR_NEW_OK = common dso_local global i64 0, align 8
@TOXAV_ERR_NEW_NULL = common dso_local global i64 0, align 8
@TOXAV_ERR_NEW_MULTIPLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Allocation failed!\00", align 1
@TOXAV_ERR_NEW_MALLOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Mutex creation failed!\00", align 1
@callback_invite = common dso_local global i32 0, align 4
@msi_OnInvite = common dso_local global i32 0, align 4
@callback_start = common dso_local global i32 0, align 4
@msi_OnStart = common dso_local global i32 0, align 4
@callback_end = common dso_local global i32 0, align 4
@msi_OnEnd = common dso_local global i32 0, align 4
@callback_error = common dso_local global i32 0, align 4
@msi_OnError = common dso_local global i32 0, align 4
@msi_OnPeerTimeout = common dso_local global i32 0, align 4
@callback_capabilites = common dso_local global i32 0, align 4
@msi_OnCapabilities = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @toxav_new(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i64, i64* @TOXAV_ERR_NEW_OK, align 8
  store i64 %7, i64* %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @TOXAV_ERR_NEW_NULL, align 8
  store i64 %11, i64* %5, align 8
  br label %101

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_10__*
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i64, i64* @TOXAV_ERR_NEW_MULTIPLE, align 8
  store i64 %19, i64* %5, align 8
  br label %101

20:                                               ; preds = %12
  %21 = call %struct.TYPE_9__* @calloc(i32 32, i32 1)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = icmp eq %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @TOXAV_ERR_NEW_MALLOC, align 8
  store i64 %26, i64* %5, align 8
  br label %101

27:                                               ; preds = %20
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @create_recursive_mutex(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* @TOXAV_ERR_NEW_MALLOC, align 8
  store i64 %35, i64* %5, align 8
  br label %101

36:                                               ; preds = %27
  %37 = load i32*, i32** %3, align 8
  %38 = bitcast i32* %37 to %struct.TYPE_10__*
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = call %struct.TYPE_11__* @msi_new(%struct.TYPE_10__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = icmp eq %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %36
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pthread_mutex_destroy(i32 %54)
  %56 = load i64, i64* @TOXAV_ERR_NEW_MALLOC, align 8
  store i64 %56, i64* %5, align 8
  br label %101

57:                                               ; preds = %36
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 200, i32* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i32, i32* @callback_invite, align 4
  %69 = load i32, i32* @msi_OnInvite, align 4
  %70 = call i32 @msi_register_callback(%struct.TYPE_11__* %67, i32 %68, i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load i32, i32* @callback_start, align 4
  %75 = load i32, i32* @msi_OnStart, align 4
  %76 = call i32 @msi_register_callback(%struct.TYPE_11__* %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* @callback_end, align 4
  %81 = load i32, i32* @msi_OnEnd, align 4
  %82 = call i32 @msi_register_callback(%struct.TYPE_11__* %79, i32 %80, i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load i32, i32* @callback_error, align 4
  %87 = load i32, i32* @msi_OnError, align 4
  %88 = call i32 @msi_register_callback(%struct.TYPE_11__* %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i32, i32* @callback_error, align 4
  %93 = load i32, i32* @msi_OnPeerTimeout, align 4
  %94 = call i32 @msi_register_callback(%struct.TYPE_11__* %91, i32 %92, i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load i32, i32* @callback_capabilites, align 4
  %99 = load i32, i32* @msi_OnCapabilities, align 4
  %100 = call i32 @msi_register_callback(%struct.TYPE_11__* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %57, %51, %33, %24, %18, %10
  %102 = load i64*, i64** %4, align 8
  %103 = icmp ne i64* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i64, i64* %5, align 8
  %106 = load i64*, i64** %4, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @TOXAV_ERR_NEW_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = call i32 @free(%struct.TYPE_9__* %112)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %114

114:                                              ; preds = %111, %107
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %115
}

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i32 @LOGGER_WARNING(i8*) #1

declare dso_local i64 @create_recursive_mutex(i32) #1

declare dso_local %struct.TYPE_11__* @msi_new(%struct.TYPE_10__*) #1

declare dso_local i32 @pthread_mutex_destroy(i32) #1

declare dso_local i32 @msi_register_callback(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
