; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c_chm_retrieve_object.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c_chm_retrieve_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32, i64 }
%struct.chmUnitInfo = type { i64, i64, i64 }

@CHM_UNCOMPRESSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @chm_retrieve_object(%struct.chmFile* %0, %struct.chmUnitInfo* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.chmFile*, align 8
  %8 = alloca %struct.chmUnitInfo*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.chmFile* %0, %struct.chmFile** %7, align 8
  store %struct.chmUnitInfo* %1, %struct.chmUnitInfo** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %15 = icmp eq %struct.chmFile* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %101

17:                                               ; preds = %5
  %18 = load i64, i64* %10, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %8, align 8
  %23 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %17
  store i64 0, i64* %6, align 8
  br label %101

27:                                               ; preds = %20
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %8, align 8
  %32 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %8, align 8
  %37 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %35, %27
  %42 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %8, align 8
  %43 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CHM_UNCOMPRESSED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %51 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %8, align 8
  %54 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %11, align 8
  %60 = call i64 @_chm_fetch_bytes(%struct.chmFile* %48, i8* %49, i64 %58, i64 %59)
  store i64 %60, i64* %6, align 8
  br label %101

61:                                               ; preds = %41
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %62 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %63 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %13, align 8
  store i64 %67, i64* %6, align 8
  br label %101

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %96, %68
  %70 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %8, align 8
  %73 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @_chm_decompress_region(%struct.chmFile* %70, i8* %71, i64 %76, i64 %77)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i64, i64* %13, align 8
  store i64 %82, i64* %6, align 8
  br label %101

83:                                               ; preds = %69
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %13, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %11, align 8
  %89 = sub nsw i64 %88, %87
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %10, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %9, align 8
  br label %96

96:                                               ; preds = %83
  %97 = load i64, i64* %11, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %69, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %13, align 8
  store i64 %100, i64* %6, align 8
  br label %101

101:                                              ; preds = %99, %81, %66, %47, %26, %16
  %102 = load i64, i64* %6, align 8
  ret i64 %102
}

declare dso_local i64 @_chm_fetch_bytes(%struct.chmFile*, i8*, i64, i64) #1

declare dso_local i64 @_chm_decompress_region(%struct.chmFile*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
