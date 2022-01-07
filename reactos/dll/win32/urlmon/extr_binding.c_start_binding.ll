; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_binding.c_start_binding.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_binding.c_start_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"OnStartBinding failed: %08x\0A\00", align 1
@E_ABORT = common dso_local global i64 0, align 8
@E_NOTIMPL = common dso_local global i64 0, align 8
@INET_E_DOWNLOAD_FAILURE = common dso_local global i64 0, align 8
@BINDSTATUS_REDIRECTING = common dso_local global i32 0, align 4
@BSCF_FIRSTDATANOTIFICATION = common dso_local global i32 0, align 4
@END_DOWNLOAD = common dso_local global i64 0, align 8
@BSCF_LASTDATANOTIFICATION = common dso_local global i32 0, align 4
@PI_APARTMENTTHREADED = common dso_local global i32 0, align 4
@PI_MIMEVERIFICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"start ret %08x\0A\00", align 1
@E_PENDING = common dso_local global i64 0, align 8
@BINDF_ASYNCHRONOUS = common dso_local global i32 0, align 4
@BINDING_STOPPED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@QS_POSTMESSAGE = common dso_local global i32 0, align 4
@WM_USER = common dso_local global i64 0, align 8
@PM_REMOVE = common dso_local global i32 0, align 4
@PM_NOYIELD = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_9__*, i32*, i32*, i32, i32, %struct.TYPE_9__**)* @start_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @start_binding(i32* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3, i32 %4, i32 %5, %struct.TYPE_9__** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__**, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_9__** %6, %struct.TYPE_9__*** %15, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i64 @Binding_Create(i32* %19, %struct.TYPE_9__* %20, i32* %21, i32* %22, i32 %23, i32 %24, %struct.TYPE_9__** %16)
  store i64 %25, i64* %17, align 8
  %26 = load i64, i64* %17, align 8
  %27 = call i64 @FAILED(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i64, i64* %17, align 8
  store i64 %30, i64* %8, align 8
  br label %175

31:                                               ; preds = %7
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = call i64 @IBindStatusCallback_OnStartBinding(i32 %34, i32 0, i32* %36)
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %17, align 8
  %39 = call i64 @FAILED(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %31
  %42 = load i64, i64* %17, align 8
  %43 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* @E_ABORT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* @E_NOTIMPL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @INET_E_DOWNLOAD_FAILURE, align 8
  store i64 %52, i64* %17, align 8
  br label %53

53:                                               ; preds = %51, %47, %41
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %55 = load i64, i64* %17, align 8
  %56 = call i32 @stop_binding(%struct.TYPE_9__* %54, i64 %55, i32* null)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = call i32 @IBinding_Release(i32* %58)
  %60 = load i64, i64* %17, align 8
  store i64 %60, i64* %8, align 8
  br label %175

61:                                               ; preds = %31
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %101

64:                                               ; preds = %61
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 5
  %72 = call i32 @set_binding_sink(%struct.TYPE_10__* %67, i32* %69, i32* %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %64
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BINDSTATUS_REDIRECTING, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @IBindStatusCallback_OnProgress(i32 %80, i32 0, i32 0, i32 %81, i64 %84)
  br label %86

86:                                               ; preds = %77, %64
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %88 = load i32, i32* @BSCF_FIRSTDATANOTIFICATION, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @END_DOWNLOAD, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @BSCF_LASTDATANOTIFICATION, align 4
  br label %97

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = or i32 %88, %98
  %100 = call i32 @report_data(%struct.TYPE_9__* %87, i32 %99, i32 0, i32 0)
  br label %133

101:                                              ; preds = %61
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 7
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32*, i32** %11, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 5
  %111 = load i32, i32* @PI_APARTMENTTHREADED, align 4
  %112 = load i32, i32* @PI_MIMEVERIFICATION, align 4
  %113 = or i32 %111, %112
  %114 = call i64 @IInternetProtocolEx_StartEx(i32* %105, i32* %106, i32* %108, i32* %110, i32 %113, i32 0)
  store i64 %114, i64* %17, align 8
  %115 = load i64, i64* %17, align 8
  %116 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %115)
  %117 = load i64, i64* %17, align 8
  %118 = call i64 @FAILED(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %101
  %121 = load i64, i64* %17, align 8
  %122 = load i64, i64* @E_PENDING, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %126 = load i64, i64* %17, align 8
  %127 = call i32 @stop_binding(%struct.TYPE_9__* %125, i64 %126, i32* null)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  %130 = call i32 @IBinding_Release(i32* %129)
  %131 = load i64, i64* %17, align 8
  store i64 %131, i64* %8, align 8
  br label %175

132:                                              ; preds = %120, %101
  br label %133

133:                                              ; preds = %132, %97
  br label %134

134:                                              ; preds = %170, %133
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BINDING_STOPPED, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %141, %134
  %150 = phi i1 [ false, %134 ], [ %148, %141 ]
  br i1 %150, label %151, label %171

151:                                              ; preds = %149
  %152 = load i32, i32* @FALSE, align 4
  %153 = load i32, i32* @QS_POSTMESSAGE, align 4
  %154 = call i32 @MsgWaitForMultipleObjects(i32 0, i32* null, i32 %152, i32 5000, i32 %153)
  br label %155

155:                                              ; preds = %167, %151
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* @WM_USER, align 8
  %160 = load i64, i64* @WM_USER, align 8
  %161 = add nsw i64 %160, 117
  %162 = load i32, i32* @PM_REMOVE, align 4
  %163 = load i32, i32* @PM_NOYIELD, align 4
  %164 = or i32 %162, %163
  %165 = call i64 @PeekMessageW(i32* %18, i32 %158, i64 %159, i64 %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %155
  %168 = call i32 @TranslateMessage(i32* %18)
  %169 = call i32 @DispatchMessageW(i32* %18)
  br label %155

170:                                              ; preds = %155
  br label %134

171:                                              ; preds = %149
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %173 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %15, align 8
  store %struct.TYPE_9__* %172, %struct.TYPE_9__** %173, align 8
  %174 = load i64, i64* @S_OK, align 8
  store i64 %174, i64* %8, align 8
  br label %175

175:                                              ; preds = %171, %124, %53, %29
  %176 = load i64, i64* %8, align 8
  ret i64 %176
}

declare dso_local i64 @Binding_Create(i32*, %struct.TYPE_9__*, i32*, i32*, i32, i32, %struct.TYPE_9__**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IBindStatusCallback_OnStartBinding(i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @stop_binding(%struct.TYPE_9__*, i64, i32*) #1

declare dso_local i32 @IBinding_Release(i32*) #1

declare dso_local i32 @set_binding_sink(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @IBindStatusCallback_OnProgress(i32, i32, i32, i32, i64) #1

declare dso_local i32 @report_data(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @IInternetProtocolEx_StartEx(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @MsgWaitForMultipleObjects(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @PeekMessageW(i32*, i32, i64, i64, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
