; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_wgl.c_DestroyGPUAffinityDC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_wgl.c_DestroyGPUAffinityDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }

@VLC_PFD_INITIALIZER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"wglDeleteDCNV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @DestroyGPUAffinityDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DestroyGPUAffinityDC(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32*)*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %45

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_PFD_INITIALIZER, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @GetDC(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ChoosePixelFormat(i32 %23, i32* %4)
  %25 = call i32 @SetPixelFormat(i32 %22, i32 %24, i32* %4)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @wglCreateContext(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @wglMakeCurrent(i32 %28, i32 %29)
  %31 = call i32 @wglGetProcAddress(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32 (i32*)*
  store i32 (i32*)* %33, i32 (i32*)** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @wglDeleteContext(i32 %34)
  %36 = load i32 (i32*)*, i32 (i32*)** %7, align 8
  %37 = icmp ne i32 (i32*)* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %16
  br label %45

39:                                               ; preds = %16
  %40 = load i32 (i32*)*, i32 (i32*)** %7, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 %40(i32* %43)
  br label %45

45:                                               ; preds = %39, %38, %15
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SetPixelFormat(i32, i32, i32*) #1

declare dso_local i32 @ChoosePixelFormat(i32, i32*) #1

declare dso_local i32 @wglCreateContext(i32) #1

declare dso_local i32 @wglMakeCurrent(i32, i32) #1

declare dso_local i32 @wglGetProcAddress(i8*) #1

declare dso_local i32 @wglDeleteContext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
