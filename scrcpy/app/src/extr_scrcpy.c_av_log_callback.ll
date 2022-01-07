; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_scrcpy.c_av_log_callback.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_scrcpy.c_av_log_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Could not allocate string\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[FFmpeg] \00", align 1
@SDL_LOG_CATEGORY_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @av_log_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @av_log_callback(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @sdl_priority_from_av_level(i32 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %39

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 10
  %20 = call i8* @SDL_malloc(i64 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 @LOGC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %39

25:                                               ; preds = %16
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 9
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strcpy(i8* %29, i8* %30)
  %32 = load i32, i32* @SDL_LOG_CATEGORY_VIDEO, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @SDL_LogMessageV(i32 %32, i64 %33, i8* %34, i32 %35)
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @SDL_free(i8* %37)
  br label %39

39:                                               ; preds = %25, %23, %15
  ret void
}

declare dso_local i64 @sdl_priority_from_av_level(i32) #1

declare dso_local i8* @SDL_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @LOGC(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @SDL_LogMessageV(i32, i64, i8*, i32) #1

declare dso_local i32 @SDL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
