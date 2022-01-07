; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_list.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* }
%struct.buf.0 = type opaque

@BUFFER_BLOCK = common dso_local global i32 0, align 4
@MKD_LI_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i32*, i64, i32)* @parse_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_list(%struct.buf* %0, %struct.sd_markdown* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.sd_markdown*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %6, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.buf* null, %struct.buf** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %15 = load i32, i32* @BUFFER_BLOCK, align 4
  %16 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %14, i32 %15)
  store %struct.buf* %16, %struct.buf** %11, align 8
  br label %17

17:                                               ; preds = %42, %5
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load %struct.buf*, %struct.buf** %11, align 8
  %23 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %12, align 8
  %29 = sub i64 %27, %28
  %30 = call i64 @parse_listitem(%struct.buf* %22, %struct.sd_markdown* %23, i32* %26, i64 %29, i32* %10)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %12, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MKD_LI_END, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %21
  br label %43

42:                                               ; preds = %36
  br label %17

43:                                               ; preds = %41, %17
  %44 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %45 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %51 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %52, align 8
  %54 = load %struct.buf*, %struct.buf** %6, align 8
  %55 = bitcast %struct.buf* %54 to %struct.buf.0*
  %56 = load %struct.buf*, %struct.buf** %11, align 8
  %57 = bitcast %struct.buf* %56 to %struct.buf.0*
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %60 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %53(%struct.buf.0* %55, %struct.buf.0* %57, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %49, %43
  %64 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %65 = load i32, i32* @BUFFER_BLOCK, align 4
  %66 = call i32 @rndr_popbuf(%struct.sd_markdown* %64, i32 %65)
  %67 = load i64, i64* %12, align 8
  ret i64 %67
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i64 @parse_listitem(%struct.buf*, %struct.sd_markdown*, i32*, i64, i32*) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
