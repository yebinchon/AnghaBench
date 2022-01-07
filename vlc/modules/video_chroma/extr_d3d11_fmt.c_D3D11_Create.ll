; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_D3D11_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_D3D11_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"D3D11.DLL\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot load d3d11.dll, aborting\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"cannot load d3dcompiler.dll, aborting\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"D3DCompile\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Cannot locate reference to D3DCompile in d3dcompiler DLL\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @D3D11_Create(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = call i32 @TEXT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @LoadLibrary(i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @msg_Warn(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %20
  %24 = call i32 (...) @Direct3D11LoadShaderLibrary()
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @msg_Err(i32* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @FreeLibrary(i32 %36)
  %38 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %38, i32* %4, align 4
  br label %66

39:                                               ; preds = %23
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @GetProcAddress(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %39
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @msg_Err(i32* %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @FreeLibrary(i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @FreeLibrary(i32 %60)
  %62 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %63, %20
  %65 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %51, %31, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @LoadLibrary(i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @Direct3D11LoadShaderLibrary(...) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @FreeLibrary(i32) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
