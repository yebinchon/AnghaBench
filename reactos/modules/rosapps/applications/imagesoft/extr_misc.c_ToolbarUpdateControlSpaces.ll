; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_misc.c_ToolbarUpdateControlSpaces.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_misc.c_ToolbarUpdateControlSpaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }

@TB_GETSTYLE = common dso_local global i32 0, align 4
@CCS_VERT = common dso_local global i32 0, align 4
@TB_BUTTONCOUNT = common dso_local global i32 0, align 4
@TB_GETBUTTON = common dso_local global i32 0, align 4
@TBSTYLE_SEP = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@TB_HIDEBUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ToolbarUpdateControlSpaces(i32 %0, i32 (i32, i32, i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32 (i32, i32, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 (i32, i32, i32)* %1, i32 (i32, i32, i32)** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TB_GETSTYLE, align 4
  %13 = call i32 @SendMessage(i32 %11, i32 %12, i32 0, i32 0)
  %14 = load i32, i32* @CCS_VERT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TB_BUTTONCOUNT, align 4
  %20 = call i32 @SendMessage(i32 %18, i32 %19, i32 0, i32 0)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %104, %2
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %107

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TB_GETBUTTON, align 4
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = ptrtoint %struct.TYPE_3__* %9 to i32
  %32 = call i32 @SendMessage(i32 %27, i32 %28, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TBSTYLE_SEP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %102

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %102

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %10, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %44
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @SW_HIDE, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @SW_SHOW, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = call i32 @ShowWindow(i32 %58, i32 %66)
  br label %82

68:                                               ; preds = %44
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %68
  %75 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %5, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 %75(i32 %76, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %65
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @TB_HIDEBUTTON, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %91, %82
  %97 = phi i1 [ false, %82 ], [ %95, %91 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @SendMessage(i32 %83, i32 %84, i32 %88, i32 %98)
  br label %100

100:                                              ; preds = %96, %68
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %40, %34
  br label %103

103:                                              ; preds = %102, %26
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %8, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %8, align 8
  br label %22

107:                                              ; preds = %22
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
