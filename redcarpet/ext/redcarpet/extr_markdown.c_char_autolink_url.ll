; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_autolink_url.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_autolink_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* }
%struct.buf.0 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@SD_AUTOLINK_SHORT_DOMAINS = common dso_local global i32 0, align 4
@MKDA_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i32*, i64, i64)* @char_autolink_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @char_autolink_url(%struct.buf* %0, %struct.sd_markdown* %1, i32* %2, i64 %3, i64 %4) #0 {
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
  br label %61

26:                                               ; preds = %20
  %27 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %28 = load i32, i32* @BUFFER_SPAN, align 4
  %29 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %27, i32 %28)
  store %struct.buf* %29, %struct.buf** %12, align 8
  %30 = load %struct.buf*, %struct.buf** %12, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* @SD_AUTOLINK_SHORT_DOMAINS, align 4
  %35 = call i64 @sd_autolink__url(i64* %14, %struct.buf* %30, i32* %31, i64 %32, i64 %33, i32 %34)
  store i64 %35, i64* %13, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %26
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.buf*, %struct.buf** %7, align 8
  %40 = getelementptr inbounds %struct.buf, %struct.buf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %44 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %45, align 8
  %47 = load %struct.buf*, %struct.buf** %7, align 8
  %48 = bitcast %struct.buf* %47 to %struct.buf.0*
  %49 = load %struct.buf*, %struct.buf** %12, align 8
  %50 = bitcast %struct.buf* %49 to %struct.buf.0*
  %51 = load i32, i32* @MKDA_NORMAL, align 4
  %52 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %53 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %46(%struct.buf.0* %48, %struct.buf.0* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %37, %26
  %57 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %58 = load i32, i32* @BUFFER_SPAN, align 4
  %59 = call i32 @rndr_popbuf(%struct.sd_markdown* %57, i32 %58)
  %60 = load i64, i64* %13, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %56, %25
  %62 = load i64, i64* %6, align 8
  ret i64 %62
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i64 @sd_autolink__url(i64*, %struct.buf*, i32*, i64, i64, i32) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
