; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_execute_filter_e8.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_execute_filter_e8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RARFilter = type { i32*, i32, i64 }
%struct.TYPE_5__ = type { i32* }

@RARProgramWorkSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RARFilter*, %struct.TYPE_5__*, i64, i32)* @rar_execute_filter_e8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_execute_filter_e8(%struct.RARFilter* %0, %struct.TYPE_5__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.RARFilter*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.RARFilter* %0, %struct.RARFilter** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.RARFilter*, %struct.RARFilter** %6, align 8
  %16 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  store i32 16777216, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @RARProgramWorkSize, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %4
  store i32 0, i32* %5, align 4
  br label %115

27:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %106, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %30, 5
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %109

33:                                               ; preds = %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 232
  br i1 %41, label %54, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %105

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 233
  br i1 %53, label %54, label %105

54:                                               ; preds = %45, %33
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @RARVirtualMachineRead32(%struct.TYPE_5__* %60, i32 %62)
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %54
  %68 = load i32, i32* %13, align 4
  %69 = load i64, i64* %14, align 8
  %70 = sub nsw i64 0, %69
  %71 = trunc i64 %70 to i32
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i64, i64* %14, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @RARVirtualMachineWrite32(%struct.TYPE_5__* %74, i32 %76, i32 %81)
  br label %102

83:                                               ; preds = %67, %54
  %84 = load i64, i64* %14, align 8
  %85 = icmp sge i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load i64, i64* %14, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i64, i64* %14, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %95, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @RARVirtualMachineWrite32(%struct.TYPE_5__* %92, i32 %94, i32 %99)
  br label %101

101:                                              ; preds = %91, %86, %83
  br label %102

102:                                              ; preds = %101, %73
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 4
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %45, %42
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %28

109:                                              ; preds = %28
  %110 = load %struct.RARFilter*, %struct.RARFilter** %6, align 8
  %111 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.RARFilter*, %struct.RARFilter** %6, align 8
  %114 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  store i32 1, i32* %5, align 4
  br label %115

115:                                              ; preds = %109, %26
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @RARVirtualMachineRead32(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @RARVirtualMachineWrite32(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
