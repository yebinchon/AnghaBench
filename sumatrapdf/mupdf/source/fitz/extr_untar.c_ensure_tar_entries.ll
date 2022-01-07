; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_untar.c_ensure_tar_entries.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_untar.c_ensure_tar_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@SEEK_SET = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"premature end of data in tar entry name\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"premature end of data in tar entry size\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"tar archive entry too large\00", align 1
@tar_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*)* @ensure_tar_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_tar_entries(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [100 x i8], align 16
  %7 = alloca [12 x i8], align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i32 @fz_seek(i32* %19, i32* %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %2, %111, %112
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @fz_tell(i32* %24, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %31 = call i32 @nelem(i8* %30)
  %32 = call i64 @fz_read(i32* %27, i32* %28, i8* %29, i32 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %35 = call i32 @nelem(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %41 = call i32 @fz_throw(i32* %39, i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %23
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %44 = call i32 @nelem(i8* %43)
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 %46
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %49 = call i64 @strlen(i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %161

52:                                               ; preds = %42
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @fz_seek(i32* %53, i32* %54, i32 24, i32 1)
  %56 = load i32*, i32** %3, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %59 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %60 = call i32 @nelem(i8* %59)
  %61 = call i64 @fz_read(i32* %56, i32* %57, i8* %58, i32 %60)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %64 = call i32 @nelem(i8* %63)
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %52
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %70 = call i32 @fz_throw(i32* %68, i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %52
  %72 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %73 = call i32 @nelem(i8* %72)
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 %75
  store i8 0, i8* %76, align 1
  %77 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %78 = call i32 @otoi(i8* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @INT_MAX, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %85 = call i32 @fz_throw(i32* %83, i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %71
  %87 = load i32*, i32** %3, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @fz_seek(i32* %87, i32* %88, i32 20, i32 1)
  %90 = load i32*, i32** %3, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call signext i8 @fz_read_byte(i32* %90, i32* %91)
  store i8 %92, i8* %8, align 1
  %93 = load i32*, i32** %3, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @fz_seek(i32* %93, i32* %94, i32 355, i32 1)
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 511
  %98 = sdiv i32 %97, 512
  store i32 %98, i32* %10, align 4
  %99 = load i32*, i32** %3, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = mul nsw i32 %101, 512
  %103 = call i32 @fz_seek(i32* %99, i32* %100, i32 %102, i32 1)
  %104 = load i8, i8* %8, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 48
  br i1 %106, label %107, label %112

107:                                              ; preds = %86
  %108 = load i8, i8* %8, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %23

112:                                              ; preds = %107, %86
  %113 = load i32*, i32** %3, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  %121 = load i32, i32* @tar_entry, align 4
  %122 = call %struct.TYPE_8__* @fz_realloc_array(i32* %113, %struct.TYPE_8__* %116, i32 %120, i32 %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %124, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %127 = call i32 @fz_strdup(i32* %125, i8* %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  store i32 %127, i32* %136, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i32 %137, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  store i32 %147, i32* %156, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %23

161:                                              ; preds = %51
  ret void
}

declare dso_local i32 @fz_seek(i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_tell(i32*, i32*) #1

declare dso_local i64 @fz_read(i32*, i32*, i8*, i32) #1

declare dso_local i32 @nelem(i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @otoi(i8*) #1

declare dso_local signext i8 @fz_read_byte(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @fz_realloc_array(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @fz_strdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
