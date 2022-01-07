; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__unmarshal_lzxc_reset_table.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__unmarshal_lzxc_reset_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmLzxcResetTable = type { i32, i32, i32, i32, i64, i64, i64 }

@_CHM_LZXC_RESETTABLE_V1_LEN = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.chmLzxcResetTable*)* @_unmarshal_lzxc_reset_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_unmarshal_lzxc_reset_table(i8** %0, i32* %1, %struct.chmLzxcResetTable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chmLzxcResetTable*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.chmLzxcResetTable* %2, %struct.chmLzxcResetTable** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @_CHM_LZXC_RESETTABLE_V1_LEN, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

13:                                               ; preds = %3
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %17 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %16, i32 0, i32 0
  %18 = call i32 @_unmarshal_uint32(i8** %14, i32* %15, i32* %17)
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %22 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %21, i32 0, i32 1
  %23 = call i32 @_unmarshal_uint32(i8** %19, i32* %20, i32* %22)
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %27 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %26, i32 0, i32 2
  %28 = call i32 @_unmarshal_uint32(i8** %24, i32* %25, i32* %27)
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %32 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %31, i32 0, i32 3
  %33 = call i32 @_unmarshal_uint32(i8** %29, i32* %30, i32* %32)
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %37 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %36, i32 0, i32 4
  %38 = call i32 @_unmarshal_uint64(i8** %34, i32* %35, i64* %37)
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %42 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %41, i32 0, i32 5
  %43 = call i32 @_unmarshal_uint64(i8** %39, i32* %40, i64* %42)
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %47 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %46, i32 0, i32 6
  %48 = call i32 @_unmarshal_uint64(i8** %44, i32* %45, i64* %47)
  %49 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %50 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %80

54:                                               ; preds = %13
  %55 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %56 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @UINT_MAX, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %62 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UINT_MAX, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %54
  store i32 0, i32* %4, align 4
  br label %80

67:                                               ; preds = %60
  %68 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %69 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load %struct.chmLzxcResetTable*, %struct.chmLzxcResetTable** %7, align 8
  %74 = getelementptr inbounds %struct.chmLzxcResetTable, %struct.chmLzxcResetTable* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UINT_MAX, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %67
  store i32 0, i32* %4, align 4
  br label %80

79:                                               ; preds = %72
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %78, %66, %53, %12
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @_unmarshal_uint32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_uint64(i8**, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
