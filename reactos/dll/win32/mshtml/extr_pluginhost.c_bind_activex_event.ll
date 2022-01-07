; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_bind_activex_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_bind_activex_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"(%p %p %s %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"detached element %p\0A\00", align 1
@IID_IProvideClassInfo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"No IProvideClassInfo, try GetTypeInfo?\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"GetClassInfo failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not get disp id: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bind_activex_event(i32* %0, %struct.TYPE_16__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @debugstr_w(i32* %20)
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %18, %struct.TYPE_15__* %19, i32 %21, i32* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %25 = icmp ne %struct.TYPE_15__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %32)
  br label %122

34:                                               ; preds = %26
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = icmp ne %struct.TYPE_17__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @ITypeInfo_AddRef(i32* %45)
  br label %82

47:                                               ; preds = %34
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = bitcast i32** %14 to i8**
  %52 = call %struct.TYPE_15__* @IUnknown_QueryInterface(i32 %50, i32* @IID_IProvideClassInfo, i8** %51)
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %13, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %54 = call i64 @FAILED(%struct.TYPE_15__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %122

58:                                               ; preds = %47
  %59 = load i32*, i32** %14, align 8
  %60 = call %struct.TYPE_15__* @IProvideClassInfo_GetClassInfo(i32* %59, i32** %10)
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %13, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @IProvideClassInfo_Release(i32* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %64 = call i64 @FAILED(%struct.TYPE_15__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66, %58
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %71 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_15__* %70)
  br label %122

72:                                               ; preds = %66
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32* @get_eventiface_info(%struct.TYPE_16__* %73, i32* %74)
  store i32* %75, i32** %11, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @ITypeInfo_Release(i32* %76)
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %122

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %39
  %83 = load i32*, i32** %11, align 8
  %84 = call %struct.TYPE_15__* @ITypeInfo_GetIDsOfNames(i32* %83, i32** %7, i32 1, i32* %12)
  store %struct.TYPE_15__* %84, %struct.TYPE_15__** %13, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %86 = call i64 @FAILED(%struct.TYPE_15__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %90 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_15__* %89)
  br label %103

91:                                               ; preds = %82
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = icmp ne %struct.TYPE_17__* %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call %struct.TYPE_17__* @create_event_sink(%struct.TYPE_15__* %97, i32* %98)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store %struct.TYPE_17__* %99, %struct.TYPE_17__** %101, align 8
  br label %102

102:                                              ; preds = %96, %91
  br label %103

103:                                              ; preds = %102, %88
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @ITypeInfo_Release(i32* %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %107 = call i64 @FAILED(%struct.TYPE_15__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = icmp ne %struct.TYPE_17__* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %109, %103
  br label %122

115:                                              ; preds = %109
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @add_sink_handler(%struct.TYPE_17__* %118, i32 %119, i32* %120)
  br label %122

122:                                              ; preds = %115, %114, %80, %69, %56, %31
  ret void
}

declare dso_local i32 @TRACE(i8*, i32*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @WARN(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @ITypeInfo_AddRef(i32*) #1

declare dso_local %struct.TYPE_15__* @IUnknown_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @FAILED(%struct.TYPE_15__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local %struct.TYPE_15__* @IProvideClassInfo_GetClassInfo(i32*, i32**) #1

declare dso_local i32 @IProvideClassInfo_Release(i32*) #1

declare dso_local i32* @get_eventiface_info(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local %struct.TYPE_15__* @ITypeInfo_GetIDsOfNames(i32*, i32**, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @create_event_sink(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @add_sink_handler(%struct.TYPE_17__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
