; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_StyleChanged.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_StyleChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GWL_STYLE = common dso_local global i64 0, align 8
@ES_UPPERCASE = common dso_local global i32 0, align 4
@ES_LOWERCASE = common dso_local global i32 0, align 4
@ES_NUMBER = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_WANTRETURN = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid style change %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, %struct.TYPE_5__*)* @EDIT_WM_StyleChanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_StyleChanged(%struct.TYPE_6__* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %9 = load i64, i64* @GWL_STYLE, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %3
  %13 = load i32, i32* @ES_UPPERCASE, align 4
  %14 = load i32, i32* @ES_LOWERCASE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ES_NUMBER, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ES_MULTILINE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %12
  %25 = load i32, i32* @ES_WANTRETURN, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %12
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ES_NUMBER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %50

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ES_LOWERCASE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @ES_UPPERCASE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %38
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %70

61:                                               ; preds = %3
  %62 = load i64, i64* @GWL_EXSTYLE, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %69

66:                                               ; preds = %61
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %50
  ret i32 0
}

declare dso_local i32 @WARN(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
