; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_GetTextW.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_GetTextW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@CBF_EDIT = common dso_local global i32 0, align 4
@WM_GETTEXT = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i32 0, align 4
@LB_GETTEXTLEN = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i64*)* @COMBO_GetTextW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBO_GetTextW(%struct.TYPE_3__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CBF_EDIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @WM_GETTEXT, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i64*, i64** %7, align 8
  %24 = ptrtoint i64* %23 to i32
  %25 = call i32 @SendMessageW(i64 %20, i32 %21, i32 %22, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %116

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64*, i64** %7, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %26
  store i32 0, i32* %4, align 4
  br label %116

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %112

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @LB_GETCURSEL, align 4
  %43 = call i32 @SendMessageW(i64 %41, i32 %42, i32 0, i32 0)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @LB_ERR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %113

48:                                               ; preds = %38
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @LB_GETTEXTLEN, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @SendMessageW(i64 %51, i32 %52, i32 %53, i32 0)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @LB_ERR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %113

59:                                               ; preds = %48
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %96

63:                                               ; preds = %59
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i64* @HeapAlloc(i32 %64, i32 0, i32 %69)
  store i64* %70, i64** %10, align 8
  %71 = load i64*, i64** %10, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %63
  br label %113

74:                                               ; preds = %63
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @LB_GETTEXT, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i64*, i64** %10, align 8
  %81 = ptrtoint i64* %80 to i32
  %82 = call i32 @SendMessageW(i64 %77, i32 %78, i32 %79, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @LB_ERR, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %74
  %87 = load i64*, i64** %7, align 8
  %88 = load i64*, i64** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @lstrcpynW(i64* %87, i64* %88, i32 %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %86, %74
  %93 = call i32 (...) @GetProcessHeap()
  %94 = load i64*, i64** %10, align 8
  %95 = call i32 @HeapFree(i32 %93, i32 0, i64* %94)
  br label %105

96:                                               ; preds = %59
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @LB_GETTEXT, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i64*, i64** %7, align 8
  %103 = ptrtoint i64* %102 to i32
  %104 = call i32 @SendMessageW(i64 %99, i32 %100, i32 %101, i32 %103)
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %96, %92
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @LB_ERR, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %116

110:                                              ; preds = %105
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %116

112:                                              ; preds = %33
  br label %113

113:                                              ; preds = %112, %73, %58, %47
  %114 = load i64*, i64** %7, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  store i64 0, i64* %115, align 8
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %113, %110, %109, %32, %17
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrcpynW(i64*, i64*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
