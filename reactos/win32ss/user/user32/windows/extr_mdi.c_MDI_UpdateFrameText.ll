; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_UpdateFrameText.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_UpdateFrameText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64 }

@MDI_MAXTITLELENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"frameText %s\0A\00", align 1
@MDI_UpdateFrameText.lpBracket = internal constant [5 x i8] c" - [\00", align 1
@MDI_UpdateFrameText.lpBracket2 = internal constant [2 x i8] c"]\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@DC_ACTIVE = common dso_local global i32 0, align 4
@TWOPARAM_ROUTINE_REDRAWTITLE = common dso_local global i32 0, align 4
@SWP_FRAMECHANGED = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i8*)* @MDI_UpdateFrameText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MDI_UpdateFrameText(i64 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @MDI_MAXTITLELENGTH, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.TYPE_3__* @get_client_info(i64 %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @debugstr_w(i8* %21)
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %152

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  %37 = udiv i64 %16, 1
  %38 = trunc i64 %37 to i32
  %39 = call i64 @GetWindowTextW(i64 %36, i8* %18, i32 %38)
  store i8* %18, i8** %8, align 8
  br label %40

40:                                               ; preds = %35, %30, %27
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @HeapFree(i32 %44, i32 0, i8* %47)
  %49 = call i32 (...) @GetProcessHeap()
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strlenW(i8* %50)
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = call i8* @HeapAlloc(i32 %49, i32 0, i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = icmp ne i8* %56, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %43
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strcpyW(i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %60, %43
  br label %67

67:                                               ; preds = %66, %40
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %122

72:                                               ; preds = %67
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %72
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strlenW(i8* %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @MDI_MAXTITLELENGTH, align 4
  %86 = call i32 @lstrcpynW(i8* %18, i8* %84, i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 6
  %89 = load i32, i32* @MDI_MAXTITLELENGTH, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %77
  %92 = call i32 @strcatW(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @MDI_UpdateFrameText.lpBracket, i64 0, i64 0))
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %18, i64 %97
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  %100 = load i32, i32* @MDI_MAXTITLELENGTH, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sub nsw i32 %102, 5
  %104 = call i64 @GetWindowTextW(i64 %95, i8* %99, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %91
  %107 = call i32 @strcatW(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @MDI_UpdateFrameText.lpBracket2, i64 0, i64 0))
  br label %112

108:                                              ; preds = %91
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %18, i64 %110
  store i8 0, i8* %111, align 1
  br label %112

112:                                              ; preds = %108, %106
  br label %113

113:                                              ; preds = %112, %77
  br label %121

114:                                              ; preds = %72
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* @MDI_MAXTITLELENGTH, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i32 @lstrcpynW(i8* %18, i8* %117, i32 %119)
  br label %121

121:                                              ; preds = %114, %113
  br label %124

122:                                              ; preds = %67
  %123 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %123, align 16
  br label %124

124:                                              ; preds = %122, %121
  %125 = load i64, i64* %5, align 8
  %126 = load i32, i32* @WM_SETTEXT, align 4
  %127 = ptrtoint i8* %18 to i32
  %128 = call i32 @DefWindowProcW(i64 %125, i32 %126, i32 0, i32 %127)
  %129 = load i64, i64* %7, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %124
  %132 = load i64, i64* %5, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* @DC_ACTIVE, align 4
  %135 = load i32, i32* @TWOPARAM_ROUTINE_REDRAWTITLE, align 4
  %136 = call i32 @NtUserCallTwoParam(i32 %133, i32 %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %131
  %139 = load i64, i64* %5, align 8
  %140 = load i32, i32* @SWP_FRAMECHANGED, align 4
  %141 = load i32, i32* @SWP_NOSIZE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @SWP_NOMOVE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @SWP_NOACTIVATE, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @SWP_NOZORDER, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @SetWindowPos(i64 %139, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %148)
  br label %150

150:                                              ; preds = %138, %131
  br label %151

151:                                              ; preds = %150, %124
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %151, %26
  %153 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %12, align 4
  switch i32 %154, label %156 [
    i32 0, label %155
    i32 1, label %155
  ]

155:                                              ; preds = %152, %152
  ret void

156:                                              ; preds = %152
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_3__* @get_client_info(i64) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i64 @GetWindowTextW(i64, i8*, i32) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @strlenW(i8*) #2

declare dso_local i32 @strcpyW(i8*, i8*) #2

declare dso_local i32 @lstrcpynW(i8*, i8*, i32) #2

declare dso_local i32 @strcatW(i8*, i8*) #2

declare dso_local i32 @DefWindowProcW(i64, i32, i32, i32) #2

declare dso_local i32 @NtUserCallTwoParam(i32, i32, i32) #2

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
