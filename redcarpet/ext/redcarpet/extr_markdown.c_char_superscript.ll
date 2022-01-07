; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_superscript.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_superscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)* }
%struct.buf.0 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64, i64)* @char_superscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @char_superscript(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %16 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %129

21:                                               ; preds = %5
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i64 0, i64* %6, align 8
  br label %129

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 40
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  store i64 2, i64* %13, align 8
  store i64 2, i64* %12, align 8
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %13, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 92
  br label %51

51:                                               ; preds = %43, %36, %32
  %52 = phi i1 [ false, %36 ], [ false, %32 ], [ %50, %43 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %13, align 8
  br label %32

56:                                               ; preds = %51
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i64 0, i64* %6, align 8
  br label %129

61:                                               ; preds = %56
  br label %81

62:                                               ; preds = %25
  store i64 1, i64* %13, align 8
  store i64 1, i64* %12, align 8
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @_isspace(i8 signext %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %67, %63
  %76 = phi i1 [ false, %63 ], [ %74, %67 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i64, i64* %13, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %13, align 8
  br label %63

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %61
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %12, align 8
  %84 = sub i64 %82, %83
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i64, i64* %12, align 8
  %88 = icmp eq i64 %87, 2
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 3, i32 0
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %6, align 8
  br label %129

92:                                               ; preds = %81
  %93 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %94 = load i32, i32* @BUFFER_SPAN, align 4
  %95 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %93, i32 %94)
  store %struct.buf* %95, %struct.buf** %14, align 8
  %96 = load %struct.buf*, %struct.buf** %14, align 8
  %97 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %12, align 8
  %103 = sub i64 %101, %102
  %104 = call i32 @parse_inline(%struct.buf* %96, %struct.sd_markdown* %97, i8* %100, i64 %103)
  %105 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %106 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %107, align 8
  %109 = load %struct.buf*, %struct.buf** %7, align 8
  %110 = bitcast %struct.buf* %109 to %struct.buf.0*
  %111 = load %struct.buf*, %struct.buf** %14, align 8
  %112 = bitcast %struct.buf* %111 to %struct.buf.0*
  %113 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %114 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %108(%struct.buf.0* %110, %struct.buf.0* %112, i32 %115)
  %117 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %118 = load i32, i32* @BUFFER_SPAN, align 4
  %119 = call i32 @rndr_popbuf(%struct.sd_markdown* %117, i32 %118)
  %120 = load i64, i64* %12, align 8
  %121 = icmp eq i64 %120, 2
  br i1 %121, label %122, label %125

122:                                              ; preds = %92
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %123, 1
  br label %127

125:                                              ; preds = %92
  %126 = load i64, i64* %13, align 8
  br label %127

127:                                              ; preds = %125, %122
  %128 = phi i64 [ %124, %122 ], [ %126, %125 ]
  store i64 %128, i64* %6, align 8
  br label %129

129:                                              ; preds = %127, %86, %60, %24, %20
  %130 = load i64, i64* %6, align 8
  ret i64 %130
}

declare dso_local i32 @_isspace(i8 signext) #1

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i32 @parse_inline(%struct.buf*, %struct.sd_markdown*, i8*, i64) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
