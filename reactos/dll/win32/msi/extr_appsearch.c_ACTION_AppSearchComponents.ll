; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearchComponents.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearchComponents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ACTION_AppSearchComponents.query = internal constant [54 x i8] c"SELECT * FROM `CompLocator` WHERE `Signature_` = '%s'\00", align 16
@ACTION_AppSearchComponents.sigquery = internal constant [51 x i8] c"SELECT * FROM `Signature` WHERE `Signature` = '%s'\00", align 16
@TRUE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to query CompLocator for %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@msidbLocatorTypeDirectory = common dso_local global i64 0, align 8
@msidbLocatorTypeFileName = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32**, %struct.TYPE_10__*)* @ACTION_AppSearchComponents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ACTION_AppSearchComponents(%struct.TYPE_12__* %0, i32** %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  store i32 %26, i32* %17, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @debugstr_w(i32 %29)
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32**, i32*** %6, align 8
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_11__* @MSI_QueryGetRecord(i32 %35, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @ACTION_AppSearchComponents.query, i64 0, i64 0), i32 %38)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %3
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @debugstr_w(i32 %45)
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %48, i64* %4, align 8
  store i32 1, i32* %20, align 4
  br label %153

49:                                               ; preds = %3
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = call i32 @MSI_RecordGetString(%struct.TYPE_11__* %50, i32 1)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = call i32 @MSI_RecordGetString(%struct.TYPE_11__* %52, i32 2)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = call i64 @MSI_RecordGetInteger(%struct.TYPE_11__* %54, i32 3)
  store i64 %55, i64* %14, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.TYPE_11__* @MSI_QueryGetRecord(i32 %58, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ACTION_AppSearchComponents.sigquery, i64 0, i64 0), i32 %59)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %9, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = icmp ne %struct.TYPE_11__* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %63, %49
  store i8 0, i8* %25, align 16
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @MsiLocateComponentW(i32 %66, i8* %25, i32* %17)
  %68 = load i8, i8* %25, align 16
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %141

71:                                               ; preds = %65
  %72 = call i32 @GetFileAttributesW(i8* %25)
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %141

77:                                               ; preds = %71
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %13, align 4
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* @msidbLocatorTypeDirectory, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = call i32* @app_search_file(i8* %25, %struct.TYPE_10__* %91)
  %93 = load i32**, i32*** %6, align 8
  store i32* %92, i32** %93, align 8
  br label %140

94:                                               ; preds = %87, %84, %77
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %117, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* @msidbLocatorTypeDirectory, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101, %97
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* @msidbLocatorTypeFileName, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = call i32* @strrchrW(i8* %25, i8 signext 92)
  store i32* %109, i32** %18, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 0, i32* %111, align 4
  br label %114

112:                                              ; preds = %104
  %113 = call i32 @PathAddBackslashW(i8* %25)
  br label %114

114:                                              ; preds = %112, %108
  %115 = call i32* @strdupW(i8* %25)
  %116 = load i32**, i32*** %6, align 8
  store i32* %115, i32** %116, align 8
  br label %139

117:                                              ; preds = %101, %94
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = call i32 @PathAddBackslashW(i8* %25)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %123 = call i32 @MSI_RecordGetString(%struct.TYPE_11__* %122, i32 2)
  %124 = call i32 @lstrcatW(i8* %25, i32 %123)
  %125 = call i32 @GetFileAttributesW(i8* %25)
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %120
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = call i32* @strdupW(i8* %25)
  %136 = load i32**, i32*** %6, align 8
  store i32* %135, i32** %136, align 8
  br label %137

137:                                              ; preds = %134, %129, %120
  br label %138

138:                                              ; preds = %137, %117
  br label %139

139:                                              ; preds = %138, %114
  br label %140

140:                                              ; preds = %139, %90
  br label %141

141:                                              ; preds = %140, %76, %70
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %143 = icmp ne %struct.TYPE_11__* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = call i32 @msiobj_release(i32* %146)
  br label %148

148:                                              ; preds = %144, %141
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = call i32 @msiobj_release(i32* %150)
  %152 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %152, i64* %4, align 8
  store i32 1, i32* %20, align 4
  br label %153

153:                                              ; preds = %148, %42
  %154 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i64, i64* %4, align 8
  ret i64 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32) #2

declare dso_local %struct.TYPE_11__* @MSI_QueryGetRecord(i32, i8*, i32) #2

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_11__*, i32) #2

declare dso_local i64 @MSI_RecordGetInteger(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @MsiLocateComponentW(i32, i8*, i32*) #2

declare dso_local i32 @GetFileAttributesW(i8*) #2

declare dso_local i32* @app_search_file(i8*, %struct.TYPE_10__*) #2

declare dso_local i32* @strrchrW(i8*, i8 signext) #2

declare dso_local i32 @PathAddBackslashW(i8*) #2

declare dso_local i32* @strdupW(i8*) #2

declare dso_local i32 @lstrcatW(i8*, i32) #2

declare dso_local i32 @msiobj_release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
