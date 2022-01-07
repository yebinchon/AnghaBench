; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_uncompress_data_deflate64.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_uncompress_data_deflate64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_archive_zip_uncomp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32* }
%struct.TYPE_3__ = type { i32 }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unexpected Inflate error %d\00", align 1
@ERR_UNCOMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Premature EOS in Deflate stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ar_archive_zip_uncomp*, i8*, i64, i32)* @zip_uncompress_data_deflate64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zip_uncompress_data_deflate64(%struct.ar_archive_zip_uncomp* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ar_archive_zip_uncomp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ar_archive_zip_uncomp* %0, %struct.ar_archive_zip_uncomp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %14 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %19 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %23 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %27 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @inflate_process(i32 %21, i32* %30, i64* %10, i8* %31, i64* %11)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %34 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub i64 %36, %37
  %39 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %40 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %38
  store i64 %43, i64* %41, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %46 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @EOF, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %57, i64* %5, align 8
  br label %75

58:                                               ; preds = %50, %4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @EOF, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %62
  %69 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %70, i64* %5, align 8
  br label %75

71:                                               ; preds = %65, %58
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %11, align 8
  %74 = sub i64 %72, %73
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %71, %68, %54
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i32 @inflate_process(i32, i32*, i64*, i8*, i64*) #1

declare dso_local i32 @warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
