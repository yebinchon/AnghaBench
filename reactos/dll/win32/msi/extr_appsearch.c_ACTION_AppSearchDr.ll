; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearchDr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearchDr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@ACTION_AppSearchDr.query = internal constant [48 x i8] c"select * from DrLocator where Signature_ = '%s'\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to query DrLocator for %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8**, %struct.TYPE_17__*)* @ACTION_AppSearchDr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ACTION_AppSearchDr(%struct.TYPE_19__* %0, i8** %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i8* null, i8** %8, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @debugstr_w(i32 %29)
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i8**, i8*** %6, align 8
  store i8* null, i8** %32, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_18__* @MSI_QueryGetRecord(i32 %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @ACTION_AppSearchDr.query, i64 0, i64 0), i32 %38)
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %13, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %41 = icmp ne %struct.TYPE_18__* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %3
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @debugstr_w(i32 %45)
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %131

49:                                               ; preds = %3
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %51 = call i64 @MSI_RecordGetString(%struct.TYPE_18__* %50, i32 2)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @ACTION_AppSearchSigName(%struct.TYPE_19__* %55, i64 %56, %struct.TYPE_17__* %19, i8** %8)
  %58 = call i32 @ACTION_FreeSignature(%struct.TYPE_17__* %19)
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = call i32 @msiobj_release(i32* %63)
  %65 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %131

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i32, i32* @MAX_PATH, align 4
  store i32 %68, i32* %15, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %70 = call i32 @MSI_RecordGetStringW(%struct.TYPE_18__* %69, i32 3, i8* %23, i32* %15)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %72 = call i64 @MSI_RecordIsNull(%struct.TYPE_18__* %71, i32 4)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  br label %78

75:                                               ; preds = %67
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %77 = call i32 @MSI_RecordGetInteger(%struct.TYPE_18__* %76, i32 4)
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = load i32, i32* @MAX_PATH, align 4
  %84 = call i32 @ACTION_ExpandAnyPath(%struct.TYPE_19__* %82, i8* %23, i8* %26, i32 %83)
  br label %87

85:                                               ; preds = %78
  %86 = call i32 @strcpyW(i8* %26, i8* %23)
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @GetFileAttributesW(i8* %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @PathRemoveFileSpecW(i8* %102)
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @PathAddBackslashW(i8* %104)
  br label %106

106:                                              ; preds = %101, %96, %90
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @strcpyW(i8* %23, i8* %107)
  %109 = call i32 @strcatW(i8* %23, i8* %26)
  br label %116

110:                                              ; preds = %87
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @strcpyW(i8* %23, i8* %26)
  br label %115

115:                                              ; preds = %113, %110
  br label %116

116:                                              ; preds = %115, %106
  %117 = call i32 @PathAddBackslashW(i8* %23)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i8**, i8*** %6, align 8
  %122 = call i32 @ACTION_SearchDirectory(%struct.TYPE_19__* %118, %struct.TYPE_17__* %119, i8* %23, i32 %120, i8** %121)
  store i32 %122, i32* %17, align 4
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @msi_free(i8* %123)
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = call i32 @msiobj_release(i32* %126)
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %131

131:                                              ; preds = %116, %61, %42
  %132 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32) #2

declare dso_local %struct.TYPE_18__* @MSI_QueryGetRecord(i32, i8*, i32) #2

declare dso_local i64 @MSI_RecordGetString(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @ACTION_AppSearchSigName(%struct.TYPE_19__*, i64, %struct.TYPE_17__*, i8**) #2

declare dso_local i32 @ACTION_FreeSignature(%struct.TYPE_17__*) #2

declare dso_local i32 @msiobj_release(i32*) #2

declare dso_local i32 @MSI_RecordGetStringW(%struct.TYPE_18__*, i32, i8*, i32*) #2

declare dso_local i64 @MSI_RecordIsNull(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @ACTION_ExpandAnyPath(%struct.TYPE_19__*, i8*, i8*, i32) #2

declare dso_local i32 @strcpyW(i8*, i8*) #2

declare dso_local i32 @GetFileAttributesW(i8*) #2

declare dso_local i32 @PathRemoveFileSpecW(i8*) #2

declare dso_local i32 @PathAddBackslashW(i8*) #2

declare dso_local i32 @strcatW(i8*, i8*) #2

declare dso_local i32 @ACTION_SearchDirectory(%struct.TYPE_19__*, %struct.TYPE_17__*, i8*, i32, i8**) #2

declare dso_local i32 @msi_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
