; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_initialize_plugin_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_initialize_plugin_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32*, i32, i32, i32 }

@IID_IClientSecurity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Handle IClientSecurity\0A\00", align 1
@IID_IQuickActivate = common dso_local global i32 0, align 4
@__const.initialize_plugin_object.container = private unnamed_addr constant %struct.TYPE_10__ { i32 32, i32 0, i32* null, i32* null, i32* null }, align 8
@__const.initialize_plugin_object.control = private unnamed_addr constant %struct.TYPE_9__ { i32 4 }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Using IQuickActivate\0A\00", align 1
@QACONTAINER_SUPPORTSMNEMONICS = common dso_local global i32 0, align 4
@QACONTAINER_MESSAGEREFLECT = common dso_local global i32 0, align 4
@QACONTAINER_USERMODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"QuickActivate failed: %08x\0A\00", align 1
@IID_IOleObject = common dso_local global i32 0, align 4
@DVASPECT_CONTENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"GetMiscStatus returned %08x %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SetClientSite failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Plugin does not support IOleObject\0A\00", align 1
@IID_IViewObjectEx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"SetAdvise failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"GetViewStatus returned %08x %x\0A\00", align 1
@IID_IDispatchEx = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"Use IDispatchEx\0A\00", align 1
@IID_IDispatch = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"no IDispatch iface\0A\00", align 1
@IID_IOleCommandTarget = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"Use IOleCommandTarget\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @initialize_plugin_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_plugin_object(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32* null, i32** %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = bitcast i32** %3 to i8**
  %19 = call i32 @IUnknown_QueryInterface(i32 %17, i32* @IID_IClientSecurity, i8** %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @SUCCEEDED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @IClientSecurity_Release(i32* %25)
  br label %178

27:                                               ; preds = %1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = bitcast i32** %4 to i8**
  %32 = call i32 @IUnknown_QueryInterface(i32 %30, i32* @IID_IQuickActivate, i8** %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @SUCCEEDED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %27
  %37 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 bitcast (%struct.TYPE_10__* @__const.initialize_plugin_object.container to i8*), i64 32, i1 false)
  %38 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 bitcast (%struct.TYPE_9__* @__const.initialize_plugin_object.control to i8*), i64 4, i1 false)
  %39 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  store i32* %41, i32** %42, align 8
  %43 = load i32, i32* @QACONTAINER_SUPPORTSMNEMONICS, align 4
  %44 = load i32, i32* @QACONTAINER_MESSAGEREFLECT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @QACONTAINER_USERMODE, align 4
  %47 = or i32 %45, %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store i32* %50, i32** %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i32* %53, i32** %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @IQuickActivate_QuickActivate(i32* %55, %struct.TYPE_10__* %11, %struct.TYPE_9__* %12)
  store i32 %56, i32* %10, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @IQuickActivate_Release(i32* %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %36
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %36
  br label %98

66:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = bitcast i32** %5 to i8**
  %71 = call i32 @IUnknown_QueryInterface(i32 %69, i32* @IID_IOleObject, i8** %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @SUCCEEDED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %66
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @DVASPECT_CONTENT, align 4
  %78 = call i32 @IOleObject_GetMiscStatus(i32* %76, i32 %77, i32* %13)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = call i32 @IOleObject_SetClientSite(i32* %82, i32* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @IOleObject_Release(i32* %86)
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @FAILED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %75
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  br label %178

94:                                               ; preds = %75
  br label %97

95:                                               ; preds = %66
  %96 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %94
  br label %98

98:                                               ; preds = %97, %65
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %100 = call i32 @load_plugin(%struct.TYPE_11__* %99)
  %101 = load i32*, i32** %5, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %133

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = bitcast i32** %7 to i8**
  %108 = call i32 @IUnknown_QueryInterface(i32 %106, i32* @IID_IViewObjectEx, i8** %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i64 @SUCCEEDED(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %103
  store i32 0, i32* %14, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* @DVASPECT_CONTENT, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = call i32 @IViewObjectEx_SetAdvise(i32* %113, i32 %114, i32 0, i32* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i64 @FAILED(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %121, %112
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @IViewObjectEx_GetViewStatus(i32* %125, i32* %14)
  store i32 %126, i32* %10, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @IViewObjectEx_Release(i32* %127)
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %124, %103
  br label %133

133:                                              ; preds = %132, %98
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %135 = call i32 @update_readystate(%struct.TYPE_11__* %134)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = bitcast i32** %8 to i8**
  %140 = call i32 @IUnknown_QueryInterface(i32 %138, i32* @IID_IDispatchEx, i8** %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i64 @SUCCEEDED(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  %145 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %146 = load i32*, i32** %8, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  store i32* %146, i32** %148, align 8
  br label %165

149:                                              ; preds = %133
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = bitcast i32** %9 to i8**
  %154 = call i32 @IUnknown_QueryInterface(i32 %152, i32* @IID_IDispatch, i8** %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i64 @SUCCEEDED(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load i32*, i32** %9, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  store i32* %159, i32** %161, align 8
  br label %164

162:                                              ; preds = %149
  %163 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %158
  br label %165

165:                                              ; preds = %164, %144
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = bitcast i32** %6 to i8**
  %170 = call i32 @IUnknown_QueryInterface(i32 %168, i32* @IID_IOleCommandTarget, i8** %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i64 @SUCCEEDED(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %165
  %175 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @IOleCommandTarget_Release(i32* %176)
  br label %178

178:                                              ; preds = %23, %91, %174, %165
  ret void
}

declare dso_local i32 @IUnknown_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @IClientSecurity_Release(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @IQuickActivate_QuickActivate(i32*, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @IQuickActivate_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IOleObject_GetMiscStatus(i32*, i32, i32*) #1

declare dso_local i32 @IOleObject_SetClientSite(i32*, i32*) #1

declare dso_local i32 @IOleObject_Release(i32*) #1

declare dso_local i32 @load_plugin(%struct.TYPE_11__*) #1

declare dso_local i32 @IViewObjectEx_SetAdvise(i32*, i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IViewObjectEx_GetViewStatus(i32*, i32*) #1

declare dso_local i32 @IViewObjectEx_Release(i32*) #1

declare dso_local i32 @update_readystate(%struct.TYPE_11__*) #1

declare dso_local i32 @IOleCommandTarget_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
