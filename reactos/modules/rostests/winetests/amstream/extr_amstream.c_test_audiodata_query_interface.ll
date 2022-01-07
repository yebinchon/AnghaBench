; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_audiodata_query_interface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_audiodata_query_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IMemoryData = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@IID_IAudioData = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_audiodata_query_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_audiodata_query_interface() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = call i32* (...) @create_audio_data()
  store i32* %5, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = bitcast i32** %2 to i8**
  %8 = call i64 @IUnknown_QueryInterface(i32* %6, i32* @IID_IMemoryData, i8** %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @E_NOINTERFACE, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = bitcast i32** %3 to i8**
  %17 = call i64 @IUnknown_QueryInterface(i32* %15, i32* @IID_IAudioData, i8** %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* @S_OK, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %0
  %28 = load i32*, i32** %3, align 8
  %29 = bitcast i32** %2 to i8**
  %30 = call i64 @IAudioData_QueryInterface(i32* %28, i32* @IID_IMemoryData, i8** %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* @E_NOINTERFACE, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @IAudioData_Release(i32* %37)
  br label %39

39:                                               ; preds = %27, %0
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @IUnknown_Release(i32* %40)
  ret void
}

declare dso_local i32* @create_audio_data(...) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IAudioData_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IAudioData_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
