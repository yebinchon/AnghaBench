; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_document.c_fz_open_accelerated_document_with_stream.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_document.c_fz_open_accelerated_document_with_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* (i32*, i32*)*, i32* (i32*, i32*, i32*)* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no document to open\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"cannot find document handler for file type: %s\00", align 1
@pdf_document_handler = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fz_open_accelerated_document_with_stream(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %19 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %17, i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.TYPE_4__* @fz_recognize_document(i32* %21, i8* %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %10, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %27, i32 %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32* (i32*, i32*, i32*)*, i32* (i32*, i32*, i32*)** %33, align 8
  %35 = icmp ne i32* (i32*, i32*, i32*)* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32* (i32*, i32*)*, i32* (i32*, i32*)** %41, align 8
  %43 = icmp eq i32* (i32*, i32*)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32* (i32*, i32*, i32*)*, i32* (i32*, i32*, i32*)** %46, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32* %47(i32* %48, i32* %49, i32* %50)
  store i32* %51, i32** %5, align 8
  br label %67

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @fz_drop_stream(i32* %57, i32* %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32* (i32*, i32*)*, i32* (i32*, i32*)** %62, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* %63(i32* %64, i32* %65)
  store i32* %66, i32** %5, align 8
  br label %67

67:                                               ; preds = %60, %44
  %68 = load i32*, i32** %5, align 8
  ret i32* %68
}

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @fz_recognize_document(i32*, i8*) #1

declare dso_local i32 @fz_drop_stream(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
