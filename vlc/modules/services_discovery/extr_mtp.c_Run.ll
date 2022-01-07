; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_mtp.c_Run.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_mtp.c_Run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"New device found\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Device disconnected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  br label %11

11:                                               ; preds = %68, %1
  %12 = call i32 (...) @vlc_savecancel()
  store i32 %12, i32* %8, align 4
  %13 = call i32 @LIBMTP_Detect_Raw_Devices(i32** %3, i32* %4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @msg_Dbg(i32* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i64 @AddDevice(i32* %28, i32* %30)
  %32 = load i64, i64* @VLC_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %36

35:                                               ; preds = %25
  store i32 2, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %55

37:                                               ; preds = %22, %19, %16, %11
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %3, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43, %40, %37
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @msg_Info(i32* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @CloseDevice(i32* %52)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %49, %46, %43
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @free(i32* %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @vlc_restorecancel(i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = call i32 @VLC_TICK_FROM_SEC(i32 5)
  %64 = call i32 @vlc_tick_sleep(i32 %63)
  store i32 0, i32* %6, align 4
  br label %68

65:                                               ; preds = %55
  %66 = call i32 @VLC_TICK_FROM_MS(i32 500)
  %67 = call i32 @vlc_tick_sleep(i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %11
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @LIBMTP_Detect_Raw_Devices(i32**, i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i64 @AddDevice(i32*, i32*) #1

declare dso_local i32 @msg_Info(i32*, i8*) #1

declare dso_local i32 @CloseDevice(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @vlc_tick_sleep(i32) #1

declare dso_local i32 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
