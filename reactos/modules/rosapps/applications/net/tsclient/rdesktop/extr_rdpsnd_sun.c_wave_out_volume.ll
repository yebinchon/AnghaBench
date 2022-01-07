; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sun.c_wave_out_volume.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sun.c_wave_out_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@AUDIO_MID_BALANCE = common dso_local global i32 0, align 4
@AUDIO_MAX_GAIN = common dso_local global i32 0, align 4
@This = common dso_local global %struct.TYPE_8__* null, align 8
@AUDIO_SETINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"AUDIO_SETINFO\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wave_out_volume(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32 @AUDIO_INITINFO(%struct.TYPE_7__* %5)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @AUDIO_MID_BALANCE, align 4
  %20 = sdiv i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i32, i32* @AUDIO_MID_BALANCE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AUDIO_MID_BALANCE, align 4
  %27 = sdiv i32 %25, %26
  %28 = sdiv i32 %24, %27
  %29 = sub nsw i32 %23, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @AUDIO_MID_BALANCE, align 4
  %33 = sdiv i32 %31, %32
  %34 = sdiv i32 %30, %33
  %35 = add nsw i32 %29, %34
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %16
  %37 = load i32, i32* @AUDIO_MID_BALANCE, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %22
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @AUDIO_MAX_GAIN, align 4
  %41 = sdiv i32 65536, %40
  %42 = sdiv i32 %39, %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @This, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AUDIO_SETINFO, align 4
  %52 = call i32 @ioctl(i32 %50, i32 %51, %struct.TYPE_7__* %5)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %38
  ret void
}

declare dso_local i32 @AUDIO_INITINFO(%struct.TYPE_7__*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
