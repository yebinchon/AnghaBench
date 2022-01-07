; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stream-read.c_fz_read_uint64_le.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stream-read.c_fz_read_uint64_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"premature end of file in int64\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_read_uint64_le(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @fz_read_byte(i32* %13, i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @fz_read_byte(i32* %16, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @fz_read_byte(i32* %19, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @fz_read_byte(i32* %22, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @fz_read_byte(i32* %25, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @fz_read_byte(i32* %28, i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @fz_read_byte(i32* %31, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @fz_read_byte(i32* %34, i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @EOF, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %68, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @EOF, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %68, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @EOF, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @EOF, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %68, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @EOF, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @EOF, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @EOF, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @EOF, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64, %60, %56, %52, %48, %44, %40, %2
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %71 = call i32 @fz_throw(i32* %69, i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %73, %75
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %77, 16
  %79 = or i32 %76, %78
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 %80, 24
  %82 = or i32 %79, %81
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 %83, 32
  %85 = or i32 %82, %84
  %86 = load i32, i32* %10, align 4
  %87 = shl i32 %86, 40
  %88 = or i32 %85, %87
  %89 = load i32, i32* %11, align 4
  %90 = shl i32 %89, 48
  %91 = or i32 %88, %90
  %92 = load i32, i32* %12, align 4
  %93 = shl i32 %92, 56
  %94 = or i32 %91, %93
  ret i32 %94
}

declare dso_local i32 @fz_read_byte(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
