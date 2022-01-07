; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_merge_verify_colnames.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_merge_verify_colnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@MSICOLINFO_NAMES = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_DATATYPE_MISMATCH = common dso_local global i64 0, align 8
@MSICOLINFO_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @merge_verify_colnames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @merge_verify_colnames(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @MSICOLINFO_NAMES, align 4
  %13 = call i64 @MSI_ViewGetColumnInfo(i32* %11, i32 %12, %struct.TYPE_5__** %6)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %3, align 8
  br label %123

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @MSICOLINFO_NAMES, align 4
  %22 = call i64 @MSI_ViewGetColumnInfo(i32* %20, i32 %21, %struct.TYPE_5__** %7)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @msiobj_release(i32* %28)
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %3, align 8
  br label %123

31:                                               ; preds = %19
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_5__* %32)
  store i64 %33, i64* %10, align 8
  store i64 1, i64* %9, align 8
  br label %34

34:                                               ; preds = %56, %31
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @MSI_RecordGetString(%struct.TYPE_5__* %39, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %59

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @MSI_RecordGetString(%struct.TYPE_5__* %45, i64 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @MSI_RecordGetString(%struct.TYPE_5__* %48, i64 %49)
  %51 = call i64 @strcmpW(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i64, i64* @ERROR_DATATYPE_MISMATCH, align 8
  store i64 %54, i64* %8, align 8
  br label %115

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %34

59:                                               ; preds = %43, %34
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @msiobj_release(i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @msiobj_release(i32* %64)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %68 = call i64 @MSI_ViewGetColumnInfo(i32* %66, i32 %67, %struct.TYPE_5__** %6)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %3, align 8
  br label %123

74:                                               ; preds = %59
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %77 = call i64 @MSI_ViewGetColumnInfo(i32* %75, i32 %76, %struct.TYPE_5__** %7)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @ERROR_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = call i32 @msiobj_release(i32* %83)
  %85 = load i64, i64* %8, align 8
  store i64 %85, i64* %3, align 8
  br label %123

86:                                               ; preds = %74
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_5__* %87)
  store i64 %88, i64* %10, align 8
  store i64 1, i64* %9, align 8
  br label %89

89:                                               ; preds = %111, %86
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @MSI_RecordGetString(%struct.TYPE_5__* %94, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %114

99:                                               ; preds = %93
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @MSI_RecordGetString(%struct.TYPE_5__* %100, i64 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @MSI_RecordGetString(%struct.TYPE_5__* %103, i64 %104)
  %106 = call i32 @merge_type_match(i32 %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %99
  %109 = load i64, i64* @ERROR_DATATYPE_MISMATCH, align 8
  store i64 %109, i64* %8, align 8
  br label %114

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %9, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %9, align 8
  br label %89

114:                                              ; preds = %108, %98, %89
  br label %115

115:                                              ; preds = %114, %53
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = call i32 @msiobj_release(i32* %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = call i32 @msiobj_release(i32* %120)
  %122 = load i64, i64* %8, align 8
  store i64 %122, i64* %3, align 8
  br label %123

123:                                              ; preds = %115, %81, %72, %26, %17
  %124 = load i64, i64* %3, align 8
  ret i64 %124
}

declare dso_local i64 @MSI_ViewGetColumnInfo(i32*, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_RecordGetFieldCount(%struct.TYPE_5__*) #1

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @strcmpW(i32, i32) #1

declare dso_local i32 @merge_type_match(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
