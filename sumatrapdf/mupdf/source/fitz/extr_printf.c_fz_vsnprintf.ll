; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_fz_vsnprintf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_fz_vsnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snprintf_buffer = type { i8*, i64, i64 }

@snprintf_emit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fz_vsnprintf(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snprintf_buffer, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %9, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i64, i64* %6, align 8
  %16 = sub i64 %15, 1
  br label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i64 [ %16, %14 ], [ 0, %17 ]
  %20 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %9, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %9, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @snprintf_emit, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @fz_format_string(i32* null, %struct.snprintf_buffer* %9, i32 %22, i8* %23, i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %9, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %9, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %9, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  br label %41

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %39, 1
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i64 [ %37, %35 ], [ %40, %38 ]
  %43 = getelementptr inbounds i8, i8* %30, i64 %42
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %41, %18
  %45 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %9, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  ret i64 %46
}

declare dso_local i32 @fz_format_string(i32*, %struct.snprintf_buffer*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
