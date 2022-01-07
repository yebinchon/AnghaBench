; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_keep_freetype.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_keep_freetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i32 }

@FZ_LOCK_FREETYPE = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot init freetype: %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"FT_Done_Library(): %s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"freetype version too old: %d.%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @fz_keep_freetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_keep_freetype(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %14 = call i32 @fz_lock(%struct.TYPE_9__* %12, i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %26 = call i32 @fz_unlock(%struct.TYPE_9__* %24, i32 %25)
  br label %92

27:                                               ; preds = %1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = call i32 @FT_New_Library(i32* %29, i64* %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4
  %37 = call i8* @ft_error_string(i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %40 = call i32 @fz_unlock(%struct.TYPE_9__* %38, i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @fz_throw(%struct.TYPE_9__* %41, i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %35, %27
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @FT_Add_Default_Modules(i64 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @FT_Library_Version(i64 %52, i32* %4, i32* %5, i32* %6)
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %84

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 7
  br i1 %61, label %62, label %84

62:                                               ; preds = %59
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @FT_Done_Library(i64 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = load i32, i32* %3, align 4
  %72 = call i8* @ft_error_string(i32 %71)
  %73 = call i32 @fz_warn(%struct.TYPE_9__* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %77 = call i32 @fz_unlock(%struct.TYPE_9__* %75, i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @fz_throw(%struct.TYPE_9__* %78, i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %74, %59, %56, %45
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %91 = call i32 @fz_unlock(%struct.TYPE_9__* %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %19
  ret void
}

declare dso_local i32 @fz_lock(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @fz_unlock(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @FT_New_Library(i32*, i64*) #1

declare dso_local i8* @ft_error_string(i32) #1

declare dso_local i32 @fz_throw(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @FT_Add_Default_Modules(i64) #1

declare dso_local i32 @FT_Library_Version(i64, i32*, i32*, i32*) #1

declare dso_local i32 @FT_Done_Library(i64) #1

declare dso_local i32 @fz_warn(%struct.TYPE_9__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
