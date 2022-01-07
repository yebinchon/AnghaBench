; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_blockquote.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_blockquote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)* }
%struct.buf.0 = type opaque

@BUFFER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64)* @parse_blockquote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_blockquote(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.sd_markdown*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i8* null, i8** %13, align 8
  store %struct.buf* null, %struct.buf** %14, align 8
  %15 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %16 = load i32, i32* @BUFFER_BLOCK, align 4
  %17 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %15, i32 %16)
  store %struct.buf* %17, %struct.buf** %14, align 8
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %127, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %129

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %40, %22
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 10
  br label %37

37:                                               ; preds = %29, %25
  %38 = phi i1 [ false, %25 ], [ %36, %29 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %10, align 8
  br label %25

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = sub i64 %47, %48
  %50 = call i64 @prefix_quote(i8* %46, i64 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %9, align 8
  br label %90

57:                                               ; preds = %43
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %61, %62
  %64 = call i64 @is_empty(i8* %60, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %57
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %88, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %74, %75
  %77 = call i64 @prefix_quote(i8* %73, i64 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %70
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %10, align 8
  %85 = sub i64 %83, %84
  %86 = call i64 @is_empty(i8* %82, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79, %66
  br label %129

89:                                               ; preds = %79, %70, %57
  br label %90

90:                                               ; preds = %89, %53
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %90
  %95 = load i8*, i8** %13, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %13, align 8
  br label %121

101:                                              ; preds = %94
  %102 = load i8*, i8** %7, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8*, i8** %13, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = icmp ne i8* %104, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %101
  %110 = load i8*, i8** %13, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i8*, i8** %7, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* %9, align 8
  %118 = sub i64 %116, %117
  %119 = call i32 @memmove(i8* %112, i8* %115, i64 %118)
  br label %120

120:                                              ; preds = %109, %101
  br label %121

121:                                              ; preds = %120, %97
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %9, align 8
  %124 = sub i64 %122, %123
  %125 = load i64, i64* %12, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %12, align 8
  br label %127

127:                                              ; preds = %121, %90
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %9, align 8
  br label %18

129:                                              ; preds = %88, %18
  %130 = load %struct.buf*, %struct.buf** %14, align 8
  %131 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @parse_block(%struct.buf* %130, %struct.sd_markdown* %131, i8* %132, i64 %133)
  %135 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %136 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %137, align 8
  %139 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32)* %138, null
  br i1 %139, label %140, label %153

140:                                              ; preds = %129
  %141 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %142 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %143, align 8
  %145 = load %struct.buf*, %struct.buf** %5, align 8
  %146 = bitcast %struct.buf* %145 to %struct.buf.0*
  %147 = load %struct.buf*, %struct.buf** %14, align 8
  %148 = bitcast %struct.buf* %147 to %struct.buf.0*
  %149 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %150 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 %144(%struct.buf.0* %146, %struct.buf.0* %148, i32 %151)
  br label %153

153:                                              ; preds = %140, %129
  %154 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %155 = load i32, i32* @BUFFER_BLOCK, align 4
  %156 = call i32 @rndr_popbuf(%struct.sd_markdown* %154, i32 %155)
  %157 = load i64, i64* %10, align 8
  ret i64 %157
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i64 @prefix_quote(i8*, i64) #1

declare dso_local i64 @is_empty(i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @parse_block(%struct.buf*, %struct.sd_markdown*, i8*, i64) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
