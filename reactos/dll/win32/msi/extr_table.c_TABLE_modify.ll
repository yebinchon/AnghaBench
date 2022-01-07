; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_modify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%p %d %p\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSIDBERROR_DUPLICATEKEY = common dso_local global i32 0, align 4
@ERROR_INVALID_DATA = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%p %d %p - mode not implemented\0A\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i32, i32*, i64)* @TABLE_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TABLE_modify(%struct.tagMSIVIEW* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.tagMSIVIEW*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %14 = bitcast %struct.tagMSIVIEW* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %9, align 8
  %15 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.tagMSIVIEW* %15, i32 %16, i32* %17)
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %115 [
    i32 138, label %20
    i32 128, label %24
    i32 137, label %48
    i32 136, label %61
    i32 134, label %74
    i32 132, label %79
    i32 139, label %84
    i32 135, label %88
    i32 133, label %109
    i32 131, label %109
    i32 129, label %109
    i32 130, label %109
  ]

20:                                               ; preds = %4
  %21 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @modify_delete_row(%struct.tagMSIVIEW* %21, i32* %22)
  store i64 %23, i64* %10, align 8
  br label %117

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @table_validate_new(%struct.TYPE_8__* %25, i32* %26, i64* %12)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load i32, i32* @MSIDBERROR_DUPLICATEKEY, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %31, %24
  br label %117

48:                                               ; preds = %4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @table_validate_new(%struct.TYPE_8__* %49, i32* %50, i64* null)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %117

56:                                               ; preds = %48
  %57 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i64 @TABLE_insert_row(%struct.tagMSIVIEW* %57, i32* %58, i32 -1, i32 %59)
  store i64 %60, i64* %10, align 8
  br label %117

61:                                               ; preds = %4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @table_validate_new(%struct.TYPE_8__* %62, i32* %63, i64* null)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %117

69:                                               ; preds = %61
  %70 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i64 @TABLE_insert_row(%struct.tagMSIVIEW* %70, i32* %71, i32 -1, i32 %72)
  store i64 %73, i64* %10, align 8
  br label %117

74:                                               ; preds = %4
  %75 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i64 @msi_refresh_record(%struct.tagMSIVIEW* %75, i32* %76, i64 %77)
  store i64 %78, i64* %10, align 8
  br label %117

79:                                               ; preds = %4
  %80 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @msi_table_update(%struct.tagMSIVIEW* %80, i32* %81, i64 %82)
  store i64 %83, i64* %10, align 8
  br label %117

84:                                               ; preds = %4
  %85 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @msi_table_assign(%struct.tagMSIVIEW* %85, i32* %86)
  store i64 %87, i64* %10, align 8
  br label %117

88:                                               ; preds = %4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i64 @msi_table_find_row(%struct.TYPE_8__* %89, i32* %90, i64* %11, i64* %12)
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @ERROR_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i64 @table_validate_new(%struct.TYPE_8__* %96, i32* %97, i64* null)
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @ERROR_SUCCESS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i64 @TABLE_insert_row(%struct.tagMSIVIEW* %103, i32* %104, i32 -1, i32 %105)
  store i64 %106, i64* %10, align 8
  br label %107

107:                                              ; preds = %102, %95
  br label %108

108:                                              ; preds = %107, %88
  br label %117

109:                                              ; preds = %4, %4, %4, %4
  %110 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.tagMSIVIEW* %110, i32 %111, i32* %112)
  %114 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  store i64 %114, i64* %10, align 8
  br label %117

115:                                              ; preds = %4
  %116 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %115, %109, %108, %84, %79, %74, %69, %68, %56, %55, %47, %20
  %118 = load i64, i64* %10, align 8
  ret i64 %118
}

declare dso_local i32 @TRACE(i8*, %struct.tagMSIVIEW*, i32, i32*) #1

declare dso_local i64 @modify_delete_row(%struct.tagMSIVIEW*, i32*) #1

declare dso_local i64 @table_validate_new(%struct.TYPE_8__*, i32*, i64*) #1

declare dso_local i64 @TABLE_insert_row(%struct.tagMSIVIEW*, i32*, i32, i32) #1

declare dso_local i64 @msi_refresh_record(%struct.tagMSIVIEW*, i32*, i64) #1

declare dso_local i64 @msi_table_update(%struct.tagMSIVIEW*, i32*, i64) #1

declare dso_local i64 @msi_table_assign(%struct.tagMSIVIEW*, i32*) #1

declare dso_local i64 @msi_table_find_row(%struct.TYPE_8__*, i32*, i64*, i64*) #1

declare dso_local i32 @FIXME(i8*, %struct.tagMSIVIEW*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
