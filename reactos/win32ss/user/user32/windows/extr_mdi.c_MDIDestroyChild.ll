; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDIDestroyChild.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDIDestroyChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"# of managed children %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@WM_MDIREFRESHMENU = common dso_local global i32 0, align 4
@SB_BOTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"child destroyed - %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_6__*, i64, i64)* @MDIDestroyChild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MDIDestroyChild(i64 %0, %struct.TYPE_6__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i64 @MDI_GetWindow(%struct.TYPE_6__* %24, i64 %25, i32 %26, i32 0)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @MDI_SwitchActiveChild(%struct.TYPE_6__* %31, i64 %32, i32 %33)
  br label %66

35:                                               ; preds = %23
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @SW_HIDE, align 4
  %38 = call i32 @ShowWindow(i64 %36, i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %35
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @GetParent(i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @MDI_RestoreFrameMenu(i64 %47, i64 %48, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @MDI_UpdateFrameText(i64 %55, i64 %56, i32 %57, i32* null)
  br label %59

59:                                               ; preds = %44, %35
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @MDI_ChildActivate(i64 %63, i32 0)
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %30
  br label %67

67:                                               ; preds = %66, %4
  store i64 0, i64* %9, align 8
  br label %68

68:                                               ; preds = %167, %67
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %170

74:                                               ; preds = %68
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %166

83:                                               ; preds = %74
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, 1
  %89 = mul i64 %88, 8
  %90 = trunc i64 %89 to i32
  %91 = call i64* @HeapAlloc(i32 %84, i32 0, i32 %90)
  store i64* %91, i64** %12, align 8
  %92 = load i64*, i64** %12, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %94, label %135

94:                                               ; preds = %83
  %95 = load i64*, i64** %12, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = mul i64 %99, 8
  %101 = call i32 @memcpy(i64* %95, i64* %98, i64 %100)
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %94
  %109 = load i64*, i64** %12, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = getelementptr inbounds i64, i64* %116, i64 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = sub i64 %120, %121
  %123 = sub i64 %122, 1
  %124 = mul i64 %123, 8
  %125 = call i32 @memcpy(i64* %111, i64* %117, i64 %124)
  br label %126

126:                                              ; preds = %108, %94
  %127 = call i32 (...) @GetProcessHeap()
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i64*, i64** %129, align 8
  %131 = call i32 @HeapFree(i32 %127, i32 0, i64* %130)
  %132 = load i64*, i64** %12, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  store i64* %132, i64** %134, align 8
  br label %161

135:                                              ; preds = %83
  %136 = load i64, i64* %9, align 8
  store i64 %136, i64* %13, align 8
  br label %137

137:                                              ; preds = %157, %135
  %138 = load i64, i64* %13, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, 1
  %143 = icmp ult i64 %138, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %137
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %13, align 8
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* %13, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  store i64 %151, i64* %156, align 8
  br label %157

157:                                              ; preds = %144
  %158 = load i64, i64* %13, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %13, align 8
  br label %137

160:                                              ; preds = %137
  br label %161

161:                                              ; preds = %160, %126
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, -1
  store i64 %165, i64* %163, align 8
  br label %170

166:                                              ; preds = %74
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %9, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %9, align 8
  br label %68

170:                                              ; preds = %161, %68
  %171 = load i64, i64* %8, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load i64, i64* %5, align 8
  %175 = load i32, i32* @WM_MDIREFRESHMENU, align 4
  %176 = call i32 @SendMessageW(i64 %174, i32 %175, i32 0, i32 0)
  %177 = load i64, i64* %7, align 8
  %178 = call i64 @GetParent(i64 %177)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = load i64, i64* @SB_BOTH, align 8
  %181 = add nsw i64 %180, 1
  %182 = call i32 @MDI_PostUpdate(i64 %178, %struct.TYPE_6__* %179, i64 %181)
  %183 = load i64, i64* %7, align 8
  %184 = call i32 @DestroyWindow(i64 %183)
  br label %185

185:                                              ; preds = %173, %170
  %186 = load i64, i64* %7, align 8
  %187 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %186)
  ret i32 0
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @MDI_GetWindow(%struct.TYPE_6__*, i64, i32, i32) #1

declare dso_local i32 @MDI_SwitchActiveChild(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

declare dso_local i64 @GetParent(i64) #1

declare dso_local i32 @MDI_RestoreFrameMenu(i64, i64, i32) #1

declare dso_local i32 @MDI_UpdateFrameText(i64, i64, i32, i32*) #1

declare dso_local i32 @MDI_ChildActivate(i64, i32) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @MDI_PostUpdate(i64, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @DestroyWindow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
