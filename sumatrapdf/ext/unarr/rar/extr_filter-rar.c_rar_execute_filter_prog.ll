; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_execute_filter_prog.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_execute_filter_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RARFilter = type { i64, i32*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, i32, i32* }
%struct.TYPE_8__ = type { i32* }

@RARProgramSystemGlobalSize = common dso_local global i64 0, align 8
@RARProgramSystemGlobalAddress = common dso_local global i64 0, align 8
@RARProgramUserGlobalSize = common dso_local global i64 0, align 8
@RARProgramUserGlobalAddress = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error while executing program in RAR VM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RARFilter*, %struct.TYPE_8__*)* @rar_execute_filter_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_execute_filter_prog(%struct.RARFilter* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.RARFilter*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.RARFilter* %0, %struct.RARFilter** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %12 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @RARProgramSystemGlobalSize, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @RARProgramSystemGlobalSize, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @RARProgramSystemGlobalAddress, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %26 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @memcpy(i32* %24, i32* %27, i64 %28)
  %30 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %31 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %64

36:                                               ; preds = %19
  %37 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %38 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %37, i32 0, i32 2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @RARProgramUserGlobalSize, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub nsw i64 %43, %44
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i64, i64* @RARProgramUserGlobalSize, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub nsw i64 %48, %49
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %47, %36
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @RARProgramUserGlobalAddress, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %58 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @memcpy(i32* %56, i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %51, %19
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %67 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @RARSetVirtualMachineRegisters(%struct.TYPE_8__* %65, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %72 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %71, i32 0, i32 2
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @RARExecuteProgram(%struct.TYPE_8__* %70, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %64
  %79 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %136

80:                                               ; preds = %64
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = load i64, i64* @RARProgramSystemGlobalAddress, align 8
  %83 = add i64 %82, 48
  %84 = call i64 @RARVirtualMachineRead32(%struct.TYPE_8__* %81, i64 %83)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @RARProgramUserGlobalSize, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i64, i64* @RARProgramUserGlobalSize, align 8
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %88, %80
  %91 = load i64, i64* %6, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %90
  %94 = load i64, i64* @RARProgramSystemGlobalSize, align 8
  %95 = load i64, i64* %6, align 8
  %96 = add nsw i64 %94, %95
  store i64 %96, i64* %9, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %99 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %93
  %103 = load i64, i64* %9, align 8
  %104 = call i32* @malloc(i64 %103)
  store i32* %104, i32** %10, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %136

108:                                              ; preds = %102
  %109 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %110 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @free(i32* %111)
  %113 = load i32*, i32** %10, align 8
  %114 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %115 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %114, i32 0, i32 1
  store i32* %113, i32** %115, align 8
  br label %116

116:                                              ; preds = %108, %93
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %119 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %121 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @RARProgramSystemGlobalAddress, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %129 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @memcpy(i32* %122, i32* %127, i64 %130)
  br label %135

132:                                              ; preds = %90
  %133 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %134 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %132, %116
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %107, %78
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @RARSetVirtualMachineRegisters(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @RARExecuteProgram(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @RARVirtualMachineRead32(%struct.TYPE_8__*, i64) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
