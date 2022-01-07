; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_unzip.c_ensure_zip_entries.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_unzip.c_ensure_zip_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PK\05\06\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot find end of central directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @ensure_zip_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_zip_entries(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @SEEK_END, align 4
  %19 = call i32 @fz_seek(i32* %16, i32* %17, i32 0, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @fz_tell(i32* %20, i32* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @fz_minz(i64 %23, i32 66047)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @fz_minz(i64 %25, i32 512)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %71, %2
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @fz_seek(i32* %32, i32* %33, i32 %37, i32 0)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %42 = call i64 @fz_read(i32* %39, i32* %40, i8* %41, i32 512)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %43, 4
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %74

46:                                               ; preds = %31
  %47 = load i64, i64* %11, align 8
  %48 = sub i64 %47, 4
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %68, %46
  %50 = load i64, i64* %10, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = call i32 @memcmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = sub i64 %61, %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %63, %64
  %66 = call i32 @read_zip_dir_imp(i32* %59, %struct.TYPE_6__* %60, i64 %65)
  br label %78

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %10, align 8
  br label %49

71:                                               ; preds = %49
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 508
  store i64 %73, i64* %8, align 8
  br label %27

74:                                               ; preds = %45, %27
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %77 = call i32 @fz_throw(i32* %75, i32 %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %58
  ret void
}

declare dso_local i32 @fz_seek(i32*, i32*, i32, i32) #1

declare dso_local i64 @fz_tell(i32*, i32*) #1

declare dso_local i64 @fz_minz(i64, i32) #1

declare dso_local i64 @fz_read(i32*, i32*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @read_zip_dir_imp(i32*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
