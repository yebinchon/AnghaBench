; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/ntuser/extr_window.c_IntSendDestroyMsg.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/ntuser/extr_window.c_IntSendDestroyMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_20__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i64 }

@WS_CHILD = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@WM_DESTROY = common dso_local global i32 0, align 4
@USERTAG_WINDOWLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"destroyed itself while in WM_DESTROY!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @IntSendDestroyMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IntSendDestroyMsg(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = call %struct.TYPE_21__* (...) @PsGetCurrentThreadWin32Thread()
  store %struct.TYPE_21__* %7, %struct.TYPE_21__** %3, align 8
  %8 = load i64, i64* %2, align 8
  %9 = call %struct.TYPE_20__* @UserGetWindowObject(i64 %8)
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = icmp ne %struct.TYPE_20__* %10, null
  br i1 %11, label %12, label %89

12:                                               ; preds = %1
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = icmp eq %struct.TYPE_20__* %17, %18
  br i1 %19, label %33, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = icmp eq %struct.TYPE_20__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = call %struct.TYPE_16__* (...) @IntGetFocusMessageQueue()
  %32 = icmp eq %struct.TYPE_16__* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %12
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = call i32 @co_WinPosActivateOtherWindow(%struct.TYPE_20__* %34)
  br label %36

36:                                               ; preds = %33, %27, %20
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = icmp eq %struct.TYPE_20__* %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @WS_CHILD, align 4
  %49 = load i32, i32* @WS_POPUP, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = load i32, i32* @WS_CHILD, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @co_UserSetFocus(i32* %57)
  br label %61

59:                                               ; preds = %44
  %60 = call i32 @co_UserSetFocus(i32* null)
  br label %61

61:                                               ; preds = %59, %54
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = call i64 @UserHMGetHandle(%struct.TYPE_20__* %69)
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %74 = call i32 @co_IntDestroyCaret(%struct.TYPE_21__* %73)
  br label %75

75:                                               ; preds = %72, %62
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = icmp eq %struct.TYPE_20__* %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = call i32 @IntRemoveTrackMouseEvent(%struct.TYPE_15__* %86)
  br label %88

88:                                               ; preds = %83, %75
  br label %89

89:                                               ; preds = %88, %1
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = icmp ne %struct.TYPE_18__* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = icmp eq %struct.TYPE_20__* %97, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %108 = call i32 @UserClipboardRelease(%struct.TYPE_20__* %107)
  br label %109

109:                                              ; preds = %106, %96, %89
  %110 = load i64, i64* %2, align 8
  %111 = load i32, i32* @WM_DESTROY, align 4
  %112 = call i32 @co_IntSendMessage(i64 %110, i32 %111, i32 0, i32 0)
  %113 = load i64, i64* %2, align 8
  %114 = call i64 @IntIsWindow(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %109
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = call i64* @IntWinListChildren(%struct.TYPE_20__* %117)
  store i64* %118, i64** %5, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  br label %153

121:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %144, %121
  %123 = load i64*, i64** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %122
  %130 = load i64*, i64** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @IntIsWindow(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load i64*, i64** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  call void @IntSendDestroyMsg(i64 %142)
  br label %143

143:                                              ; preds = %137, %129
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %122

147:                                              ; preds = %122
  %148 = load i64*, i64** %5, align 8
  %149 = load i32, i32* @USERTAG_WINDOWLIST, align 4
  %150 = call i32 @ExFreePoolWithTag(i64* %148, i32 %149)
  br label %153

151:                                              ; preds = %109
  %152 = call i32 @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %120, %151, %147
  ret void
}

declare dso_local %struct.TYPE_21__* @PsGetCurrentThreadWin32Thread(...) #1

declare dso_local %struct.TYPE_20__* @UserGetWindowObject(i64) #1

declare dso_local %struct.TYPE_16__* @IntGetFocusMessageQueue(...) #1

declare dso_local i32 @co_WinPosActivateOtherWindow(%struct.TYPE_20__*) #1

declare dso_local i32 @co_UserSetFocus(i32*) #1

declare dso_local i64 @UserHMGetHandle(%struct.TYPE_20__*) #1

declare dso_local i32 @co_IntDestroyCaret(%struct.TYPE_21__*) #1

declare dso_local i32 @IntRemoveTrackMouseEvent(%struct.TYPE_15__*) #1

declare dso_local i32 @UserClipboardRelease(%struct.TYPE_20__*) #1

declare dso_local i32 @co_IntSendMessage(i64, i32, i32, i32) #1

declare dso_local i64 @IntIsWindow(i64) #1

declare dso_local i64* @IntWinListChildren(%struct.TYPE_20__*) #1

declare dso_local i32 @ExFreePoolWithTag(i64*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
