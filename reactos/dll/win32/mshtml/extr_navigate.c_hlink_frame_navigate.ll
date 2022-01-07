; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_hlink_frame_navigate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_hlink_frame_navigate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@IID_IHlinkFrame = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@CLSID_StdHlink = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IHlink = common dso_local global i32 0, align 4
@HLINKSETF_TARGET = common dso_local global i32 0, align 4
@HLNF_OPENINNEWWINDOW = common dso_local global i32 0, align 4
@hlink_frame_navigate.wszBlank = internal constant [7 x i8] c"_blank\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hlink_frame_navigate(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_12__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32*, i32** %11, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = bitcast i32** %12 to i8**
  %27 = call i64 @do_query_service(i32* %25, i32* @IID_IHlinkFrame, i32* @IID_IHlinkFrame, i8** %26)
  store i64 %27, i64* %17, align 8
  %28 = load i64, i64* %17, align 8
  %29 = call i64 @FAILED(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i64, i64* @S_OK, align 8
  store i64 %32, i64* %6, align 8
  br label %121

33:                                               ; preds = %5
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i64 @create_channelbsc(i32* null, i32* null, i32* null, i32 0, i32 %34, %struct.TYPE_11__** %13)
  store i64 %35, i64* %17, align 8
  %36 = load i64, i64* %17, align 8
  %37 = call i64 @FAILED(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @IHlinkFrame_Release(i32* %40)
  %42 = load i64, i64* %17, align 8
  store i64 %42, i64* %6, align 8
  br label %121

43:                                               ; preds = %33
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = call i32 @read_post_data_stream(i32 %49, i32 %52, i32* %54, i32* %57)
  br label %59

59:                                               ; preds = %46, %43
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = call i64 @CreateAsyncBindCtx(i32 0, i32* %62, i32* null, i32** %14)
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %17, align 8
  %65 = call i64 @SUCCEEDED(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %69 = bitcast i32** %16 to i32*
  %70 = call i64 @CoCreateInstance(i32* @CLSID_StdHlink, i32* null, i32 %68, i32* @IID_IHlink, i32* %69)
  store i64 %70, i64* %17, align 8
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i64, i64* %17, align 8
  %73 = call i64 @SUCCEEDED(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @CreateURLMoniker(i32* null, i32 %76, i32** %15)
  store i64 %77, i64* %17, align 8
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i64, i64* %17, align 8
  %80 = call i64 @SUCCEEDED(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %78
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* @HLINKSETF_TARGET, align 4
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @IHlink_SetMonikerReference(i32* %83, i32 %84, i32* %85, i32* null)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @HLNF_OPENINNEWWINDOW, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @IHlink_SetTargetFrameName(i32* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @hlink_frame_navigate.wszBlank, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %82
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32*, i32** %16, align 8
  %102 = call i64 @IHlinkFrame_Navigate(i32* %95, i32 %96, i32* %97, i32* %100, i32* %101)
  store i64 %102, i64* %17, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @IMoniker_Release(i32* %103)
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* @S_OK, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32*, i32** %11, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i64, i64* @S_OK, align 8
  store i64 %110, i64* %17, align 8
  br label %111

111:                                              ; preds = %94, %78
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @IHlinkFrame_Release(i32* %112)
  %114 = load i32*, i32** %14, align 8
  %115 = call i32 @IBindCtx_Release(i32* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = call i32 @IBindStatusCallback_Release(i32* %118)
  %120 = load i64, i64* %17, align 8
  store i64 %120, i64* %6, align 8
  br label %121

121:                                              ; preds = %111, %39, %31
  %122 = load i64, i64* %6, align 8
  ret i64 %122
}

declare dso_local i64 @do_query_service(i32*, i32*, i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @create_channelbsc(i32*, i32*, i32*, i32, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @IHlinkFrame_Release(i32*) #1

declare dso_local i32 @read_post_data_stream(i32, i32, i32*, i32*) #1

declare dso_local i64 @CreateAsyncBindCtx(i32, i32*, i32*, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @CreateURLMoniker(i32*, i32, i32**) #1

declare dso_local i32 @IHlink_SetMonikerReference(i32*, i32, i32*, i32*) #1

declare dso_local i32 @IHlink_SetTargetFrameName(i32*, i8*) #1

declare dso_local i64 @IHlinkFrame_Navigate(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @IBindStatusCallback_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
