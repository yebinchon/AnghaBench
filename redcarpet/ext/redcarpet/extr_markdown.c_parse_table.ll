; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_table.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)* }
%struct.buf.0 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@BUFFER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64)* @parse_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_table(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.sd_markdown*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buf*, align 8
  %11 = alloca %struct.buf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.buf* null, %struct.buf** %10, align 8
  store %struct.buf* null, %struct.buf** %11, align 8
  store i32* null, i32** %13, align 8
  %16 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %17 = load i32, i32* @BUFFER_SPAN, align 4
  %18 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %16, i32 %17)
  store %struct.buf* %18, %struct.buf** %10, align 8
  %19 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %20 = load i32, i32* @BUFFER_BLOCK, align 4
  %21 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %19, i32 %20)
  store %struct.buf* %21, %struct.buf** %11, align 8
  %22 = load %struct.buf*, %struct.buf** %10, align 8
  %23 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @parse_table_header(%struct.buf* %22, %struct.sd_markdown* %23, i8* %24, i64 %25, i64* %12, i32** %13)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %106

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %70, %29
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %14, align 8
  br label %36

36:                                               ; preds = %60, %34
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 10
  br label %47

47:                                               ; preds = %40, %36
  %48 = phi i1 [ false, %36 ], [ %46, %40 ]
  br i1 %48, label %49, label %61

49:                                               ; preds = %47
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  %53 = getelementptr inbounds i8, i8* %50, i64 %51
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 124
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %57, %49
  br label %36

61:                                               ; preds = %47
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %61
  %69 = load i64, i64* %14, align 8
  store i64 %69, i64* %9, align 8
  br label %84

70:                                               ; preds = %64
  %71 = load %struct.buf*, %struct.buf** %11, align 8
  %72 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %14, align 8
  %78 = sub i64 %76, %77
  %79 = load i64, i64* %12, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @parse_table_row(%struct.buf* %71, %struct.sd_markdown* %72, i8* %75, i64 %78, i64 %79, i32* %80, i32 0)
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %30

84:                                               ; preds = %68, %30
  %85 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %86 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %92 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)** %93, align 8
  %95 = load %struct.buf*, %struct.buf** %5, align 8
  %96 = bitcast %struct.buf* %95 to %struct.buf.0*
  %97 = load %struct.buf*, %struct.buf** %10, align 8
  %98 = bitcast %struct.buf* %97 to %struct.buf.0*
  %99 = load %struct.buf*, %struct.buf** %11, align 8
  %100 = bitcast %struct.buf* %99 to %struct.buf.0*
  %101 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %102 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %94(%struct.buf.0* %96, %struct.buf.0* %98, %struct.buf.0* %100, i32 %103)
  br label %105

105:                                              ; preds = %90, %84
  br label %106

106:                                              ; preds = %105, %4
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @free(i32* %107)
  %109 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %110 = load i32, i32* @BUFFER_SPAN, align 4
  %111 = call i32 @rndr_popbuf(%struct.sd_markdown* %109, i32 %110)
  %112 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %113 = load i32, i32* @BUFFER_BLOCK, align 4
  %114 = call i32 @rndr_popbuf(%struct.sd_markdown* %112, i32 %113)
  %115 = load i64, i64* %9, align 8
  ret i64 %115
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i64 @parse_table_header(%struct.buf*, %struct.sd_markdown*, i8*, i64, i64*, i32**) #1

declare dso_local i32 @parse_table_row(%struct.buf*, %struct.sd_markdown*, i8*, i64, i64, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
