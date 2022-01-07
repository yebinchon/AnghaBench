; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_emph2.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_emph2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)*, i32 (%struct.buf.2*, %struct.buf.2*, i32)* }
%struct.buf.0 = type opaque
%struct.buf.1 = type opaque
%struct.buf.2 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i64*, i64, i64)* @parse_emph2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_emph2(%struct.buf* %0, %struct.sd_markdown* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.buf*, align 8
  %15 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store %struct.buf* null, %struct.buf** %14, align 8
  br label %16

16:                                               ; preds = %132, %5
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %135

20:                                               ; preds = %16
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %12, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %12, align 8
  %26 = sub i64 %24, %25
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @find_emph_char(i64* %23, i64 %26, i64 %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %136

32:                                               ; preds = %20
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  %38 = load i64, i64* %10, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %132

40:                                               ; preds = %32
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %132

47:                                               ; preds = %40
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %132

55:                                               ; preds = %47
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %132

58:                                               ; preds = %55
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %12, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @_isspace(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %132, label %66

66:                                               ; preds = %58
  %67 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %68 = load i32, i32* @BUFFER_SPAN, align 4
  %69 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %67, i32 %68)
  store %struct.buf* %69, %struct.buf** %14, align 8
  %70 = load %struct.buf*, %struct.buf** %14, align 8
  %71 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @parse_inline(%struct.buf* %70, %struct.sd_markdown* %71, i64* %72, i64 %73)
  %75 = load i64, i64* %11, align 8
  %76 = icmp eq i64 %75, 126
  br i1 %76, label %77, label %90

77:                                               ; preds = %66
  %78 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %79 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %80, align 8
  %82 = load %struct.buf*, %struct.buf** %7, align 8
  %83 = bitcast %struct.buf* %82 to %struct.buf.0*
  %84 = load %struct.buf*, %struct.buf** %14, align 8
  %85 = bitcast %struct.buf* %84 to %struct.buf.0*
  %86 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %87 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %81(%struct.buf.0* %83, %struct.buf.0* %85, i32 %88)
  store i32 %89, i32* %15, align 4
  br label %120

90:                                               ; preds = %66
  %91 = load i64, i64* %11, align 8
  %92 = icmp eq i64 %91, 61
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %95 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32 (%struct.buf.1*, %struct.buf.1*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)** %96, align 8
  %98 = load %struct.buf*, %struct.buf** %7, align 8
  %99 = bitcast %struct.buf* %98 to %struct.buf.1*
  %100 = load %struct.buf*, %struct.buf** %14, align 8
  %101 = bitcast %struct.buf* %100 to %struct.buf.1*
  %102 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %103 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %97(%struct.buf.1* %99, %struct.buf.1* %101, i32 %104)
  store i32 %105, i32* %15, align 4
  br label %119

106:                                              ; preds = %90
  %107 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %108 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32 (%struct.buf.2*, %struct.buf.2*, i32)*, i32 (%struct.buf.2*, %struct.buf.2*, i32)** %109, align 8
  %111 = load %struct.buf*, %struct.buf** %7, align 8
  %112 = bitcast %struct.buf* %111 to %struct.buf.2*
  %113 = load %struct.buf*, %struct.buf** %14, align 8
  %114 = bitcast %struct.buf* %113 to %struct.buf.2*
  %115 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %116 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 %110(%struct.buf.2* %112, %struct.buf.2* %114, i32 %117)
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %106, %93
  br label %120

120:                                              ; preds = %119, %77
  %121 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %122 = load i32, i32* @BUFFER_SPAN, align 4
  %123 = call i32 @rndr_popbuf(%struct.sd_markdown* %121, i32 %122)
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 2
  br label %130

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %126
  %131 = phi i64 [ %128, %126 ], [ 0, %129 ]
  store i64 %131, i64* %6, align 8
  br label %136

132:                                              ; preds = %58, %55, %47, %40, %32
  %133 = load i64, i64* %12, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %12, align 8
  br label %16

135:                                              ; preds = %16
  store i64 0, i64* %6, align 8
  br label %136

136:                                              ; preds = %135, %130, %31
  %137 = load i64, i64* %6, align 8
  ret i64 %137
}

declare dso_local i64 @find_emph_char(i64*, i64, i64) #1

declare dso_local i32 @_isspace(i64) #1

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i32 @parse_inline(%struct.buf*, %struct.sd_markdown*, i64*, i64) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
