; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9Reset.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_18__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Could not presentation parameters to reset device\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"IDirect3DDevice9_Reset failed! (hr=0x%lX)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Direct3D9CreateResources failed !\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*)* @Direct3D9Reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Direct3D9Reset(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %7, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = call i64 @D3D9_FillPresentationParameters(%struct.TYPE_15__* %16, %struct.TYPE_18__* %17, %struct.TYPE_19__* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %3, align 4
  br label %66

24:                                               ; preds = %2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = call i32 @Direct3D9DestroyResources(%struct.TYPE_16__* %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IDirect3DDevice9Ex_ResetEx(i32 %35, %struct.TYPE_19__* %8, i32* null)
  store i32 %36, i32* %9, align 4
  br label %42

37:                                               ; preds = %24
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IDirect3DDevice9_Reset(i32 %40, %struct.TYPE_19__* %8)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Err(%struct.TYPE_16__* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i64 @Direct3D9CreateResources(%struct.TYPE_16__* %56, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = call i32 @msg_Dbg(%struct.TYPE_16__* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %60, %46, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @D3D9_FillPresentationParameters(%struct.TYPE_15__*, %struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @Direct3D9DestroyResources(%struct.TYPE_16__*) #1

declare dso_local i32 @IDirect3DDevice9Ex_ResetEx(i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @IDirect3DDevice9_Reset(i32, %struct.TYPE_19__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @Direct3D9CreateResources(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
