; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_emph3.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_emph3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)* }
%struct.buf.0 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i64*, i64, i64)* @parse_emph3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_emph3(%struct.buf* %0, %struct.sd_markdown* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %16

16:                                               ; preds = %50, %5
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %153

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
  br label %154

32:                                               ; preds = %20
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %12, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %32
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %12, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @_isspace(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42, %32
  br label %16

51:                                               ; preds = %42
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 2
  %54 = load i64, i64* %10, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %110

56:                                               ; preds = %51
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %110

64:                                               ; preds = %56
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %66, 2
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %64
  %73 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %74 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %75, align 8
  %77 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32)* %76, null
  br i1 %77, label %78, label %110

78:                                               ; preds = %72
  %79 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %80 = load i32, i32* @BUFFER_SPAN, align 4
  %81 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %79, i32 %80)
  store %struct.buf* %81, %struct.buf** %15, align 8
  %82 = load %struct.buf*, %struct.buf** %15, align 8
  %83 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @parse_inline(%struct.buf* %82, %struct.sd_markdown* %83, i64* %84, i64 %85)
  %87 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %88 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %89, align 8
  %91 = load %struct.buf*, %struct.buf** %7, align 8
  %92 = bitcast %struct.buf* %91 to %struct.buf.0*
  %93 = load %struct.buf*, %struct.buf** %15, align 8
  %94 = bitcast %struct.buf* %93 to %struct.buf.0*
  %95 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %96 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %90(%struct.buf.0* %92, %struct.buf.0* %94, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %100 = load i32, i32* @BUFFER_SPAN, align 4
  %101 = call i32 @rndr_popbuf(%struct.sd_markdown* %99, i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %78
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %105, 3
  br label %108

107:                                              ; preds = %78
  br label %108

108:                                              ; preds = %107, %104
  %109 = phi i64 [ %106, %104 ], [ 0, %107 ]
  store i64 %109, i64* %6, align 8
  br label %154

110:                                              ; preds = %72, %64, %56, %51
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 1
  %113 = load i64, i64* %10, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %110
  %116 = load i64*, i64** %9, align 8
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, 1
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %11, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %115
  %124 = load %struct.buf*, %struct.buf** %7, align 8
  %125 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 -2
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 2
  %130 = load i64, i64* %11, align 8
  %131 = call i64 @parse_emph1(%struct.buf* %124, %struct.sd_markdown* %125, i64* %127, i64 %129, i64 %130)
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %13, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %123
  store i64 0, i64* %6, align 8
  br label %154

135:                                              ; preds = %123
  %136 = load i64, i64* %13, align 8
  %137 = sub i64 %136, 2
  store i64 %137, i64* %6, align 8
  br label %154

138:                                              ; preds = %115, %110
  %139 = load %struct.buf*, %struct.buf** %7, align 8
  %140 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %141 = load i64*, i64** %9, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 -1
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %143, 1
  %145 = load i64, i64* %11, align 8
  %146 = call i64 @parse_emph2(%struct.buf* %139, %struct.sd_markdown* %140, i64* %142, i64 %144, i64 %145)
  store i64 %146, i64* %13, align 8
  %147 = load i64, i64* %13, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %138
  store i64 0, i64* %6, align 8
  br label %154

150:                                              ; preds = %138
  %151 = load i64, i64* %13, align 8
  %152 = sub i64 %151, 1
  store i64 %152, i64* %6, align 8
  br label %154

153:                                              ; preds = %16
  store i64 0, i64* %6, align 8
  br label %154

154:                                              ; preds = %153, %150, %149, %135, %134, %108, %31
  %155 = load i64, i64* %6, align 8
  ret i64 %155
}

declare dso_local i64 @find_emph_char(i64*, i64, i64) #1

declare dso_local i64 @_isspace(i64) #1

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i32 @parse_inline(%struct.buf*, %struct.sd_markdown*, i64*, i64) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

declare dso_local i64 @parse_emph1(%struct.buf*, %struct.sd_markdown*, i64*, i64, i64) #1

declare dso_local i64 @parse_emph2(%struct.buf*, %struct.sd_markdown*, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
