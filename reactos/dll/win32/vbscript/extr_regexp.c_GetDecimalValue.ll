; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_regexp.c_GetDecimalValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_regexp.c_GetDecimalValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@TRUE = common dso_local global i32 0, align 4
@OVERFLOW_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32 (%struct.TYPE_4__*)*, %struct.TYPE_4__*)* @GetDecimalValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetDecimalValue(i32 %0, i32 %1, i32 (%struct.TYPE_4__*)* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.TYPE_4__*)*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 (%struct.TYPE_4__*)* %2, i32 (%struct.TYPE_4__*)** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @JS7_UNDEC(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %7, align 8
  %18 = icmp ne i32 (%struct.TYPE_4__*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = call i32 %21(%struct.TYPE_4__* %22)
  %24 = icmp sgt i32 %20, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ true, %16 ], [ %24, %19 ]
  br label %27

27:                                               ; preds = %25, %4
  %28 = phi i1 [ false, %4 ], [ %26, %25 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %30, -1
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %34

34:                                               ; preds = %74, %27
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ult i32* %37, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @JS7_ISDEC(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %79

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 10, %52
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @JS7_UNDEC(i32 %54)
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %7, align 8
  %65 = icmp ne i32 (%struct.TYPE_4__*)* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %7, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = call i32 %68(%struct.TYPE_4__* %69)
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66, %63
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %66, %59, %51
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %76, align 8
  br label %34

79:                                               ; preds = %50, %34
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @OVERFLOW_VALUE, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  ret i32 %87
}

declare dso_local i32 @JS7_UNDEC(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JS7_ISDEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
