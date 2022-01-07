; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_putc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmt = type { i32, i32, i32, i32*, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.fmt*, i32)* @fmt_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmt_putc(i32* %0, %struct.fmt* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fmt*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.fmt* %1, %struct.fmt** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fmt*, %struct.fmt** %5, align 8
  %8 = getelementptr inbounds %struct.fmt, %struct.fmt* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load %struct.fmt*, %struct.fmt** %5, align 8
  %13 = getelementptr inbounds %struct.fmt, %struct.fmt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @isdelim(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @isdelim(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load %struct.fmt*, %struct.fmt** %5, align 8
  %23 = getelementptr inbounds %struct.fmt, %struct.fmt* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.fmt*, %struct.fmt** %5, align 8
  call void @fmt_putc(i32* %24, %struct.fmt* %25, i32 32)
  br label %26

26:                                               ; preds = %21, %17, %11, %3
  %27 = load %struct.fmt*, %struct.fmt** %5, align 8
  %28 = getelementptr inbounds %struct.fmt, %struct.fmt* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.fmt*, %struct.fmt** %5, align 8
  %30 = getelementptr inbounds %struct.fmt, %struct.fmt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fmt*, %struct.fmt** %5, align 8
  %33 = getelementptr inbounds %struct.fmt, %struct.fmt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %26
  %37 = load %struct.fmt*, %struct.fmt** %5, align 8
  %38 = getelementptr inbounds %struct.fmt, %struct.fmt* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %38, align 8
  %41 = load %struct.fmt*, %struct.fmt** %5, align 8
  %42 = getelementptr inbounds %struct.fmt, %struct.fmt* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.fmt*, %struct.fmt** %5, align 8
  %45 = getelementptr inbounds %struct.fmt, %struct.fmt* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %43, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %36
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.fmt*, %struct.fmt** %5, align 8
  %51 = getelementptr inbounds %struct.fmt, %struct.fmt* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @fz_malloc(i32* %49, i32 %52)
  %54 = load %struct.fmt*, %struct.fmt** %5, align 8
  %55 = getelementptr inbounds %struct.fmt, %struct.fmt* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  %56 = load %struct.fmt*, %struct.fmt** %5, align 8
  %57 = getelementptr inbounds %struct.fmt, %struct.fmt* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.fmt*, %struct.fmt** %5, align 8
  %60 = getelementptr inbounds %struct.fmt, %struct.fmt* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.fmt*, %struct.fmt** %5, align 8
  %63 = getelementptr inbounds %struct.fmt, %struct.fmt* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcpy(i32* %58, i32* %61, i32 %64)
  br label %77

66:                                               ; preds = %36
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.fmt*, %struct.fmt** %5, align 8
  %69 = getelementptr inbounds %struct.fmt, %struct.fmt* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.fmt*, %struct.fmt** %5, align 8
  %72 = getelementptr inbounds %struct.fmt, %struct.fmt* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32* @fz_realloc(i32* %67, i32* %70, i32 %73)
  %75 = load %struct.fmt*, %struct.fmt** %5, align 8
  %76 = getelementptr inbounds %struct.fmt, %struct.fmt* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  br label %77

77:                                               ; preds = %66, %48
  br label %78

78:                                               ; preds = %77, %26
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.fmt*, %struct.fmt** %5, align 8
  %81 = getelementptr inbounds %struct.fmt, %struct.fmt* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.fmt*, %struct.fmt** %5, align 8
  %84 = getelementptr inbounds %struct.fmt, %struct.fmt* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  store i32 %79, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load %struct.fmt*, %struct.fmt** %5, align 8
  %92 = getelementptr inbounds %struct.fmt, %struct.fmt* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  br label %98

93:                                               ; preds = %78
  %94 = load %struct.fmt*, %struct.fmt** %5, align 8
  %95 = getelementptr inbounds %struct.fmt, %struct.fmt* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %93, %90
  %99 = load %struct.fmt*, %struct.fmt** %5, align 8
  %100 = getelementptr inbounds %struct.fmt, %struct.fmt* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.fmt*, %struct.fmt** %5, align 8
  %105 = getelementptr inbounds %struct.fmt, %struct.fmt* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  ret void
}

declare dso_local i32 @isdelim(i32) #1

declare dso_local i32* @fz_malloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @fz_realloc(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
