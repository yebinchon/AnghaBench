; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_GetTextA.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_GetTextA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@CBF_EDIT = common dso_local global i32 0, align 4
@WM_GETTEXT = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@LB_GETTEXTLEN = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64*)* @COMBO_GetTextA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COMBO_GetTextA(%struct.TYPE_3__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
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
  %22 = load i64, i64* %6, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = ptrtoint i64* %23 to i32
  %25 = call i64 @SendMessageA(i64 %20, i32 %21, i64 %22, i32 %24)
  store i64 %25, i64* %4, align 8
  br label %114

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64*, i64** %7, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %26
  store i64 0, i64* %4, align 8
  br label %114

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %110

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @LB_GETCURSEL, align 4
  %43 = call i64 @SendMessageW(i64 %41, i32 %42, i32 0, i32 0)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @LB_ERR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %111

48:                                               ; preds = %38
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @LB_GETTEXTLEN, align 4
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @SendMessageA(i64 %51, i32 %52, i64 %53, i32 0)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @LB_ERR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %111

59:                                               ; preds = %48
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = call i64* @HeapAlloc(i32 %64, i32 0, i32 %67)
  store i64* %68, i64** %10, align 8
  %69 = load i64*, i64** %10, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %111

72:                                               ; preds = %63
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @LB_GETTEXT, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = ptrtoint i64* %78 to i32
  %80 = call i64 @SendMessageA(i64 %75, i32 %76, i64 %77, i32 %79)
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @LB_ERR, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load i64*, i64** %7, align 8
  %86 = load i64*, i64** %10, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @lstrcpynA(i64* %85, i64* %86, i64 %87)
  %89 = load i64, i64* %6, align 8
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %84, %72
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load i64*, i64** %10, align 8
  %93 = call i32 @HeapFree(i32 %91, i32 0, i64* %92)
  br label %103

94:                                               ; preds = %59
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @LB_GETTEXT, align 4
  %99 = load i64, i64* %9, align 8
  %100 = load i64*, i64** %7, align 8
  %101 = ptrtoint i64* %100 to i32
  %102 = call i64 @SendMessageA(i64 %97, i32 %98, i64 %99, i32 %101)
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %94, %90
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* @LB_ERR, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i64 0, i64* %4, align 8
  br label %114

108:                                              ; preds = %103
  %109 = load i64, i64* %8, align 8
  store i64 %109, i64* %4, align 8
  br label %114

110:                                              ; preds = %33
  br label %111

111:                                              ; preds = %110, %71, %58, %47
  %112 = load i64*, i64** %7, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  store i64 0, i64* %113, align 8
  store i64 0, i64* %4, align 8
  br label %114

114:                                              ; preds = %111, %108, %107, %32, %17
  %115 = load i64, i64* %4, align 8
  ret i64 %115
}

declare dso_local i64 @SendMessageA(i64, i32, i64, i32) #1

declare dso_local i64 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrcpynA(i64*, i64*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
