; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_mmdevice.c_DeviceGetFriendlyName.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_mmdevice.c_DeviceGetFriendlyName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@STGM_READ = common dso_local global i32 0, align 4
@PKEY_Device_FriendlyName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @DeviceGetFriendlyName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DeviceGetFriendlyName(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @STGM_READ, align 4
  %10 = call i32 @IMMDevice_OpenPropertyStore(i32* %8, i32 %9, i32** %4)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @FAILED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %31

15:                                               ; preds = %1
  store i8* null, i8** %7, align 8
  %16 = call i32 @PropVariantInit(%struct.TYPE_5__* %5)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @IPropertyStore_GetValue(i32* %17, i32* @PKEY_Device_FriendlyName, %struct.TYPE_5__* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @SUCCEEDED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @FromWide(i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = call i32 @PropVariantClear(%struct.TYPE_5__* %5)
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @IPropertyStore_Release(i32* %28)
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %2, align 8
  br label %31

31:                                               ; preds = %27, %14
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local i32 @IMMDevice_OpenPropertyStore(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @PropVariantInit(%struct.TYPE_5__*) #1

declare dso_local i32 @IPropertyStore_GetValue(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i8* @FromWide(i32) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_5__*) #1

declare dso_local i32 @IPropertyStore_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
