; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sgi.c_wave_out_open.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sgi.c_wave_out_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@AL_DEFAULT_OUTPUT = common dso_local global i32 0, align 4
@AL_GAIN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"wave_out_open: alGetParamInfo failed: %s\0A\00", align 1
@min_volume = common dso_local global i64 0, align 8
@max_volume = common dso_local global i64 0, align 8
@volume_range = common dso_local global i64 0, align 8
@queue_hi = common dso_local global i64 0, align 8
@queue_lo = common dso_local global i64 0, align 8
@audioconfig = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"wave_out_open: alNewConfig failed: %s\0A\00", align 1
@False = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"rdpsnd\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@output_port = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"wave_out_open: alOpenPort failed: %s\0A\00", align 1
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wave_out_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = load i32, i32* @AL_DEFAULT_OUTPUT, align 4
  %4 = load i32, i32* @AL_GAIN, align 4
  %5 = call i64 @alGetParamInfo(i32 %3, i32 %4, %struct.TYPE_7__* %2)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (...) @oserror()
  %10 = call i8* @alGetErrorString(i32 %9)
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %7, %0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @alFixedToDouble(i32 %15)
  store i64 %16, i64* @min_volume, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @alFixedToDouble(i32 %19)
  store i64 %20, i64* @max_volume, align 8
  %21 = load i64, i64* @max_volume, align 8
  %22 = load i64, i64* @min_volume, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* @volume_range, align 8
  store i64 0, i64* @queue_hi, align 8
  store i64 0, i64* @queue_lo, align 8
  %24 = call i64 (...) @alNewConfig()
  store i64 %24, i64* @audioconfig, align 8
  %25 = load i64, i64* @audioconfig, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %12
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (...) @oserror()
  %30 = call i8* @alGetErrorString(i32 %29)
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @False, align 4
  store i32 %32, i32* %1, align 4
  br label %45

33:                                               ; preds = %12
  %34 = call i64 @alOpenPort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i64 %34, i64* @output_port, align 8
  %35 = load i64, i64* @output_port, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (...) @oserror()
  %40 = call i8* @alGetErrorString(i32 %39)
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @False, align 4
  store i32 %42, i32* %1, align 4
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @True, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %43, %37, %27
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i64 @alGetParamInfo(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @alGetErrorString(i32) #1

declare dso_local i32 @oserror(...) #1

declare dso_local i64 @alFixedToDouble(i32) #1

declare dso_local i64 @alNewConfig(...) #1

declare dso_local i64 @alOpenPort(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
