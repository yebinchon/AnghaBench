; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rarvm.c__RARSetOperand.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rarvm.c__RARSetOperand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@RARAbsoluteAddressingMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32, i32)* @_RARSetOperand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_RARSetOperand(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = call i32 @RARRegisterAddressingMode(i32 0)
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @RARRegisterAddressingMode(i32 7)
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = srem i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %25, i32* %32, align 4
  br label %130

33:                                               ; preds = %14, %5
  %34 = call i32 @RARRegisterIndirectAddressingMode(i32 0)
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @RARRegisterIndirectAddressingMode(i32 7)
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = srem i32 %49, 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @RARVirtualMachineWrite8(%struct.TYPE_5__* %45, i32 %53, i32 %54)
  br label %68

56:                                               ; preds = %41
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = srem i32 %61, 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @RARVirtualMachineWrite32(%struct.TYPE_5__* %57, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %56, %44
  br label %129

69:                                               ; preds = %37, %33
  %70 = call i32 @RARIndexedAbsoluteAddressingMode(i32 0)
  %71 = load i32, i32* %7, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @RARIndexedAbsoluteAddressingMode(i32 7)
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = srem i32 %86, 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %82, %90
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @RARVirtualMachineWrite8(%struct.TYPE_5__* %81, i32 %91, i32 %92)
  br label %108

94:                                               ; preds = %77
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = srem i32 %100, 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %96, %104
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @RARVirtualMachineWrite32(%struct.TYPE_5__* %95, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %94, %80
  br label %128

109:                                              ; preds = %73, %69
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @RARAbsoluteAddressingMode, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @RARVirtualMachineWrite8(%struct.TYPE_5__* %117, i32 %118, i32 %119)
  br label %126

121:                                              ; preds = %113
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @RARVirtualMachineWrite32(%struct.TYPE_5__* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %116
  br label %127

127:                                              ; preds = %126, %109
  br label %128

128:                                              ; preds = %127, %108
  br label %129

129:                                              ; preds = %128, %68
  br label %130

130:                                              ; preds = %129, %24
  ret void
}

declare dso_local i32 @RARRegisterAddressingMode(i32) #1

declare dso_local i32 @RARRegisterIndirectAddressingMode(i32) #1

declare dso_local i32 @RARVirtualMachineWrite8(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @RARVirtualMachineWrite32(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @RARIndexedAbsoluteAddressingMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
