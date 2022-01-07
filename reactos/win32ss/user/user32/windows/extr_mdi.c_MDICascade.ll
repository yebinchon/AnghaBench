; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDICascade.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDICascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@WM_MDIRESTORE = common dso_local global i32 0, align 4
@GW_OWNER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SM_CYICONSPACING = common dso_local global i32 0, align 4
@SM_CYICON = common dso_local global i32 0, align 4
@SWP_DRAWFRAME = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"move %p to (%ld,%ld) size [%ld,%ld]\0A\00", align 1
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_SIZEBOX = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_6__*)* @MDICascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MDICascade(i64 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x %struct.TYPE_5__], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* @WM_MDIRESTORE, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @SendMessageW(i64 %22, i32 %23, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %191

35:                                               ; preds = %29
  %36 = load i64, i64* %4, align 8
  %37 = call i64* @WIN_ListChildren(i64 %36)
  store i64* %37, i64** %6, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %191

40:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %88, %40
  %42 = load i64*, i64** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %41
  %49 = load i64*, i64** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @IsWindowVisible(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %88

57:                                               ; preds = %48
  %58 = load i64*, i64** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @GW_OWNER, align 4
  %64 = call i64 @GetWindow(i64 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %88

67:                                               ; preds = %57
  %68 = load i64*, i64** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @IsIconic(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %7, align 8
  br label %88

77:                                               ; preds = %67
  %78 = load i64*, i64** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  store i64 %82, i64* %87, align 8
  br label %88

88:                                               ; preds = %77, %75, %66, %56
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %41

91:                                               ; preds = %41
  %92 = load i64*, i64** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %181

98:                                               ; preds = %91
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* @SM_CYICONSPACING, align 4
  %103 = call i64 @GetSystemMetrics(i32 %102)
  %104 = load i32, i32* @SM_CYICON, align 4
  %105 = call i64 @GetSystemMetrics(i32 %104)
  %106 = add i64 %103, %105
  store i64 %106, i64* %10, align 8
  br label %107

107:                                              ; preds = %101, %98
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %12, align 8
  br label %111

111:                                              ; preds = %177, %107
  %112 = load i64, i64* %12, align 8
  %113 = icmp uge i64 %112, 0
  br i1 %113, label %114, label %180

114:                                              ; preds = %111
  %115 = load i32, i32* @SWP_DRAWFRAME, align 4
  %116 = load i32, i32* @SWP_NOACTIVATE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SWP_NOZORDER, align 4
  %119 = or i32 %117, %118
  store i32 %119, i32* %15, align 4
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* %11, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %11, align 8
  %123 = trunc i64 %121 to i32
  %124 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @MDI_CalcDefaultChildPos(i64 %120, i32 %123, %struct.TYPE_5__* %124, i64 %125, i32* null)
  %127 = load i64*, i64** %6, align 8
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 16
  %137 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %13, i64 0, i64 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %13, i64 0, i64 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %130, i32 %133, i32 %136, i32 %139, i32 %142)
  %144 = load i64*, i64** %6, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @GWL_STYLE, align 4
  %149 = call i32 @GetWindowLongW(i64 %147, i32 %148)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @WS_SIZEBOX, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %114
  %155 = load i32, i32* @SWP_NOSIZE, align 4
  %156 = load i32, i32* %15, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %154, %114
  %159 = load i64*, i64** %6, align 8
  %160 = load i64, i64* %12, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 16
  %169 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %13, i64 0, i64 1
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %13, i64 0, i64 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @SetWindowPos(i64 %162, i32 0, i32 %165, i32 %168, i32 %171, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %158
  %178 = load i64, i64* %12, align 8
  %179 = add i64 %178, -1
  store i64 %179, i64* %12, align 8
  br label %111

180:                                              ; preds = %111
  br label %181

181:                                              ; preds = %180, %91
  %182 = call i32 (...) @GetProcessHeap()
  %183 = load i64*, i64** %6, align 8
  %184 = call i32 @HeapFree(i32 %182, i32 0, i64* %183)
  %185 = load i64, i64* %7, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i64, i64* %4, align 8
  %189 = call i32 @ArrangeIconicWindows(i64 %188)
  br label %190

190:                                              ; preds = %187, %181
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %39, %34
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i64* @WIN_ListChildren(i64) #1

declare dso_local i32 @IsWindowVisible(i64) #1

declare dso_local i64 @GetWindow(i64, i32) #1

declare dso_local i64 @IsIconic(i64) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32 @MDI_CalcDefaultChildPos(i64, i32, %struct.TYPE_5__*, i64, i32*) #1

declare dso_local i32 @TRACE(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @GetWindowLongW(i64, i32) #1

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ArrangeIconicWindows(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
