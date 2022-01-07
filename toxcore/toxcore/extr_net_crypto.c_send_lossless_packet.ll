; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_send_lossless_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_send_lossless_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@MAX_CRYPTO_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"send_data_packet failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64*, i32, i64)* @send_lossless_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_lossless_packet(i32* %0, i32 %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @MAX_CRYPTO_DATA_SIZE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %5
  store i32 -1, i32* %6, align 4
  br label %102

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.TYPE_9__* @get_crypto_connection(i32* %24, i32 %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %12, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %28 = icmp eq %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %102

30:                                               ; preds = %23
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @reset_max_speed_reached(i32* %31, i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 -1, i32* %6, align 4
  br label %102

42:                                               ; preds = %38, %30
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @memcpy(i32 %47, i64* %48, i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = call i32 @pthread_mutex_lock(i32* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = call i32 @add_data_end_of_buffer(i32* %55, %struct.TYPE_8__* %13)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = call i32 @pthread_mutex_unlock(i32* %58)
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  store i32 -1, i32* %6, align 4
  br label %102

63:                                               ; preds = %42
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %6, align 4
  br label %102

73:                                               ; preds = %66, %63
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i64*, i64** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i64 @send_data_packet_helper(i32* %74, i32 %75, i32 %79, i32 %80, i64* %81, i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %73
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %15, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @get_data_pointer(i32* %87, %struct.TYPE_8__** %15, i32 %88)
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = call i64 (...) @current_time_monotonic()
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %85
  br label %100

96:                                               ; preds = %73
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %95
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %71, %62, %41, %29, %22
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_9__* @get_crypto_connection(i32*, i32) #1

declare dso_local i32 @reset_max_speed_reached(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @add_data_end_of_buffer(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @send_data_packet_helper(i32*, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @get_data_pointer(i32*, %struct.TYPE_8__**, i32) #1

declare dso_local i64 @current_time_monotonic(...) #1

declare dso_local i32 @LOGGER_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
