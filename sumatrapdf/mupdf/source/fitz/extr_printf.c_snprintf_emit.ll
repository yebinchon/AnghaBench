; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_snprintf_emit.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_snprintf_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snprintf_buffer = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @snprintf_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snprintf_emit(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snprintf_buffer*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.snprintf_buffer*
  store %struct.snprintf_buffer* %9, %struct.snprintf_buffer** %7, align 8
  %10 = load %struct.snprintf_buffer*, %struct.snprintf_buffer** %7, align 8
  %11 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.snprintf_buffer*, %struct.snprintf_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.snprintf_buffer*, %struct.snprintf_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.snprintf_buffer*, %struct.snprintf_buffer** %7, align 8
  %23 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %18, i32* %25, align 4
  br label %26

26:                                               ; preds = %17, %3
  %27 = load %struct.snprintf_buffer*, %struct.snprintf_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.snprintf_buffer, %struct.snprintf_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
