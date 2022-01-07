; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_footnote_list.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_footnote_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)* }
%struct.buf.0 = type opaque
%struct.footnote_list = type { i64, %struct.footnote_item* }
%struct.footnote_item = type { %struct.footnote_item*, %struct.footnote_ref* }
%struct.footnote_ref = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@BUFFER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.sd_markdown*, %struct.footnote_list*)* @parse_footnote_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_footnote_list(%struct.buf* %0, %struct.sd_markdown* %1, %struct.footnote_list* %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.sd_markdown*, align 8
  %6 = alloca %struct.footnote_list*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.footnote_item*, align 8
  %9 = alloca %struct.footnote_ref*, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %5, align 8
  store %struct.footnote_list* %2, %struct.footnote_list** %6, align 8
  store %struct.buf* null, %struct.buf** %7, align 8
  %10 = load %struct.footnote_list*, %struct.footnote_list** %6, align 8
  %11 = getelementptr inbounds %struct.footnote_list, %struct.footnote_list* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %71

15:                                               ; preds = %3
  %16 = load %struct.sd_markdown*, %struct.sd_markdown** %5, align 8
  %17 = load i32, i32* @BUFFER_BLOCK, align 4
  %18 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %16, i32 %17)
  store %struct.buf* %18, %struct.buf** %7, align 8
  %19 = load %struct.footnote_list*, %struct.footnote_list** %6, align 8
  %20 = getelementptr inbounds %struct.footnote_list, %struct.footnote_list* %19, i32 0, i32 1
  %21 = load %struct.footnote_item*, %struct.footnote_item** %20, align 8
  store %struct.footnote_item* %21, %struct.footnote_item** %8, align 8
  br label %22

22:                                               ; preds = %25, %15
  %23 = load %struct.footnote_item*, %struct.footnote_item** %8, align 8
  %24 = icmp ne %struct.footnote_item* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load %struct.footnote_item*, %struct.footnote_item** %8, align 8
  %27 = getelementptr inbounds %struct.footnote_item, %struct.footnote_item* %26, i32 0, i32 1
  %28 = load %struct.footnote_ref*, %struct.footnote_ref** %27, align 8
  store %struct.footnote_ref* %28, %struct.footnote_ref** %9, align 8
  %29 = load %struct.buf*, %struct.buf** %7, align 8
  %30 = load %struct.sd_markdown*, %struct.sd_markdown** %5, align 8
  %31 = load %struct.footnote_ref*, %struct.footnote_ref** %9, align 8
  %32 = getelementptr inbounds %struct.footnote_ref, %struct.footnote_ref* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.footnote_ref*, %struct.footnote_ref** %9, align 8
  %35 = getelementptr inbounds %struct.footnote_ref, %struct.footnote_ref* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.footnote_ref*, %struct.footnote_ref** %9, align 8
  %40 = getelementptr inbounds %struct.footnote_ref, %struct.footnote_ref* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @parse_footnote_def(%struct.buf* %29, %struct.sd_markdown* %30, i32 %33, i32 %38, i32 %43)
  %45 = load %struct.footnote_item*, %struct.footnote_item** %8, align 8
  %46 = getelementptr inbounds %struct.footnote_item, %struct.footnote_item* %45, i32 0, i32 0
  %47 = load %struct.footnote_item*, %struct.footnote_item** %46, align 8
  store %struct.footnote_item* %47, %struct.footnote_item** %8, align 8
  br label %22

48:                                               ; preds = %22
  %49 = load %struct.sd_markdown*, %struct.sd_markdown** %5, align 8
  %50 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32)* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.sd_markdown*, %struct.sd_markdown** %5, align 8
  %56 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %57, align 8
  %59 = load %struct.buf*, %struct.buf** %4, align 8
  %60 = bitcast %struct.buf* %59 to %struct.buf.0*
  %61 = load %struct.buf*, %struct.buf** %7, align 8
  %62 = bitcast %struct.buf* %61 to %struct.buf.0*
  %63 = load %struct.sd_markdown*, %struct.sd_markdown** %5, align 8
  %64 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %58(%struct.buf.0* %60, %struct.buf.0* %62, i32 %65)
  br label %67

67:                                               ; preds = %54, %48
  %68 = load %struct.sd_markdown*, %struct.sd_markdown** %5, align 8
  %69 = load i32, i32* @BUFFER_BLOCK, align 4
  %70 = call i32 @rndr_popbuf(%struct.sd_markdown* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %14
  ret void
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i32 @parse_footnote_def(%struct.buf*, %struct.sd_markdown*, i32, i32, i32) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
