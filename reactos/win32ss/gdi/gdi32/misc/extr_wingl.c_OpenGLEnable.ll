; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/misc/extr_wingl.c_OpenGLEnable.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/misc/extr_wingl.c_OpenGLEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 79, i32 80, i32 69, i32 78, i32 71, i32 76, i32 51, i32 50, i32 46, i32 68, i32 76, i32 76, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@hOpenGL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"wglChoosePixelFormat\00", align 1
@glChoosePixelFormat = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"wglSetPixelFormat\00", align 1
@glSetPixelFormat = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"wglSwapBuffers\00", align 1
@glSwapBuffers = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"wglDescribePixelFormat\00", align 1
@glDescribePixelFormat = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"wglGetPixelFormat\00", align 1
@glGetPixelFormat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @OpenGLEnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenGLEnable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @TRUE, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32* @LoadLibraryW(i8* bitcast ([13 x i32]* @.str to i8*))
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %1, align 4
  br label %45

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = ptrtoint i32* %11 to i32
  %13 = call i32* @InterlockedCompareExchangePointer(i32* @hOpenGL, i32 %12, i32* null)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @FreeLibrary(i32* %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = call i32 @OpenGLInitFunction(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* @glChoosePixelFormat)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32 @OpenGLInitFunction(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* @glSetPixelFormat)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = call i32 @OpenGLInitFunction(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* @glSwapBuffers)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = call i32 @OpenGLInitFunction(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* @glDescribePixelFormat)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = call i32 @OpenGLInitFunction(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* @glGetPixelFormat)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %3, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %43, %8
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32* @LoadLibraryW(i8*) #1

declare dso_local i32* @InterlockedCompareExchangePointer(i32*, i32, i32*) #1

declare dso_local i32 @FreeLibrary(i32*) #1

declare dso_local i32 @OpenGLInitFunction(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
