; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_get_key_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_get_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@MSICOLINFO_NAMES = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@__const.get_key_value.szQuote = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str = private unnamed_addr constant [23 x i8] c"failed to get string!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, %struct.TYPE_7__*)* @get_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_key_value(i32* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [2 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @MSICOLINFO_NAMES, align 4
  %18 = call i64 @MSI_ViewGetColumnInfo(i32* %16, i32 %17, %struct.TYPE_7__** %8)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %102

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %34, %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = load i64, i64* %12, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %12, align 8
  %28 = call i32* @msi_dup_record_field(%struct.TYPE_7__* %25, i64 %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @strcmpW(i32 %29, i32* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @msi_free(i32* %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %24, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = call i32 @msiobj_release(i32* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @MSI_RecordGetStringW(%struct.TYPE_7__* %41, i64 %42, i32* null, i64* %13)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32* null, i32** %4, align 8
  br label %102

48:                                               ; preds = %37
  %49 = load i64, i64* %13, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %13, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @MSI_RecordGetString(%struct.TYPE_7__* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %48
  %56 = bitcast [2 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %56, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.get_key_value.szQuote, i32 0, i32 0), i64 2, i1 false)
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %57, 2
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = mul i64 %59, 1
  %61 = call i32* @msi_alloc(i64 %60)
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  store i32* null, i32** %4, align 8
  br label %102

65:                                               ; preds = %55
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %68 = call i32 @lstrcpyW(i32* %66, i8* %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = call i64 @MSI_RecordGetStringW(%struct.TYPE_7__* %69, i64 %70, i32* %72, i64* %13)
  store i64 %73, i64* %11, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %79 = call i32 @lstrcpyW(i32* %77, i8* %78)
  br label %92

80:                                               ; preds = %48
  %81 = load i64, i64* %13, align 8
  %82 = mul i64 %81, 1
  %83 = call i32* @msi_alloc(i64 %82)
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store i32* null, i32** %4, align 8
  br label %102

87:                                               ; preds = %80
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i64 @MSI_RecordGetStringW(%struct.TYPE_7__* %88, i64 %89, i32* %90, i64* %13)
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %87, %65
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @ERROR_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @msi_free(i32* %98)
  store i32* null, i32** %4, align 8
  br label %102

100:                                              ; preds = %92
  %101 = load i32*, i32** %10, align 8
  store i32* %101, i32** %4, align 8
  br label %102

102:                                              ; preds = %100, %96, %86, %64, %47, %22
  %103 = load i32*, i32** %4, align 8
  ret i32* %103
}

declare dso_local i64 @MSI_ViewGetColumnInfo(i32*, i32, %struct.TYPE_7__**) #1

declare dso_local i32* @msi_dup_record_field(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @strcmpW(i32, i32*) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_RecordGetStringW(%struct.TYPE_7__*, i64, i32*, i64*) #1

declare dso_local i64 @MSI_RecordGetString(%struct.TYPE_7__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @msi_alloc(i64) #1

declare dso_local i32 @lstrcpyW(i32*, i8*) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
