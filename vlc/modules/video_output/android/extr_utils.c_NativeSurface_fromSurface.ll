; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_NativeSurface_fromSurface.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_utils.c_NativeSurface_fromSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

@NativeSurface_fromSurface.libs = internal global [3 x i8*] [i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [28 x i8] c"libsurfaceflinger_client.so\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"libgui.so\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"libui.so\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @NativeSurface_fromSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @NativeSurface_fromSurface(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i8* @NativeSurface_getHandle(i32* %10, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %49

16:                                               ; preds = %2
  %17 = call %struct.TYPE_5__* @malloc(i32 16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %49

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %43, %21
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %26, 3
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* @NativeSurface_fromSurface.libs, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = call i8* @NativeSurface_Load(i8* %31, %struct.TYPE_5__* %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = bitcast %struct.TYPE_5__* %40 to i32*
  store i32* %41, i32** %3, align 8
  br label %49

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %25

46:                                               ; preds = %25
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = call i32 @free(%struct.TYPE_5__* %47)
  store i32* null, i32** %3, align 8
  br label %49

49:                                               ; preds = %46, %36, %20, %15
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i8* @NativeSurface_getHandle(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i8* @NativeSurface_Load(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
