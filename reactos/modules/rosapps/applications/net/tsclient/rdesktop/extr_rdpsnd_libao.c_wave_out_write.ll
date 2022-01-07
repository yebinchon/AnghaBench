; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_libao.c_wave_out_write.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_libao.c_wave_out_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_packet = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@packet_queue = common dso_local global %struct.audio_packet* null, align 8
@queue_hi = common dso_local global i64 0, align 8
@MAX_QUEUE = common dso_local global i64 0, align 8
@queue_lo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No space to queue audio packet\0A\00", align 1
@This = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wave_out_write(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_packet*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.audio_packet*, %struct.audio_packet** @packet_queue, align 8
  %10 = load i64, i64* @queue_hi, align 8
  %11 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %9, i64 %10
  store %struct.audio_packet* %11, %struct.audio_packet** %7, align 8
  %12 = load i64, i64* @queue_hi, align 8
  %13 = add i64 %12, 1
  %14 = load i64, i64* @MAX_QUEUE, align 8
  %15 = urem i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @queue_lo, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %53

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  store i64 %24, i64* @queue_hi, align 8
  %25 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8
  %26 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = bitcast %struct.TYPE_4__* %26 to i8*
  %29 = bitcast %struct.TYPE_4__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 12, i1 false)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8
  %32 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8
  %35 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8
  %37 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 4
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @malloc(i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @This, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %22
  %52 = call i32 (...) @wave_out_play()
  br label %53

53:                                               ; preds = %20, %51, %22
  ret void
}

declare dso_local i32 @error(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @wave_out_play(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
