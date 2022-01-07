; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rarvm.c__RARGetOperand.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rarvm.c__RARGetOperand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@RARAbsoluteAddressingMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @_RARGetOperand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_RARGetOperand(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 @RARRegisterAddressingMode(i32 0)
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @RARRegisterAddressingMode(i32 7)
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = srem i32 %22, 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %121

34:                                               ; preds = %14, %4
  %35 = call i32 @RARRegisterIndirectAddressingMode(i32 0)
  %36 = load i32, i32* %7, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @RARRegisterIndirectAddressingMode(i32 7)
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = srem i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @RARVirtualMachineRead8(%struct.TYPE_5__* %46, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %121

56:                                               ; preds = %42
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = srem i32 %61, 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @RARVirtualMachineRead32(%struct.TYPE_5__* %57, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %121

67:                                               ; preds = %38, %34
  %68 = call i32 @RARIndexedAbsoluteAddressingMode(i32 0)
  %69 = load i32, i32* %7, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @RARIndexedAbsoluteAddressingMode(i32 7)
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = srem i32 %84, 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %80, %88
  %90 = call i32 @RARVirtualMachineRead8(%struct.TYPE_5__* %79, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %121

91:                                               ; preds = %75
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = srem i32 %97, 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %93, %101
  %103 = call i32 @RARVirtualMachineRead32(%struct.TYPE_5__* %92, i32 %102)
  store i32 %103, i32* %5, align 4
  br label %121

104:                                              ; preds = %71, %67
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @RARAbsoluteAddressingMode, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @RARVirtualMachineRead8(%struct.TYPE_5__* %112, i32 %113)
  store i32 %114, i32* %5, align 4
  br label %121

115:                                              ; preds = %108
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @RARVirtualMachineRead32(%struct.TYPE_5__* %116, i32 %117)
  store i32 %118, i32* %5, align 4
  br label %121

119:                                              ; preds = %104
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %115, %111, %91, %78, %56, %45, %32
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @RARRegisterAddressingMode(i32) #1

declare dso_local i32 @RARRegisterIndirectAddressingMode(i32) #1

declare dso_local i32 @RARVirtualMachineRead8(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @RARVirtualMachineRead32(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @RARIndexedAbsoluteAddressingMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
