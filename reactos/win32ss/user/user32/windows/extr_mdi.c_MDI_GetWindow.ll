; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_GetWindow.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_GetWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@WS_DISABLED = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@GW_OWNER = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64, i32)* @MDI_GetWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MDI_GetWindow(%struct.TYPE_3__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @WS_DISABLED, align 4
  %14 = load i32, i32* @WS_VISIBLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %9, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @GetParent(i64 %25)
  %27 = call i64* @WIN_ListChildren(i32 %26)
  store i64* %27, i64** %11, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  br label %165

30:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i64*, i64** %11, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i64*, i64** %11, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %43, %44
  br label %46

46:                                               ; preds = %38, %31
  %47 = phi i1 [ false, %31 ], [ %45, %38 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %31

51:                                               ; preds = %46
  %52 = load i64*, i64** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58, %51
  br label %62

62:                                               ; preds = %102, %61
  %63 = load i64*, i64** %11, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %62
  %70 = load i64*, i64** %11, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @GW_OWNER, align 4
  %76 = call i64 @GetWindow(i64 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %102

79:                                               ; preds = %69
  %80 = load i64*, i64** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @GWL_STYLE, align 4
  %86 = call i32 @GetWindowLongPtrW(i64 %84, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @WS_VISIBLE, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %102

92:                                               ; preds = %79
  %93 = load i64*, i64** %11, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %160

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %91, %78
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %62

105:                                              ; preds = %62
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %156, %105
  %107 = load i64*, i64** %11, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load i64*, i64** %11, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp ne i64 %118, %119
  br label %121

121:                                              ; preds = %113, %106
  %122 = phi i1 [ false, %106 ], [ %120, %113 ]
  br i1 %122, label %123, label %159

123:                                              ; preds = %121
  %124 = load i64*, i64** %11, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @GW_OWNER, align 4
  %130 = call i64 @GetWindow(i64 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %156

133:                                              ; preds = %123
  %134 = load i64*, i64** %11, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @GWL_STYLE, align 4
  %140 = call i32 @GetWindowLongPtrW(i64 %138, i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* @WS_VISIBLE, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %156

146:                                              ; preds = %133
  %147 = load i64*, i64** %11, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %12, align 8
  %152 = load i64, i64* %8, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %160

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155, %145, %132
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %106

159:                                              ; preds = %121
  br label %160

160:                                              ; preds = %159, %154, %100
  %161 = call i32 (...) @GetProcessHeap()
  %162 = load i64*, i64** %11, align 8
  %163 = call i32 @HeapFree(i32 %161, i32 0, i64* %162)
  %164 = load i64, i64* %12, align 8
  store i64 %164, i64* %5, align 8
  br label %165

165:                                              ; preds = %160, %29
  %166 = load i64, i64* %5, align 8
  ret i64 %166
}

declare dso_local i64* @WIN_ListChildren(i32) #1

declare dso_local i32 @GetParent(i64) #1

declare dso_local i64 @GetWindow(i64, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i64, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
