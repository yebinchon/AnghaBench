; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayOverlayProc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayOverlayProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Closing overlays.\00", align 1
@MAX_OVERLAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Initializing overlay\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unknown BD overlay command: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_17__*)* @blurayOverlayProc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blurayOverlayProc(i8* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %6, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = call i32 @vlc_mutex_lock(i32* %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = call i32 @msg_Info(%struct.TYPE_15__* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %30, %19
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAX_OVERLAY, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @blurayCloseOverlay(%struct.TYPE_15__* %27, i32 %28)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %22

33:                                               ; preds = %22
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = call i32 @vlc_mutex_unlock(i32* %36)
  br label %94

38:                                               ; preds = %2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %83 [
    i32 129, label %42
    i32 132, label %56
    i32 133, label %67
    i32 130, label %73
    i32 131, label %79
    i32 128, label %79
  ]

42:                                               ; preds = %38
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = call i32 @msg_Info(%struct.TYPE_15__* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @blurayInitOverlay(%struct.TYPE_15__* %45, i32 %48, i32 %51, i32 %54)
  br label %89

56:                                               ; preds = %38
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @blurayClearOverlay(%struct.TYPE_15__* %57, i32 %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @blurayCloseOverlay(%struct.TYPE_15__* %62, i32 %65)
  br label %89

67:                                               ; preds = %38
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @blurayClearOverlay(%struct.TYPE_15__* %68, i32 %71)
  br label %89

73:                                               ; preds = %38
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @blurayActivateOverlay(%struct.TYPE_15__* %74, i32 %77)
  br label %89

79:                                               ; preds = %38, %38
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = call i32 @blurayDrawOverlay(%struct.TYPE_15__* %80, %struct.TYPE_17__* %81)
  br label %89

83:                                               ; preds = %38
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @msg_Warn(%struct.TYPE_15__* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %79, %73, %67, %56, %42
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = call i32 @vlc_mutex_unlock(i32* %92)
  br label %94

94:                                               ; preds = %89, %33
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @blurayCloseOverlay(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @blurayInitOverlay(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @blurayClearOverlay(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @blurayActivateOverlay(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @blurayDrawOverlay(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_15__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
