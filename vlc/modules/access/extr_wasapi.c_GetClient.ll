; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_wasapi.c_GetClient.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_wasapi.c_GetClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_MMDeviceEnumerator = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@IID_IMMDeviceEnumerator = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cannot create device enumerator (error 0x%lX)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"wasapi-loopback\00", align 1
@eRender = common dso_local global i64 0, align 8
@eCapture = common dso_local global i64 0, align 8
@eConsole = common dso_local global i32 0, align 4
@eCommunications = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot get default device (error 0x%lX)\00", align 1
@IID_IAudioClient = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"cannot activate device (error 0x%lX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @GetClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetClient(i32* %0, i32* noalias %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @CLSCTX_ALL, align 4
  %14 = call i32 @CoCreateInstance(i32* @CLSID_MMDeviceEnumerator, i32* null, i32 %13, i32* @IID_IMMDeviceEnumerator, i8** %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @msg_Err(i32* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i8* null, i8** %3, align 8
  br label %77

22:                                               ; preds = %2
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @var_InheritBool(i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @eRender, align 8
  br label %33

31:                                               ; preds = %22
  %32 = load i64, i64* @eCapture, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @eConsole, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @eCommunications, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32* %43, i64 %44, i32 %45, i32** %7)
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @IMMDeviceEnumerator_Release(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @msg_Err(i32* %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i8* null, i8** %3, align 8
  br label %77

56:                                               ; preds = %41
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @CLSCTX_ALL, align 4
  %59 = call i32 @IMMDevice_Activate(i32* %57, i32* @IID_IAudioClient, i32 %58, i32* null, i8** %8)
  store i32 %59, i32* %9, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @GetDeviceFlow(i32* %60)
  %62 = load i64, i64* @eRender, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @IMMDevice_Release(i32* %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %56
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @msg_Err(i32* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %56
  %76 = load i8*, i8** %8, align 8
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %75, %52, %18
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @var_InheritBool(i32*, i8*) #1

declare dso_local i32 @IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32*, i64, i32, i32**) #1

declare dso_local i32 @IMMDeviceEnumerator_Release(i32*) #1

declare dso_local i32 @IMMDevice_Activate(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @GetDeviceFlow(i32*) #1

declare dso_local i32 @IMMDevice_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
