; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sgi.c_wave_out_write.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sgi.c_wave_out_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_packet = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@packet_queue = common dso_local global %struct.audio_packet* null, align 8
@queue_hi = common dso_local global i64 0, align 8
@MAX_QUEUE = common dso_local global i64 0, align 8
@queue_lo = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
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
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %54

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  store i64 %25, i64* @queue_hi, align 8
  %26 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8
  %27 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = bitcast %struct.TYPE_4__* %27 to i8*
  %30 = bitcast %struct.TYPE_4__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8
  %33 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8
  %36 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.audio_packet*, %struct.audio_packet** %7, align 8
  %38 = getelementptr inbounds %struct.audio_packet, %struct.audio_packet* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @malloc(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @This, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %23
  %53 = call i32 (...) @wave_out_play()
  br label %54

54:                                               ; preds = %20, %52, %23
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

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
