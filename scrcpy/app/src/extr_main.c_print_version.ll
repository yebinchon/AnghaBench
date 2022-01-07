; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_main.c_print_version.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_main.c_print_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"scrcpy %s\0A\0A\00", align 1
@SCRCPY_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"dependencies:\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" - SDL %d.%d.%d\0A\00", align 1
@SDL_MAJOR_VERSION = common dso_local global i32 0, align 4
@SDL_MINOR_VERSION = common dso_local global i32 0, align 4
@SDL_PATCHLEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c" - libavcodec %d.%d.%d\0A\00", align 1
@LIBAVCODEC_VERSION_MAJOR = common dso_local global i32 0, align 4
@LIBAVCODEC_VERSION_MINOR = common dso_local global i32 0, align 4
@LIBAVCODEC_VERSION_MICRO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c" - libavformat %d.%d.%d\0A\00", align 1
@LIBAVFORMAT_VERSION_MAJOR = common dso_local global i32 0, align 4
@LIBAVFORMAT_VERSION_MINOR = common dso_local global i32 0, align 4
@LIBAVFORMAT_VERSION_MICRO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c" - libavutil %d.%d.%d\0A\00", align 1
@LIBAVUTIL_VERSION_MAJOR = common dso_local global i32 0, align 4
@LIBAVUTIL_VERSION_MINOR = common dso_local global i32 0, align 4
@LIBAVUTIL_VERSION_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_version() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @SCRCPY_VERSION, align 8
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = load i32, i32* @SDL_MAJOR_VERSION, align 4
  %8 = load i32, i32* @SDL_MINOR_VERSION, align 4
  %9 = load i32, i32* @SDL_PATCHLEVEL, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* @LIBAVCODEC_VERSION_MAJOR, align 4
  %13 = load i32, i32* @LIBAVCODEC_VERSION_MINOR, align 4
  %14 = load i32, i32* @LIBAVCODEC_VERSION_MICRO, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* @LIBAVFORMAT_VERSION_MAJOR, align 4
  %18 = load i32, i32* @LIBAVFORMAT_VERSION_MINOR, align 4
  %19 = load i32, i32* @LIBAVFORMAT_VERSION_MICRO, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* @LIBAVUTIL_VERSION_MAJOR, align 4
  %23 = load i32, i32* @LIBAVUTIL_VERSION_MINOR, align 4
  %24 = load i32, i32* @LIBAVUTIL_VERSION_MICRO, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
