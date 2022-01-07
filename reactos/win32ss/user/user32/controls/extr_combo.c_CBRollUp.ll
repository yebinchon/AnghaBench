; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_CBRollUp.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_CBRollUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"[%p]: sel ok? [%i] dropped? [%i]\0A\00", align 1
@CBF_DROPPED = common dso_local global i32 0, align 4
@CBN_SELENDOK = common dso_local global i32 0, align 4
@CBN_SELENDCANCEL = common dso_local global i32 0, align 4
@CBS_SIMPLE = common dso_local global i64 0, align 8
@SW_HIDE = common dso_local global i32 0, align 4
@CBS_DROPDOWN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@CBF_NOREDRAW = common dso_local global i32 0, align 4
@RDW_INVALIDATE = common dso_local global i32 0, align 4
@RDW_ERASE = common dso_local global i32 0, align 4
@RDW_UPDATENOW = common dso_local global i32 0, align 4
@RDW_NOCHILDREN = common dso_local global i32 0, align 4
@CBN_CLOSEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64)* @CBRollUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CBRollUp(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CBF_DROPPED, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @CBN_SELENDOK, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @CBN_SELENDCANCEL, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @CB_NOTIFY(%struct.TYPE_5__* %22, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @IsWindow(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %115

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = call i64 @CB_GETTYPE(%struct.TYPE_5__* %36)
  %38 = load i64, i64* @CBS_SIMPLE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %115

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CBF_DROPPED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %114

47:                                               ; preds = %40
  %48 = load i32, i32* @CBF_DROPPED, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @SW_HIDE, align 4
  %58 = call i32 @ShowWindow(i64 %56, i32 %57)
  %59 = call i64 (...) @GetCapture()
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = call i32 (...) @ReleaseCapture()
  br label %66

66:                                               ; preds = %64, %47
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = call i64 @CB_GETTYPE(%struct.TYPE_5__* %67)
  %69 = load i64, i64* @CBS_DROPDOWN, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  br label %90

75:                                               ; preds = %66
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = call i32 @UnionRect(i32* %8, i32* %80, i32* %82)
  br label %88

84:                                               ; preds = %75
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i64, i64* @TRUE, align 8
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %88, %71
  %91 = load i64, i64* %6, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CBF_NOREDRAW, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @RDW_INVALIDATE, align 4
  %103 = load i32, i32* @RDW_ERASE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @RDW_UPDATENOW, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @RDW_NOCHILDREN, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @RedrawWindow(i32 %101, i32* %8, i32 0, i32 %108)
  br label %110

110:                                              ; preds = %100, %93, %90
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = load i32, i32* @CBN_CLOSEUP, align 4
  %113 = call i32 @CB_NOTIFY(%struct.TYPE_5__* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %40
  br label %115

115:                                              ; preds = %114, %35, %29
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i64, i32) #1

declare dso_local i32 @CB_NOTIFY(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @IsWindow(i32) #1

declare dso_local i64 @CB_GETTYPE(%struct.TYPE_5__*) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

declare dso_local i64 @GetCapture(...) #1

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i32 @UnionRect(i32*, i32*, i32*) #1

declare dso_local i32 @RedrawWindow(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
