; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_placebo_utils.c_Log.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_placebo_utils.c_Log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_object_t = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @Log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Log(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vlc_object_t*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vlc_object_t*
  store %struct.vlc_object_t* %9, %struct.vlc_object_t** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %27 [
    i32 130, label %11
    i32 131, label %11
    i32 128, label %15
    i32 129, label %19
    i32 132, label %23
  ]

11:                                               ; preds = %3, %3
  %12 = load %struct.vlc_object_t*, %struct.vlc_object_t** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @msg_Err(%struct.vlc_object_t* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %28

15:                                               ; preds = %3
  %16 = load %struct.vlc_object_t*, %struct.vlc_object_t** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @msg_Warn(%struct.vlc_object_t* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.vlc_object_t*, %struct.vlc_object_t** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @msg_Info(%struct.vlc_object_t* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.vlc_object_t*, %struct.vlc_object_t** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @msg_Dbg(%struct.vlc_object_t* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %23, %19, %15, %11
  ret void
}

declare dso_local i32 @msg_Err(%struct.vlc_object_t*, i8*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.vlc_object_t*, i8*, i8*) #1

declare dso_local i32 @msg_Info(%struct.vlc_object_t*, i8*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.vlc_object_t*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
