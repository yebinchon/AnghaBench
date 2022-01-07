; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_load_file_hash.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_load_file_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i8** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@load_file_hash.query = internal constant [49 x i8] c"SELECT * FROM `MsiFileHash` WHERE `File_` = '%s'\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @load_file_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_file_hash(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @debugstr_w(i32 %10)
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @MSI_OpenQuery(i32 %15, %struct.TYPE_15__** %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @load_file_hash.query, i64 0, i64 0), i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %70

24:                                               ; preds = %2
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = call i64 @MSI_ViewExecute(%struct.TYPE_15__* %25, i32* null)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %70

31:                                               ; preds = %24
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = call i64 @MSI_ViewFetch(%struct.TYPE_15__* %32, %struct.TYPE_14__** %6)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %70

38:                                               ; preds = %31
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 4, i32* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = call i8* @MSI_RecordGetInteger(%struct.TYPE_14__* %42, i32 3)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %43, i8** %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = call i8* @MSI_RecordGetInteger(%struct.TYPE_14__* %49, i32 4)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* %50, i8** %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = call i8* @MSI_RecordGetInteger(%struct.TYPE_14__* %56, i32 5)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  store i8* %57, i8** %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = call i8* @MSI_RecordGetInteger(%struct.TYPE_14__* %63, i32 6)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 3
  store i8* %64, i8** %69, align 8
  br label %70

70:                                               ; preds = %38, %37, %30, %23
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = icmp ne %struct.TYPE_15__* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = call i32 @msiobj_release(i32* %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %79 = icmp ne %struct.TYPE_14__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = call i32 @msiobj_release(i32* %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i64, i64* %7, align 8
  ret i64 %85
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i64 @MSI_OpenQuery(i32, %struct.TYPE_15__**, i8*, i32) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @MSI_ViewFetch(%struct.TYPE_15__*, %struct.TYPE_14__**) #1

declare dso_local i8* @MSI_RecordGetInteger(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
