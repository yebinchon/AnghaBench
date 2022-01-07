; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c_chm_resolve_object.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c_chm_resolve_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32, i32, i64 }
%struct.chmUnitInfo = type { i32 }

@CHM_RESOLVE_FAILURE = common dso_local global i32 0, align 4
@_chm_pmgl_marker = common dso_local global i32 0, align 4
@CHM_RESOLVE_SUCCESS = common dso_local global i32 0, align 4
@_chm_pmgi_marker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chm_resolve_object(%struct.chmFile* %0, i8* %1, %struct.chmUnitInfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.chmFile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.chmUnitInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.chmFile* %0, %struct.chmFile** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.chmUnitInfo* %2, %struct.chmUnitInfo** %7, align 8
  %11 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %12 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @malloc(i32 %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @CHM_RESOLVE_FAILURE, align 4
  store i32 %18, i32* %4, align 4
  br label %97

19:                                               ; preds = %3
  %20 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %21 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %92, %19
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %93

26:                                               ; preds = %23
  %27 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %30 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %35 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = add nsw i32 %32, %37
  %39 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %40 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @_chm_fetch_bytes(%struct.chmFile* %27, i32* %28, i32 %38, i32 %41)
  %43 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %44 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @free(i32* %48)
  %50 = load i32, i32* @CHM_RESOLVE_FAILURE, align 4
  store i32 %50, i32* %4, align 4
  br label %97

51:                                               ; preds = %26
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @_chm_pmgl_marker, align 4
  %54 = call i64 @memcmp(i32* %52, i32 %53, i32 4)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %59 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32* @_chm_find_in_PMGL(i32* %57, i32 %60, i8* %61)
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @free(i32* %66)
  %68 = load i32, i32* @CHM_RESOLVE_FAILURE, align 4
  store i32 %68, i32* %4, align 4
  br label %97

69:                                               ; preds = %56
  %70 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %7, align 8
  %71 = call i32 @_chm_parse_PMGL_entry(i32** %10, %struct.chmUnitInfo* %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @free(i32* %72)
  %74 = load i32, i32* @CHM_RESOLVE_SUCCESS, align 4
  store i32 %74, i32* %4, align 4
  br label %97

75:                                               ; preds = %51
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @_chm_pmgi_marker, align 4
  %78 = call i64 @memcmp(i32* %76, i32 %77, i32 4)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %83 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @_chm_find_in_PMGI(i32* %81, i32 %84, i8* %85)
  store i32 %86, i32* %8, align 4
  br label %91

87:                                               ; preds = %75
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @free(i32* %88)
  %90 = load i32, i32* @CHM_RESOLVE_FAILURE, align 4
  store i32 %90, i32* %4, align 4
  br label %97

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  br label %23

93:                                               ; preds = %23
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @free(i32* %94)
  %96 = load i32, i32* @CHM_RESOLVE_FAILURE, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %87, %69, %65, %47, %17
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @_chm_fetch_bytes(%struct.chmFile*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32* @_chm_find_in_PMGL(i32*, i32, i8*) #1

declare dso_local i32 @_chm_parse_PMGL_entry(i32**, %struct.chmUnitInfo*) #1

declare dso_local i32 @_chm_find_in_PMGI(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
