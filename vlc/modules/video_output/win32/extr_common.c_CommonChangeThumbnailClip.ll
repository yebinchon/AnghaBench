; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_common.c_CommonChangeThumbnailClip.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_common.c_CommonChangeThumbnailClip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_22__*, i32, %struct.TYPE_19__*)*, i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)* }
%struct.TYPE_19__ = type { i32, i64, i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@CLSID_TaskbarList = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ITaskbarList3 = common dso_local global i32 0, align 4
@GA_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SetThumbNailClip failed: 0x%lX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_18__*, i32)* @CommonChangeThumbnailClip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CommonChangeThumbnailClip(i32* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_20__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  store i32 8, i32* %16, align 4
  %17 = call i32 @GetVersionEx(%struct.TYPE_21__* %7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 5
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %3
  br label %123

24:                                               ; preds = %19
  %25 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %26 = call i32 @CoInitializeEx(i32* null, i32 %25)
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @vlc_assert_unreachable()
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i64, i64* @S_OK, align 8
  %33 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %34 = call i64 @CoCreateInstance(i32* @CLSID_TaskbarList, i32* null, i32 %33, i32* @IID_ITaskbarList3, i8** %8)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %121

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %9, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %42, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %45 = call i32 %43(%struct.TYPE_22__* %44)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GA_ROOT, align 4
  %50 = call i32 @GetAncestor(i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %36
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @GetWindowRect(i32 %56, %struct.TYPE_19__* %11)
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %58, align 4
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %61, align 4
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @ScreenToClient(i32 %66, %struct.TYPE_20__* %12)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %53
  %70 = call i32 @RECTWidth(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %11)
  store i32 %70, i32* %13, align 4
  %71 = call i32 @RECTHeight(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %11)
  store i32 %71, i32* %14, align 4
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  store i64 %82, i64* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %69, %53
  br label %91

91:                                               ; preds = %90, %36
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i64 (%struct.TYPE_22__*, i32, %struct.TYPE_19__*)*, i64 (%struct.TYPE_22__*, i32, %struct.TYPE_19__*)** %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %103

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %101
  %104 = phi %struct.TYPE_19__* [ %11, %101 ], [ null, %102 ]
  %105 = call i64 %96(%struct.TYPE_22__* %97, i32 %98, %struct.TYPE_19__* %104)
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32*, i32** %4, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i32 @msg_Err(i32* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %109, %103
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %117, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %120 = call i32 %118(%struct.TYPE_22__* %119)
  br label %121

121:                                              ; preds = %113, %31
  %122 = call i32 (...) @CoUninitialize()
  br label %123

123:                                              ; preds = %121, %23
  ret void
}

declare dso_local i32 @GetVersionEx(%struct.TYPE_21__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CoInitializeEx(i32*, i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @GetAncestor(i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_19__*) #1

declare dso_local i64 @ScreenToClient(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @RECTWidth(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #1

declare dso_local i32 @RECTHeight(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #1

declare dso_local i32 @msg_Err(i32*, i8*, i64) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
