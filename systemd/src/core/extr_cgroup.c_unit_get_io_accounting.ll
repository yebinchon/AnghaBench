; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_get_io_accounting.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_get_io_accounting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64* }

@_CGROUP_IO_ACCOUNTING_METRIC_MAX = common dso_local global i32 0, align 4
@io_accounting = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_get_io_accounting(%struct.TYPE_5__* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load i32, i32* @_CGROUP_IO_ACCOUNTING_METRIC_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = load i32, i32* @io_accounting, align 4
  %21 = call i32 @UNIT_CGROUP_BOOL(%struct.TYPE_5__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENODATA, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %117

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UINT64_MAX, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %105

39:                                               ; preds = %29, %26
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = call i32 @unit_get_io_accounting_raw(%struct.TYPE_5__* %40, i64* %18)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @ENODATA, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UINT64_MAX, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %105

56:                                               ; preds = %46, %39
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %117

61:                                               ; preds = %56
  store i64 0, i64* %14, align 8
  br label %62

62:                                               ; preds = %101, %61
  %63 = load i64, i64* %14, align 8
  %64 = load i32, i32* @_CGROUP_IO_ACCOUNTING_METRIC_MAX, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %62
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds i64, i64* %18, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %70, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %67
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds i64, i64* %18, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %81, %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %88, i64* %93, align 8
  br label %100

94:                                               ; preds = %67
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %78
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %14, align 8
  br label %62

104:                                              ; preds = %62
  br label %105

105:                                              ; preds = %104, %55, %38
  %106 = load i64*, i64** %9, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %9, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %108, %105
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %116, %59, %23
  %118 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UNIT_CGROUP_BOOL(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @unit_get_io_accounting_raw(%struct.TYPE_5__*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
