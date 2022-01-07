; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_blendbench.c_blendbench_LoadImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_blendbench.c_blendbench_LoadImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unable to load %s image\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s image has dim %d x %d (Y plane)\00", align 1
@Y_PLANE = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__**, i32, i8*, i8*)* @blendbench_LoadImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blendbench_LoadImage(i32* %0, %struct.TYPE_6__** %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @video_format_Init(i32* %13, i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @image_HandlerCreate(i32* %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call %struct.TYPE_6__* @image_ReadUrl(i32* %18, i8* %19, i32* %13)
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %21, align 8
  %22 = call i32 @video_format_Clean(i32* %13)
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @image_HandlerDelete(i32* %23)
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @msg_Err(i32* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %32, i32* %6, align 4
  br label %54

33:                                               ; preds = %5
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i64, i64* @Y_PLANE, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i64, i64* @Y_PLANE, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @msg_Dbg(i32* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %43, i32 %51)
  %53 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %33, %28
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local i32* @image_HandlerCreate(i32*) #1

declare dso_local %struct.TYPE_6__* @image_ReadUrl(i32*, i8*, i32*) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i32 @image_HandlerDelete(i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
