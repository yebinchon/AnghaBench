; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_persist.c_set_moniker.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_persist.c_set_moniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_22__, %struct.TYPE_29__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32, %struct.TYPE_29__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_29__* }

@.str = private unnamed_addr constant [29 x i8] c"GetDiaplayName failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"got url: %s\0A\00", align 1
@READYSTATE_LOADING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LOAD_FLAGS_BYPASS_CACHE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"pending window for %p %p %p\0A\00", align 1
@set_progress_proc = common dso_local global i32 0, align 4
@set_downloading_proc = common dso_local global i32 0, align 4
@set_downloading_task_destr = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_moniker(%struct.TYPE_28__* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_25__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %15, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %25 = icmp ne %struct.TYPE_29__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %6
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %34 = icmp eq %struct.TYPE_28__* %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %37, align 8
  store %struct.TYPE_29__* %38, %struct.TYPE_29__** %15, align 8
  br label %39

39:                                               ; preds = %35, %26, %6
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @IMoniker_GetDisplayName(i32* %40, i32* %41, i32* null, i32* %18)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* %20, align 4
  %48 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %20, align 4
  store i32 %49, i32* %7, align 4
  br label %217

50:                                               ; preds = %39
  %51 = load i32*, i32** %10, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32*, i32** %10, align 8
  store i32* %54, i32** %19, align 8
  br label %66

55:                                               ; preds = %50
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @create_uri(i32 %56, i32 0, i32** %19)
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @CoTaskMemFree(i32 %62)
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %7, align 4
  br label %217

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %53
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @debugstr_w(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to %struct.TYPE_28__*
  %71 = call i32 (i8*, %struct.TYPE_28__*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_28__* %70)
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %73 = load i32, i32* @READYSTATE_LOADING, align 4
  %74 = call i32 @set_ready_state(%struct.TYPE_28__* %72, i32 %73)
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = call i32 @create_doc_uri(%struct.TYPE_28__* %75, i32* %76, i32** %17)
  store i32 %77, i32* %20, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %66
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @IUri_Release(i32* %81)
  br label %83

83:                                               ; preds = %80, %66
  %84 = load i32, i32* %20, align 4
  %85 = call i64 @SUCCEEDED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %89 = icmp ne %struct.TYPE_25__* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_25__* %91, %struct.TYPE_25__** %16, align 8
  br label %96

92:                                               ; preds = %87
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* @TRUE, align 4
  %95 = call i32 @create_channelbsc(i32* %93, i32* null, i32* null, i32 0, i32 %94, %struct.TYPE_25__** %16)
  store i32 %95, i32* %20, align 4
  br label %96

96:                                               ; preds = %92, %90
  br label %97

97:                                               ; preds = %96, %83
  %98 = load i32, i32* %20, align 4
  %99 = call i64 @SUCCEEDED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %97
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @remove_target_tasks(i32 %115)
  br label %117

117:                                              ; preds = %109, %101
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = call i32 @abort_window_bindings(%struct.TYPE_21__* %121)
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %126 = load i32, i32* @LOAD_FLAGS_BYPASS_CACHE, align 4
  %127 = call i32 @load_nsuri(%struct.TYPE_28__* %123, i32* %124, i32* null, %struct.TYPE_25__* %125, i32 %126)
  store i32 %127, i32* %20, align 4
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @nsISupports_Release(i32* %128)
  %130 = load i32, i32* %20, align 4
  %131 = call i64 @SUCCEEDED(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %117
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %136 = call i32 @create_pending_window(%struct.TYPE_28__* %134, %struct.TYPE_25__* %135)
  store i32 %136, i32* %20, align 4
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i8*, %struct.TYPE_28__*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_28__* %137, %struct.TYPE_25__* %138, i32 %141)
  br label %143

143:                                              ; preds = %133, %117
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %146 = icmp ne %struct.TYPE_25__* %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = call i32 @IBindStatusCallback_Release(i32* %150)
  br label %152

152:                                              ; preds = %147, %143
  br label %153

153:                                              ; preds = %152, %97
  %154 = load i32, i32* %20, align 4
  %155 = call i64 @FAILED(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @CoTaskMemFree(i32 %158)
  %160 = load i32, i32* %20, align 4
  store i32 %160, i32* %7, align 4
  br label %217

161:                                              ; preds = %153
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %163 = icmp ne %struct.TYPE_29__* %162, null
  br i1 %163, label %164, label %215

164:                                              ; preds = %161
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %166 = load i32, i32* @TRUE, align 4
  %167 = call i32 @HTMLDocument_LockContainer(%struct.TYPE_29__* %165, i32 %166)
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %194

172:                                              ; preds = %164
  %173 = call i8* @heap_alloc(i32 16)
  %174 = bitcast i8* %173 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %174, %struct.TYPE_27__** %21, align 8
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 1
  store %struct.TYPE_29__* %175, %struct.TYPE_29__** %177, align 8
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = load i32, i32* @set_progress_proc, align 4
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @push_task(i32* %179, i32 %180, i32* null, i32 %184)
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* %20, align 4
  %187 = call i64 @FAILED(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %172
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @CoTaskMemFree(i32 %190)
  %192 = load i32, i32* %20, align 4
  store i32 %192, i32* %7, align 4
  br label %217

193:                                              ; preds = %172
  br label %194

194:                                              ; preds = %193, %164
  %195 = call i8* @heap_alloc(i32 24)
  %196 = bitcast i8* %195 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %196, %struct.TYPE_26__** %14, align 8
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 3
  store %struct.TYPE_29__* %197, %struct.TYPE_29__** %199, align 8
  %200 = load i32, i32* %13, align 4
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %18, align 4
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = load i32, i32* @set_downloading_proc, align 4
  %209 = load i32*, i32** @set_downloading_task_destr, align 8
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @push_task(i32* %207, i32 %208, i32* %209, i32 %213)
  store i32 %214, i32* %7, align 4
  br label %217

215:                                              ; preds = %161
  %216 = load i32, i32* @S_OK, align 4
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %215, %194, %189, %157, %61, %46
  %218 = load i32, i32* %7, align 4
  ret i32 %218
}

declare dso_local i32 @IMoniker_GetDisplayName(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @create_uri(i32, i32, i32**) #1

declare dso_local i32 @CoTaskMemFree(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_28__*, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @set_ready_state(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @create_doc_uri(%struct.TYPE_28__*, i32*, i32**) #1

declare dso_local i32 @IUri_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @create_channelbsc(i32*, i32*, i32*, i32, i32, %struct.TYPE_25__**) #1

declare dso_local i32 @remove_target_tasks(i32) #1

declare dso_local i32 @abort_window_bindings(%struct.TYPE_21__*) #1

declare dso_local i32 @load_nsuri(%struct.TYPE_28__*, i32*, i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @nsISupports_Release(i32*) #1

declare dso_local i32 @create_pending_window(%struct.TYPE_28__*, %struct.TYPE_25__*) #1

declare dso_local i32 @IBindStatusCallback_Release(i32*) #1

declare dso_local i32 @HTMLDocument_LockContainer(%struct.TYPE_29__*, i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @push_task(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
