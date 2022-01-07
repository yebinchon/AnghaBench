; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_seamless_setstate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_seamless_setstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"ui_seamless_setstate: No information for window 0x%lx\0A\00", align 1
@SEAMLESSRDP_NOTYETMAPPED = common dso_local global i32 0, align 4
@StateHint = common dso_local global i32 0, align 4
@IconicState = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SeamlessRDP: Invalid state %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_seamless_setstate(%struct.TYPE_15__* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %106

17:                                               ; preds = %4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.TYPE_13__* @sw_get_window_by_id(%struct.TYPE_15__* %18, i64 %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %9, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %106

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %99 [
    i32 128, label %29
    i32 130, label %29
    i32 129, label %43
  ]

29:                                               ; preds = %27, %27
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ewmh_change_state(%struct.TYPE_15__* %30, i32 %33, i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @XMapWindow(i32 %38, i32 %41)
  br label %102

43:                                               ; preds = %27
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SEAMLESSRDP_NOTYETMAPPED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %43
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_14__* @XGetWMHints(i32 %52, i32 %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %10, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %58 = icmp ne %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %49
  %60 = load i32, i32* @StateHint, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @IconicState, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = call i32 @XSetWMHints(i32 %70, i32 %73, %struct.TYPE_14__* %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = call i32 @XFree(%struct.TYPE_14__* %76)
  br label %78

78:                                               ; preds = %59, %49
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @XMapWindow(i32 %81, i32 %84)
  br label %98

86:                                               ; preds = %43
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @DefaultScreen(i32 %95)
  %97 = call i32 @XIconifyWindow(i32 %89, i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %86, %78
  br label %102

99:                                               ; preds = %27
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %98, %29
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %23, %16
  ret void
}

declare dso_local %struct.TYPE_13__* @sw_get_window_by_id(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @ewmh_change_state(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @XMapWindow(i32, i32) #1

declare dso_local %struct.TYPE_14__* @XGetWMHints(i32, i32) #1

declare dso_local i32 @XSetWMHints(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @XFree(%struct.TYPE_14__*) #1

declare dso_local i32 @XIconifyWindow(i32, i32, i32) #1

declare dso_local i32 @DefaultScreen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
