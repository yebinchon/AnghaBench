; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__unmarshal_pmgl_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__unmarshal_pmgl_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmPmglHeader = type { i32, i32, i32, i32, i32 }

@_CHM_PMGL_LEN = common dso_local global i32 0, align 4
@_chm_pmgl_marker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32, %struct.chmPmglHeader*)* @_unmarshal_pmgl_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_unmarshal_pmgl_header(i8** %0, i32* %1, i32 %2, %struct.chmPmglHeader* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.chmPmglHeader*, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.chmPmglHeader* %3, %struct.chmPmglHeader** %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @_CHM_PMGL_LEN, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @_CHM_PMGL_LEN, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %64

20:                                               ; preds = %15
  %21 = load i8**, i8*** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %9, align 8
  %24 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @_unmarshal_char_array(i8** %21, i32* %22, i32 %25, i32 4)
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %9, align 8
  %30 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %29, i32 0, i32 0
  %31 = call i32 @_unmarshal_uint32(i8** %27, i32* %28, i32* %30)
  %32 = load i8**, i8*** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %9, align 8
  %35 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %34, i32 0, i32 1
  %36 = call i32 @_unmarshal_uint32(i8** %32, i32* %33, i32* %35)
  %37 = load i8**, i8*** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %9, align 8
  %40 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %39, i32 0, i32 4
  %41 = call i32 @_unmarshal_int32(i8** %37, i32* %38, i32* %40)
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %9, align 8
  %45 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %44, i32 0, i32 3
  %46 = call i32 @_unmarshal_int32(i8** %42, i32* %43, i32* %45)
  %47 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %9, align 8
  %48 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @_chm_pmgl_marker, align 4
  %51 = call i64 @memcmp(i32 %49, i32 %50, i32 4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %64

54:                                               ; preds = %20
  %55 = load %struct.chmPmglHeader*, %struct.chmPmglHeader** %9, align 8
  %56 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @_CHM_PMGL_LEN, align 4
  %60 = sub i32 %58, %59
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %64

63:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %62, %53, %19, %14
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @_unmarshal_char_array(i8**, i32*, i32, i32) #1

declare dso_local i32 @_unmarshal_uint32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_int32(i8**, i32*, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
