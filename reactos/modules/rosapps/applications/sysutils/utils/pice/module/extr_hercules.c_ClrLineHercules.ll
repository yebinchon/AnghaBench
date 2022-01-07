; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hercules.c_ClrLineHercules.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hercules.c_ClrLineHercules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@wWindow = common dso_local global %struct.TYPE_7__* null, align 8
@DATA_WINDOW = common dso_local global i64 0, align 8
@SOURCE_WINDOW = common dso_local global i64 0, align 8
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@GLOBAL_SCREEN_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ClrLineHercules(): line %u is out of screen\0A\00", align 1
@attr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@COLOR_CAPTION = common dso_local global i64 0, align 8
@COLOR_TEXT = common dso_local global i64 0, align 8
@pVgaOffset = common dso_local global i64* null, align 8
@GLOBAL_SCREEN_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClrLineHercules(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wWindow, align 8
  %10 = load i64, i64* @DATA_WINDOW, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp eq i32 %8, %14
  br i1 %15, label %35, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wWindow, align 8
  %19 = load i64, i64* @SOURCE_WINDOW, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp eq i32 %17, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wWindow, align 8
  %28 = load i64, i64* @OUTPUT_WINDOW, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %26, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %25, %16, %1
  %36 = phi i1 [ true, %25 ], [ true, %16 ], [ true, %1 ], [ false, %34 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %2, align 4
  %39 = shl i32 %38, 3
  store i32 %39, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @GLOBAL_SCREEN_HEIGHT, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @DPRINT(i32 %44)
  br label %120

46:                                               ; preds = %35
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @attr, i32 0, i32 0, i32 0, i32 0), align 8
  %48 = load i64, i64* @COLOR_CAPTION, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @attr, i32 0, i32 0, i32 0, i32 1), align 8
  %52 = load i64, i64* @COLOR_TEXT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = xor i32 %55, -1
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %50, %46
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %88, %60
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %93

64:                                               ; preds = %61
  %65 = load i64*, i64** @pVgaOffset, align 8
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 2
  %73 = mul nsw i32 90, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %70, %74
  store i64 %75, i64* %7, align 8
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %81, label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %64
  store i32 255, i32* %6, align 4
  br label %83

82:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @GLOBAL_SCREEN_WIDTH, align 4
  %87 = call i32 @PICE_memset(i64 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %61

93:                                               ; preds = %61
  br label %120

94:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %96, 8
  br i1 %97, label %98, label %119

98:                                               ; preds = %95
  %99 = load i64*, i64** @pVgaOffset, align 8
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = ashr i32 %105, 2
  %107 = mul nsw i32 90, %106
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %104, %108
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @GLOBAL_SCREEN_WIDTH, align 4
  %113 = call i32 @PICE_memset(i64 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %95

119:                                              ; preds = %95
  br label %120

120:                                              ; preds = %43, %119, %93
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @PICE_memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
