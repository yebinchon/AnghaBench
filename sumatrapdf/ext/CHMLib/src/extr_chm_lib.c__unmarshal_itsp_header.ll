; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__unmarshal_itsp_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__unmarshal_itsp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmItspHeader = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i32 }

@_CHM_ITSP_V1_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ITSP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.chmItspHeader*)* @_unmarshal_itsp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_unmarshal_itsp_header(i8** %0, i32* %1, %struct.chmItspHeader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chmItspHeader*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.chmItspHeader* %2, %struct.chmItspHeader** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @_CHM_ITSP_V1_LEN, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

13:                                               ; preds = %3
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %17 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @_unmarshal_char_array(i8** %14, i32* %15, i32 %18, i32 4)
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %23 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %22, i32 0, i32 0
  %24 = call i32 @_unmarshal_int32(i8** %20, i32* %21, i32* %23)
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %28 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %27, i32 0, i32 1
  %29 = call i32 @_unmarshal_int32(i8** %25, i32* %26, i32* %28)
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %33 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %32, i32 0, i32 2
  %34 = call i32 @_unmarshal_int32(i8** %30, i32* %31, i32* %33)
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %38 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %37, i32 0, i32 3
  %39 = call i32 @_unmarshal_uint32(i8** %35, i32* %36, i64* %38)
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %43 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %42, i32 0, i32 4
  %44 = call i32 @_unmarshal_int32(i8** %40, i32* %41, i32* %43)
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %48 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %47, i32 0, i32 5
  %49 = call i32 @_unmarshal_int32(i8** %45, i32* %46, i32* %48)
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %53 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %52, i32 0, i32 6
  %54 = call i32 @_unmarshal_int32(i8** %50, i32* %51, i32* %53)
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %58 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %57, i32 0, i32 7
  %59 = call i32 @_unmarshal_int32(i8** %55, i32* %56, i32* %58)
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %63 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %62, i32 0, i32 8
  %64 = call i32 @_unmarshal_int32(i8** %60, i32* %61, i32* %63)
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %68 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %67, i32 0, i32 9
  %69 = call i32 @_unmarshal_uint32(i8** %65, i32* %66, i64* %68)
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %73 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %72, i32 0, i32 10
  %74 = call i32 @_unmarshal_int32(i8** %70, i32* %71, i32* %73)
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %78 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %77, i32 0, i32 11
  %79 = call i32 @_unmarshal_uint32(i8** %75, i32* %76, i64* %78)
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %83 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %82, i32 0, i32 14
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @_unmarshal_uuid(i8** %80, i32* %81, i32 %84)
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %89 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @_unmarshal_uchar_array(i8** %86, i32* %87, i32 %90, i32 16)
  %92 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %93 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @memcmp(i32 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %118

98:                                               ; preds = %13
  %99 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %100 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %118

104:                                              ; preds = %98
  %105 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %106 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @_CHM_ITSP_V1_LEN, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %118

111:                                              ; preds = %104
  %112 = load %struct.chmItspHeader*, %struct.chmItspHeader** %7, align 8
  %113 = getelementptr inbounds %struct.chmItspHeader, %struct.chmItspHeader* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %118

117:                                              ; preds = %111
  store i32 1, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %116, %110, %103, %97, %12
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @_unmarshal_char_array(i8**, i32*, i32, i32) #1

declare dso_local i32 @_unmarshal_int32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_uint32(i8**, i32*, i64*) #1

declare dso_local i32 @_unmarshal_uuid(i8**, i32*, i32) #1

declare dso_local i32 @_unmarshal_uchar_array(i8**, i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
