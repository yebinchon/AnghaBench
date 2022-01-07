; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_ChildActivate.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_ChildActivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@WM_NCACTIVATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WM_MDIACTIVATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WM_SETFOCUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @MDI_ChildActivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MDI_ChildActivate(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.TYPE_5__* @get_client_info(i64 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @GetParent(i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = call i64 (...) @GetActiveWindow()
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %18
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* @WM_NCACTIVATE, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @SendMessageW(i64 %33, i32 %34, i32 %35, i64 0)
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @WM_MDIACTIVATE, align 4
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @SendMessageW(i64 %37, i32 %38, i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %32, %18
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @MDI_SwitchActiveChild(%struct.TYPE_5__* %44, i64 %45, i32 %46)
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = call i32 @MDI_RefreshMenu(%struct.TYPE_5__* %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %43
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* @WM_NCACTIVATE, align 4
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @SendMessageW(i64 %56, i32 %57, i32 %58, i64 0)
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @SetFocus(i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load i64, i64* %4, align 8
  %66 = load i32, i32* @WM_SETFOCUS, align 4
  %67 = load i64, i64* %4, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @SendMessageW(i64 %65, i32 %66, i32 %68, i64 0)
  br label %70

70:                                               ; preds = %64, %55
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* @WM_MDIACTIVATE, align 4
  %74 = load i64, i64* %7, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @SendMessageW(i64 %72, i32 %73, i32 %75, i64 %76)
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_5__* @get_client_info(i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @GetParent(i64) #1

declare dso_local i64 @GetActiveWindow(...) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i64) #1

declare dso_local i32 @MDI_SwitchActiveChild(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @MDI_RefreshMenu(%struct.TYPE_5__*) #1

declare dso_local i64 @SetFocus(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
