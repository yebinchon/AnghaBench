; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_autolink_email.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_autolink_email.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* }
%struct.buf.0 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@MKDA_EMAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i32*, i64, i64)* @char_autolink_email to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @char_autolink_email(%struct.buf* %0, %struct.sd_markdown* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %16 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %22 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %5
  store i64 0, i64* %6, align 8
  br label %60

26:                                               ; preds = %20
  %27 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %28 = load i32, i32* @BUFFER_SPAN, align 4
  %29 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %27, i32 %28)
  store %struct.buf* %29, %struct.buf** %12, align 8
  %30 = load %struct.buf*, %struct.buf** %12, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @sd_autolink__email(i64* %14, %struct.buf* %30, i32* %31, i64 %32, i64 %33, i32 0)
  store i64 %34, i64* %13, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %26
  %37 = load i64, i64* %14, align 8
  %38 = load %struct.buf*, %struct.buf** %7, align 8
  %39 = getelementptr inbounds %struct.buf, %struct.buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %43 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %44, align 8
  %46 = load %struct.buf*, %struct.buf** %7, align 8
  %47 = bitcast %struct.buf* %46 to %struct.buf.0*
  %48 = load %struct.buf*, %struct.buf** %12, align 8
  %49 = bitcast %struct.buf* %48 to %struct.buf.0*
  %50 = load i32, i32* @MKDA_EMAIL, align 4
  %51 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %52 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %45(%struct.buf.0* %47, %struct.buf.0* %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %36, %26
  %56 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %57 = load i32, i32* @BUFFER_SPAN, align 4
  %58 = call i32 @rndr_popbuf(%struct.sd_markdown* %56, i32 %57)
  %59 = load i64, i64* %13, align 8
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %55, %25
  %61 = load i64, i64* %6, align 8
  ret i64 %61
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i64 @sd_autolink__email(i64*, %struct.buf*, i32*, i64, i64, i32) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
