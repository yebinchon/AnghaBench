; ModuleID = '/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_....libvlctest.h_test_init.c'
source_filename = "/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_....libvlctest.h_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32 }

@test_default_sample = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"VLC_TEST_TIMEOUT\00", align 1
@on_timeout = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"VLC_PLUGIN_PATH\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"../modules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigaction, align 4
  %5 = load i32, i32* @test_default_sample, align 4
  store i32 10, i32* %1, align 4
  %6 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @atoi(i8* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %17

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %14
  br label %18

18:                                               ; preds = %17, %0
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  %23 = load i32, i32* @on_timeout, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32, i32* @SIGALRM, align 4
  %25 = call i32 @sigaction(i32 %24, %struct.sigaction* %4, i32* null)
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @alarm(i32 %26)
  br label %28

28:                                               ; preds = %21, %18
  %29 = call i32 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
