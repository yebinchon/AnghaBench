; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_set_viewer_zoom.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_set_viewer_zoom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Setting to %f\0A\00", align 1
@IID_nsIDocShell = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"SetFullZoom failed: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_viewer_zoom(%struct.TYPE_3__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store float %1, float* %4, align 4
  %8 = load float, float* %4, align 4
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), float %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = bitcast i32** %6 to i8**
  %15 = call i64 @get_nsinterface(i32* %13, i32* @IID_nsIDocShell, i8** %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @NS_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @nsIDocShell_GetContentViewer(i32* %21, i32** %5)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @NS_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br label %29

29:                                               ; preds = %26, %2
  %30 = phi i1 [ false, %2 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @nsIDocShell_Release(i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load float, float* %4, align 4
  %37 = call i64 @nsIContentViewer_SetFullZoom(i32* %35, float %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @NS_FAILED(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %41, %29
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @nsIContentViewer_Release(i32* %45)
  ret void
}

declare dso_local i32 @TRACE(i8*, float) #1

declare dso_local i64 @get_nsinterface(i32*, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nsIDocShell_GetContentViewer(i32*, i32**) #1

declare dso_local i32 @nsIDocShell_Release(i32*) #1

declare dso_local i64 @nsIContentViewer_SetFullZoom(i32*, float) #1

declare dso_local i64 @NS_FAILED(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @nsIContentViewer_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
