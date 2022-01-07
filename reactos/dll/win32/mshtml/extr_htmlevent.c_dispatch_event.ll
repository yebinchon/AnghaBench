; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_dispatch_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_dispatch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@EVENTID_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"unknown event %s\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@VT_EMPTY = common dso_local global i64 0, align 8
@VT_ERROR = common dso_local global i64 0, align 8
@VT_DISPATCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"event_var %s not supported\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@IID_IHTMLEventObj = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"No IHTMLEventObj iface\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Not our IHTMLEventObj?\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@event_info = common dso_local global %struct.TYPE_11__* null, align 8
@EVENT_DEFAULTLISTENER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"not EVENT_DEFAULTEVENTHANDLER\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispatch_event(%struct.TYPE_10__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @attr_to_eid(i32* %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @EVENTID_LAST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @debugstr_w(i32* %20)
  %22 = call i32 @WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %23, i32* %5, align 4
  br label %131

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @V_VT(i32* %28)
  %30 = load i64, i64* @VT_EMPTY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @V_VT(i32* %33)
  %35 = load i64, i64* @VT_ERROR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @V_VT(i32* %38)
  %40 = load i64, i64* @VT_DISPATCH, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @debugstr_variant(i32* %43)
  %45 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %46, i32* %5, align 4
  br label %131

47:                                               ; preds = %37
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @V_DISPATCH(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @V_DISPATCH(i32* %52)
  %54 = bitcast i32** %13 to i8**
  %55 = call i32 @IDispatch_QueryInterface(i64 %53, i32* @IID_IHTMLEventObj, i8** %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %131

62:                                               ; preds = %51
  %63 = load i32*, i32** %13, align 8
  %64 = call %struct.TYPE_9__* @unsafe_impl_from_IHTMLEventObj(i32* %63)
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %10, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = icmp ne %struct.TYPE_9__* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @IHTMLEventObj_Release(i32* %69)
  %71 = load i32, i32* @E_FAIL, align 4
  store i32 %71, i32* %5, align 4
  br label %131

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %47
  br label %74

74:                                               ; preds = %73, %32, %27, %24
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  br i1 %76, label %77, label %105

77:                                               ; preds = %74
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @set_event_info(%struct.TYPE_9__* %78, %struct.TYPE_10__* %79, i64 %80, i32* null)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i64 @SUCCEEDED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fire_event_obj(i32 %88, i64 %89, %struct.TYPE_9__* %90, i32 %93, i32* null)
  br label %95

95:                                               ; preds = %85, %77
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = call i32 @IHTMLEventObj_Release(i32* %97)
  %99 = load i32, i32* %12, align 4
  %100 = call i64 @FAILED(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %5, align 4
  br label %131

104:                                              ; preds = %95
  br label %127

105:                                              ; preds = %74
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** @event_info, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @EVENT_DEFAULTLISTENER, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %105
  %115 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %116, i32* %5, align 4
  br label %131

117:                                              ; preds = %105
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %11, align 8
  %122 = load i32, i32* @TRUE, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @fire_event(i32 %120, i64 %121, i32 %122, i32 %125, i32* null, i32* null)
  br label %127

127:                                              ; preds = %117, %104
  %128 = load i32, i32* @VARIANT_TRUE, align 4
  %129 = load i32*, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* @S_OK, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %114, %102, %67, %59, %42, %19
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @attr_to_eid(i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i64 @V_DISPATCH(i32*) #1

declare dso_local i32 @IDispatch_QueryInterface(i64, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_9__* @unsafe_impl_from_IHTMLEventObj(i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @IHTMLEventObj_Release(i32*) #1

declare dso_local i32 @set_event_info(%struct.TYPE_9__*, %struct.TYPE_10__*, i64, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @fire_event_obj(i32, i64, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @fire_event(i32, i64, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
