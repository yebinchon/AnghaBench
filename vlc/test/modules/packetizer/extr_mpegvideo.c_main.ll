; ModuleID = '/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_mpegvideo.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_mpegvideo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.params_s = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }

@VLC_CODEC_MPGV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"block 500\00", align 1
@test_packetize = common dso_local global i32 0, align 4
@test_samples_raw_mpeg = common dso_local global i64 0, align 8
@test_samples_raw_mpeg_len = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"block 8\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"skip 1st Iframe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.params_s, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 (...) @test_init()
  %5 = call %struct.TYPE_4__* @libvlc_new(i32 0, i32* null)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %45

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 7
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @VLC_OBJECT(i32 %14)
  %16 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 6
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @VLC_CODEC_MPGV, align 4
  %18 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 5
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 2
  store i32 50, i32* %21, align 8
  %22 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 4
  store i32 500, i32* %23, align 8
  %24 = load i32, i32* @test_packetize, align 4
  %25 = load i64, i64* @test_samples_raw_mpeg, align 8
  %26 = load i64, i64* @test_samples_raw_mpeg_len, align 8
  %27 = call i32 @RUN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25, i64 %26, i32 0)
  %28 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 0
  store i32 60000, i32* %28, align 8
  %29 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 1
  store i32 1001, i32* %29, align 4
  %30 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 4
  store i32 8, i32* %30, align 8
  %31 = load i32, i32* @test_packetize, align 4
  %32 = load i64, i64* @test_samples_raw_mpeg, align 8
  %33 = load i64, i64* @test_samples_raw_mpeg_len, align 8
  %34 = call i32 @RUN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %32, i64 %33, i32 0)
  %35 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 2
  store i32 25, i32* %35, align 8
  %36 = getelementptr inbounds %struct.params_s, %struct.params_s* %3, i32 0, i32 4
  store i32 500, i32* %36, align 8
  %37 = load i32, i32* @test_packetize, align 4
  %38 = load i64, i64* @test_samples_raw_mpeg, align 8
  %39 = add nsw i64 %38, 100
  %40 = load i64, i64* @test_samples_raw_mpeg_len, align 8
  %41 = sub nsw i64 %40, 100
  %42 = call i32 @RUN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %37, i64 %39, i64 %41, i32 0)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = call i32 @libvlc_release(%struct.TYPE_4__* %43)
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %9, %8
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @test_init(...) #1

declare dso_local %struct.TYPE_4__* @libvlc_new(i32, i32*) #1

declare dso_local i32 @VLC_OBJECT(i32) #1

declare dso_local i32 @RUN(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @libvlc_release(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
