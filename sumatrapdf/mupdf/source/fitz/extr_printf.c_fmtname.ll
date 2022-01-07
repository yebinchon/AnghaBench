; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_fmtname.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_fmtname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmtbuf = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmtbuf*, i8*)* @fmtname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtname(%struct.fmtbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.fmtbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.fmtbuf* %0, %struct.fmtbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %7 = call i32 @fmtputc(%struct.fmtbuf* %6, i32 47)
  br label %8

8:                                                ; preds = %47, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  %12 = sext i8 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 32
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 35
  br i1 %22, label %23, label %43

23:                                               ; preds = %20, %17, %14
  %24 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %25 = call i32 @fmtputc(%struct.fmtbuf* %24, i32 35)
  %26 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 15
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @fmtputc(%struct.fmtbuf* %26, i32 %33)
  %35 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 15
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 @fmtputc(%struct.fmtbuf* %35, i32 %41)
  br label %47

43:                                               ; preds = %20
  %44 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @fmtputc(%struct.fmtbuf* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %23
  br label %8

48:                                               ; preds = %8
  ret void
}

declare dso_local i32 @fmtputc(%struct.fmtbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
