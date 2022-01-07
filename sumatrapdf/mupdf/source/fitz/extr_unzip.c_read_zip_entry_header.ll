; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_unzip.c_read_zip_entry_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_unzip.c_read_zip_entry_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@ZIP_LOCAL_FILE_SIG = common dso_local global i64 0, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"wrong zip local file signature (0x%x)\00", align 1
@ZIP_ENCRYPTED_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"zip content is encrypted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_7__*)* @read_zip_entry_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_zip_entry_header(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fz_seek(i32* %17, i32* %18, i32 %21, i32 0)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @fz_read_uint32_le(i32* %23, i32* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @ZIP_LOCAL_FILE_SIG, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %30, i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %29, %3
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @fz_read_uint16_le(i32* %35, i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @fz_read_uint16_le(i32* %38, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ZIP_ENCRYPTED_FLAG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %48 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %46, i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %34
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @fz_read_uint16_le(i32* %50, i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @fz_read_uint16_le(i32* %53, i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @fz_read_uint16_le(i32* %56, i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @fz_read_uint32_le(i32* %59, i32* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @fz_read_uint32_le(i32* %62, i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i64 @fz_read_uint32_le(i32* %65, i32* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @fz_read_uint16_le(i32* %68, i32* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @fz_read_uint16_le(i32* %71, i32* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @fz_seek(i32* %74, i32* %75, i32 %78, i32 1)
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32 @fz_seek(i32*, i32*, i32, i32) #1

declare dso_local i64 @fz_read_uint32_le(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @fz_read_uint16_le(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
