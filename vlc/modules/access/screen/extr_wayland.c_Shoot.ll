; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/screen/extr_wayland.c_Shoot.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/screen/extr_wayland.c_Shoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl_shm_pool = type { i32 }
%struct.wl_buffer = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"buffer creation error: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"buffer allocation error: %s\00", align 1
@WL_SHM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_8__*)* @Shoot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @Shoot(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.wl_shm_pool*, align 8
  %10 = alloca %struct.wl_buffer*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = call i32 (...) @vlc_memfd()
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @vlc_strerror_c(i32 %20)
  %22 = call i32 @msg_Err(%struct.TYPE_8__* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %137

23:                                               ; preds = %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul i32 4, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = mul nsw i32 %28, %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %37, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @ftruncate(i32 %44, i64 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %23
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @vlc_strerror_c(i32 %50)
  %52 = call i32 @msg_Err(%struct.TYPE_8__* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %133

53:                                               ; preds = %23
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call %struct.wl_shm_pool* @wl_shm_create_pool(i32 %56, i32 %57, i64 %58)
  store %struct.wl_shm_pool* %59, %struct.wl_shm_pool** %9, align 8
  %60 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %9, align 8
  %61 = icmp eq %struct.wl_shm_pool* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %133

63:                                               ; preds = %53
  %64 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %9, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @WL_SHM_FORMAT_XRGB8888, align 4
  %73 = call %struct.wl_buffer* @wl_shm_pool_create_buffer(%struct.wl_shm_pool* %64, i32 0, i32 %67, i32 %70, i32 %71, i32 %72)
  store %struct.wl_buffer* %73, %struct.wl_buffer** %10, align 8
  %74 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %9, align 8
  %75 = call i32 @wl_shm_pool_destroy(%struct.wl_shm_pool* %74)
  %76 = load %struct.wl_buffer*, %struct.wl_buffer** %10, align 8
  %77 = icmp eq %struct.wl_buffer* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %133

79:                                               ; preds = %63
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  store i32 0, i32* %81, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.wl_buffer*, %struct.wl_buffer** %10, align 8
  %89 = call i32 @screenshooter_shoot(i32 %84, i32 %87, %struct.wl_buffer* %88)
  br label %90

90:                                               ; preds = %96, %79
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @wl_display_roundtrip(i32 %99)
  br label %90

101:                                              ; preds = %90
  %102 = load %struct.wl_buffer*, %struct.wl_buffer** %10, align 8
  %103 = call i32 @wl_buffer_destroy(%struct.wl_buffer* %102)
  %104 = load i32, i32* %5, align 4
  %105 = call %struct.TYPE_10__* @block_File(i32 %104, i32 1)
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %8, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = icmp ne %struct.TYPE_10__* %106, null
  br i1 %107, label %108, label %132

108:                                              ; preds = %101
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul i32 %111, %114
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %115, %118
  %120 = mul i32 %119, 4
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %11, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %108, %101
  br label %133

133:                                              ; preds = %132, %78, %62, %48
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @vlc_close(i32 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %136, %struct.TYPE_10__** %2, align 8
  br label %137

137:                                              ; preds = %133, %18
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %138
}

declare dso_local i32 @vlc_memfd(...) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i64 @ftruncate(i32, i64) #1

declare dso_local %struct.wl_shm_pool* @wl_shm_create_pool(i32, i32, i64) #1

declare dso_local %struct.wl_buffer* @wl_shm_pool_create_buffer(%struct.wl_shm_pool*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl_shm_pool_destroy(%struct.wl_shm_pool*) #1

declare dso_local i32 @screenshooter_shoot(i32, i32, %struct.wl_buffer*) #1

declare dso_local i32 @wl_display_roundtrip(i32) #1

declare dso_local i32 @wl_buffer_destroy(%struct.wl_buffer*) #1

declare dso_local %struct.TYPE_10__* @block_File(i32, i32) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
