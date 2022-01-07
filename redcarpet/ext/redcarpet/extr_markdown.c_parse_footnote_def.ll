; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_footnote_def.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_footnote_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* }
%struct.buf.0 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.sd_markdown*, i32, i32*, i64)* @parse_footnote_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_footnote_def(%struct.buf* %0, %struct.sd_markdown* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.sd_markdown*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %6, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.buf* null, %struct.buf** %11, align 8
  %12 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %13 = load i32, i32* @BUFFER_SPAN, align 4
  %14 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %12, i32 %13)
  store %struct.buf* %14, %struct.buf** %11, align 8
  %15 = load %struct.buf*, %struct.buf** %11, align 8
  %16 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @parse_block(%struct.buf* %15, %struct.sd_markdown* %16, i32* %17, i64 %18)
  %20 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %21 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %5
  %26 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %27 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %28, align 8
  %30 = load %struct.buf*, %struct.buf** %6, align 8
  %31 = bitcast %struct.buf* %30 to %struct.buf.0*
  %32 = load %struct.buf*, %struct.buf** %11, align 8
  %33 = bitcast %struct.buf* %32 to %struct.buf.0*
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %36 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %29(%struct.buf.0* %31, %struct.buf.0* %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %25, %5
  %40 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %41 = load i32, i32* @BUFFER_SPAN, align 4
  %42 = call i32 @rndr_popbuf(%struct.sd_markdown* %40, i32 %41)
  ret void
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i32 @parse_block(%struct.buf*, %struct.sd_markdown*, i32*, i64) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
