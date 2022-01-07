; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_get_table_value_from_record.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_get_table_value_from_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@MSITYPE_STRING = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@LONG_STR_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"field %u value %d out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32*)* @get_table_value_from_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_table_value_from_record(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @MSI_RecordIsNull(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %17, %4
  %29 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %29, i32* %5, align 4
  br label %122

30:                                               ; preds = %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %36
  %38 = bitcast %struct.TYPE_7__* %10 to i8*
  %39 = bitcast %struct.TYPE_7__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @MSITYPE_IS_BINARY(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32*, i32** %9, align 8
  store i32 1, i32* %45, align 4
  br label %120

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MSITYPE_STRING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32* @msi_record_get_string(i32* %53, i32 %54, i32* %13)
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @msi_string2id(i32 %63, i32* %64, i32 %65, i32* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @ERROR_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @ERROR_NOT_FOUND, align 4
  store i32 %72, i32* %5, align 4
  br label %122

73:                                               ; preds = %58
  br label %76

74:                                               ; preds = %52
  %75 = load i32*, i32** %9, align 8
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %73
  br label %119

77:                                               ; preds = %46
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i32, i32* @LONG_STR_BYTES, align 4
  %82 = call i32 @bytes_per_column(%struct.TYPE_8__* %80, %struct.TYPE_7__* %10, i32 %81)
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %111

84:                                               ; preds = %77
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @MSI_RecordGetInteger(i32* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, -2147483648
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32*, i32** %9, align 8
  store i32 32768, i32* %91, align 4
  br label %110

92:                                               ; preds = %84
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @MSI_RecordGetInteger(i32* %93, i32 %94)
  %96 = add nsw i32 32768, %95
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, -65536
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load i32, i32* %8, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 32768
  %107 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %108, i32* %5, align 4
  br label %122

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %109, %90
  br label %118

111:                                              ; preds = %77
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @MSI_RecordGetInteger(i32* %112, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = xor i32 %115, -2147483648
  %117 = load i32*, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %110
  br label %119

119:                                              ; preds = %118, %76
  br label %120

120:                                              ; preds = %119, %44
  %121 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %102, %71, %28
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i64 @MSI_RecordIsNull(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @MSITYPE_IS_BINARY(i32) #1

declare dso_local i32* @msi_record_get_string(i32*, i32, i32*) #1

declare dso_local i32 @msi_string2id(i32, i32*, i32, i32*) #1

declare dso_local i32 @bytes_per_column(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
