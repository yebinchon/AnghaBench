; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_nonclient.c_UserGetWindowBorders.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_nonclient.c_UserGetWindowBorders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@WS_EX_STATICEDGE = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@WS_CAPTION = common dso_local global i32 0, align 4
@WS_EX_DLGMODALFRAME = common dso_local global i32 0, align 4
@WS_THICKFRAME = common dso_local global i32 0, align 4
@WS_MINIMIZE = common dso_local global i32 0, align 4
@SM_CXFRAME = common dso_local global i32 0, align 4
@SM_CXDLGFRAME = common dso_local global i32 0, align 4
@SM_CYFRAME = common dso_local global i32 0, align 4
@SM_CYDLGFRAME = common dso_local global i32 0, align 4
@SM_CXBORDER = common dso_local global i32 0, align 4
@SM_CYBORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UserGetWindowBorders(i32 %0, i32 %1, %struct.TYPE_3__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @UserHasWindowEdge(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %10, align 4
  br label %27

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @WS_EX_STATICEDGE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %32, %27
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @WS_CAPTION, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @WS_EX_DLGMODALFRAME, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @WS_THICKFRAME, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %51
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @WS_MINIMIZE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @SM_CXFRAME, align 4
  %68 = call i32 @GetSystemMetrics(i32 %67)
  %69 = load i32, i32* @SM_CXDLGFRAME, align 4
  %70 = call i32 @GetSystemMetrics(i32 %69)
  %71 = sub nsw i32 %68, %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @SM_CYFRAME, align 4
  %77 = call i32 @GetSystemMetrics(i32 %76)
  %78 = load i32, i32* @SM_CYDLGFRAME, align 4
  %79 = call i32 @GetSystemMetrics(i32 %78)
  %80 = sub nsw i32 %77, %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %66, %61, %51
  %86 = load i32, i32* @SM_CXBORDER, align 4
  %87 = call i32 @GetSystemMetrics(i32 %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @SM_CYBORDER, align 4
  %93 = call i32 @GetSystemMetrics(i32 %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @UserHasWindowEdge(i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
