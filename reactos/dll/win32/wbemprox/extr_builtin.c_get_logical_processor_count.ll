; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_logical_processor_count.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_logical_processor_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@SystemLogicalProcessorInformation = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@RelationProcessorCore = common dso_local global i64 0, align 8
@RelationProcessorPackage = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_logical_processor_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_logical_processor_count(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 (...) @get_processor_count()
  %14 = load i32*, i32** %3, align 8
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @SystemLogicalProcessorInformation, align 4
  %17 = call i64 @NtQuerySystemInformation(i32 %16, %struct.TYPE_5__* null, i32 0, i32* %9)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 (...) @get_processor_count()
  store i32 %22, i32* %2, align 4
  br label %133

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.TYPE_5__* @heap_alloc(i32 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %4, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 (...) @get_processor_count()
  store i32 %28, i32* %2, align 4
  br label %133

29:                                               ; preds = %23
  %30 = load i32, i32* @SystemLogicalProcessorInformation, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @NtQuerySystemInformation(i32 %30, %struct.TYPE_5__* %31, i32 %32, i32* %9)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @STATUS_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = call i32 @heap_free(%struct.TYPE_5__* %38)
  %40 = call i32 (...) @get_processor_count()
  store i32 %40, i32* %2, align 4
  br label %133

41:                                               ; preds = %29
  %42 = load i32*, i32** %3, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %126, %46
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 16
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %129

54:                                               ; preds = %47
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RelationProcessorCore, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %83, %63
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 4
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 1, %75
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %68
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %64

86:                                               ; preds = %64
  br label %125

87:                                               ; preds = %54
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RelationProcessorPackage, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %87
  %97 = load i32*, i32** %3, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %124

99:                                               ; preds = %96
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %120, %99
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %102, 4
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = shl i32 1, %111
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %115, %104
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %100

123:                                              ; preds = %100
  br label %124

124:                                              ; preds = %123, %96, %87
  br label %125

125:                                              ; preds = %124, %86
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %47

129:                                              ; preds = %47
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = call i32 @heap_free(%struct.TYPE_5__* %130)
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %129, %37, %27, %21
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @get_processor_count(...) #1

declare dso_local i64 @NtQuerySystemInformation(i32, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
