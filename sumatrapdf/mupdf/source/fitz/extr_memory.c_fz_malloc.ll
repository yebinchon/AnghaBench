; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_memory.c_fz_malloc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_memory.c_fz_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_ERROR_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"malloc of %zu bytes failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fz_malloc(i32* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %23

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @do_scavenging_malloc(i32* %11, i64 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @FZ_ERROR_MEMORY, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @fz_throw(i32* %17, i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %21, %9
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

declare dso_local i8* @do_scavenging_malloc(i32*, i64) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
