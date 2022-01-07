; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_resolve_keypath.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_resolve_keypath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@msidbComponentAttributesRegistryKeyPath = common dso_local global i32 0, align 4
@resolve_keypath.query = internal constant [49 x i8] c"SELECT * FROM `Registry` WHERE `Registry` = '%s'\00", align 16
@resolve_keypath.fmt = internal constant [10 x i8] c"%02i:\\%s\\\00", align 1
@resolve_keypath.fmt2 = internal constant [12 x i8] c"%02i:\\%s\\%s\00", align 1
@msidbComponentAttributesODBCDataSource = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"UNIMPLEMENTED keypath as ODBC Source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, %struct.TYPE_17__*)* @resolve_keypath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_keypath(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @msi_get_target_folder(%struct.TYPE_15__* %20, i32 %23)
  %25 = call i32* @strdupW(i32 %24)
  store i32* %25, i32** %3, align 8
  br label %120

26:                                               ; preds = %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @msidbComponentAttributesRegistryKeyPath, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %26
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_14__* @MSI_QueryGetRecord(i32 %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @resolve_keypath.query, i64 0, i64 0), i32 %39)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %6, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = icmp ne %struct.TYPE_14__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store i32* null, i32** %3, align 8
  br label %120

44:                                               ; preds = %33
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = call i32 @MSI_RecordGetInteger(%struct.TYPE_14__* %45, i32 2)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = call i32 @MSI_RecordGetString(%struct.TYPE_14__* %47, i32 3)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = call i32 @MSI_RecordGetString(%struct.TYPE_14__* %49, i32 4)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @deformat_string(%struct.TYPE_15__* %51, i32 %52, i32** %9)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @deformat_string(%struct.TYPE_15__* %54, i32 %55, i32** %11)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @strlenW(i32* %57)
  %59 = add nsw i32 %58, 6
  store i32 %59, i32* %8, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %44
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @strlenW(i32* %63)
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %62, %44
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = call i32* @msi_alloc(i32 %71)
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 (i32*, i8*, i32, i32*, ...) @sprintfW(i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @resolve_keypath.fmt2, i64 0, i64 0), i32 %77, i32* %78, i32* %79)
  br label %86

81:                                               ; preds = %67
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 (i32*, i8*, i32, i32*, ...) @sprintfW(i32* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @resolve_keypath.fmt, i64 0, i64 0), i32 %83, i32* %84)
  br label %86

86:                                               ; preds = %81, %75
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @msi_free(i32* %87)
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @msi_free(i32* %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = call i32 @msiobj_release(i32* %92)
  %94 = load i32*, i32** %10, align 8
  store i32* %94, i32** %3, align 8
  br label %120

95:                                               ; preds = %26
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @msidbComponentAttributesODBCDataSource, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %120

104:                                              ; preds = %95
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.TYPE_16__* @msi_get_loaded_file(%struct.TYPE_15__* %105, i32 %108)
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %14, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %111 = icmp ne %struct.TYPE_16__* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32* @strdupW(i32 %115)
  store i32* %116, i32** %3, align 8
  br label %120

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  store i32* null, i32** %3, align 8
  br label %120

120:                                              ; preds = %119, %112, %102, %86, %43, %19
  %121 = load i32*, i32** %3, align 8
  ret i32* %121
}

declare dso_local i32* @strdupW(i32) #1

declare dso_local i32 @msi_get_target_folder(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_14__* @MSI_QueryGetRecord(i32, i8*, i32) #1

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @deformat_string(%struct.TYPE_15__*, i32, i32**) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @sprintfW(i32*, i8*, i32, i32*, ...) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local %struct.TYPE_16__* @msi_get_loaded_file(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
