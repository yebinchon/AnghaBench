; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_unzip.c_open_zip_entry.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_unzip.c_open_zip_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot find named zip archive entry\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unknown zip method: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*)* @open_zip_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_zip_entry(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.TYPE_9__* @lookup_zip_entry(i32* %18, %struct.TYPE_10__* %19, i8* %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %11, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %27 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %25, i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = call i32 @read_zip_entry_header(i32* %29, %struct.TYPE_10__* %30, %struct.TYPE_9__* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @fz_tell(i32* %41, i32* %42)
  %44 = call i32* @fz_open_null_filter(i32* %36, i32* %37, i32 %40, i32 %43)
  store i32* %44, i32** %4, align 8
  br label %57

45:                                               ; preds = %28
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32* @fz_open_flated(i32* %49, i32* %50, i32 -15)
  store i32* %51, i32** %4, align 8
  br label %57

52:                                               ; preds = %45
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %53, i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %48, %35
  %58 = load i32*, i32** %4, align 8
  ret i32* %58
}

declare dso_local %struct.TYPE_9__* @lookup_zip_entry(i32*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @read_zip_entry_header(i32*, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32* @fz_open_null_filter(i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_tell(i32*, i32*) #1

declare dso_local i32* @fz_open_flated(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
