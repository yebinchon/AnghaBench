; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_init_uncompress.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_init_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.ar_archive_zip_uncomp }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ar_archive_zip_uncomp = type { i32, i32*, i32* }

@METHOD_DEFLATE = common dso_local global i64 0, align 8
@zip_uncompress_data_deflate64 = common dso_local global i8* null, align 8
@zip_clear_uncompress_deflate64 = common dso_local global i8* null, align 8
@METHOD_DEFLATE64 = common dso_local global i64 0, align 8
@METHOD_BZIP2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"BZIP2 support requires BZIP2 (define HAVE_BZIP2)\00", align 1
@METHOD_LZMA = common dso_local global i64 0, align 8
@zip_uncompress_data_lzma = common dso_local global i32* null, align 8
@zip_clear_uncompress_lzma = common dso_local global i32* null, align 8
@METHOD_PPMD = common dso_local global i64 0, align 8
@zip_uncompress_data_ppmd = common dso_local global i32* null, align 8
@zip_clear_uncompress_ppmd = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Unsupported compression method %d\00", align 1
@zip_clear_uncompress_bzip2 = common dso_local global i32* null, align 8
@zip_clear_uncompress_deflate = common dso_local global i32* null, align 8
@zip_uncompress_data_bzip2 = common dso_local global i32* null, align 8
@zip_uncompress_data_deflate = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @zip_init_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_init_uncompress(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.ar_archive_zip_uncomp*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store %struct.ar_archive_zip_uncomp* %6, %struct.ar_archive_zip_uncomp** %4, align 8
  %7 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %8 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %135

12:                                               ; preds = %1
  %13 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %14 = call i32 @memset(%struct.ar_archive_zip_uncomp* %13, i32 0, i32 24)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @METHOD_DEFLATE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %12
  %22 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %23 = call i64 @zip_init_uncompress_deflate64(%struct.ar_archive_zip_uncomp* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i8*, i8** @zip_uncompress_data_deflate64, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %29 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load i8*, i8** @zip_clear_uncompress_deflate64, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %33 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %25, %21
  br label %117

35:                                               ; preds = %12
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @METHOD_DEFLATE64, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %44 = call i64 @zip_init_uncompress_deflate64(%struct.ar_archive_zip_uncomp* %43, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i8*, i8** @zip_uncompress_data_deflate64, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %50 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load i8*, i8** @zip_clear_uncompress_deflate64, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %54 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %46, %42
  br label %116

56:                                               ; preds = %35
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @METHOD_BZIP2, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %115

65:                                               ; preds = %56
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @METHOD_LZMA, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %65
  %73 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @zip_init_uncompress_lzma(%struct.ar_archive_zip_uncomp* %73, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load i32*, i32** @zip_uncompress_data_lzma, align 8
  %82 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %83 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %82, i32 0, i32 2
  store i32* %81, i32** %83, align 8
  %84 = load i32*, i32** @zip_clear_uncompress_lzma, align 8
  %85 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %86 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  br label %87

87:                                               ; preds = %80, %72
  br label %114

88:                                               ; preds = %65
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @METHOD_PPMD, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = call i64 @zip_init_uncompress_ppmd(%struct.TYPE_6__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i32*, i32** @zip_uncompress_data_ppmd, align 8
  %101 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %102 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = load i32*, i32** @zip_clear_uncompress_ppmd, align 8
  %104 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %105 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %104, i32 0, i32 1
  store i32* %103, i32** %105, align 8
  br label %106

106:                                              ; preds = %99, %95
  br label %113

107:                                              ; preds = %88
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %107, %106
  br label %114

114:                                              ; preds = %113, %87
  br label %115

115:                                              ; preds = %114, %63
  br label %116

116:                                              ; preds = %115, %55
  br label %117

117:                                              ; preds = %116, %34
  %118 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %119 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %124 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br label %127

127:                                              ; preds = %122, %117
  %128 = phi i1 [ false, %117 ], [ %126, %122 ]
  %129 = zext i1 %128 to i32
  %130 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %131 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %4, align 8
  %133 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %127, %11
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @memset(%struct.ar_archive_zip_uncomp*, i32, i32) #1

declare dso_local i64 @zip_init_uncompress_deflate64(%struct.ar_archive_zip_uncomp*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @zip_init_uncompress_lzma(%struct.ar_archive_zip_uncomp*, i32) #1

declare dso_local i64 @zip_init_uncompress_ppmd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
