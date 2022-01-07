; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_atxheader.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_atxheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* }
%struct.buf.0 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64)* @parse_atxheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_atxheader(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.sd_markdown*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %30, %4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %19, 6
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 35
  br label %28

28:                                               ; preds = %21, %18, %14
  %29 = phi i1 [ false, %18 ], [ false, %14 ], [ %27, %21 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %14

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %49, %33
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi i1 [ false, %35 ], [ %45, %39 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %35

52:                                               ; preds = %46
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %68, %52
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 10
  br label %65

65:                                               ; preds = %58, %54
  %66 = phi i1 [ false, %54 ], [ %64, %58 ]
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %54

71:                                               ; preds = %65
  %72 = load i64, i64* %11, align 8
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %86, %71
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %11, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 35
  br label %84

84:                                               ; preds = %76, %73
  %85 = phi i1 [ false, %73 ], [ %83, %76 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, -1
  store i64 %88, i64* %11, align 8
  br label %73

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %103, %89
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %11, align 8
  %96 = sub i64 %95, 1
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 32
  br label %101

101:                                              ; preds = %93, %90
  %102 = phi i1 [ false, %90 ], [ %100, %93 ]
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %11, align 8
  br label %90

106:                                              ; preds = %101
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %147

110:                                              ; preds = %106
  %111 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %112 = load i32, i32* @BUFFER_SPAN, align 4
  %113 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %111, i32 %112)
  store %struct.buf* %113, %struct.buf** %13, align 8
  %114 = load %struct.buf*, %struct.buf** %13, align 8
  %115 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %10, align 8
  %121 = sub i64 %119, %120
  %122 = call i32 @parse_inline(%struct.buf* %114, %struct.sd_markdown* %115, i8* %118, i64 %121)
  %123 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %124 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %125, align 8
  %127 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)* %126, null
  br i1 %127, label %128, label %143

128:                                              ; preds = %110
  %129 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %130 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32, i32)** %131, align 8
  %133 = load %struct.buf*, %struct.buf** %5, align 8
  %134 = bitcast %struct.buf* %133 to %struct.buf.0*
  %135 = load %struct.buf*, %struct.buf** %13, align 8
  %136 = bitcast %struct.buf* %135 to %struct.buf.0*
  %137 = load i64, i64* %9, align 8
  %138 = trunc i64 %137 to i32
  %139 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %140 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %132(%struct.buf.0* %134, %struct.buf.0* %136, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %128, %110
  %144 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %145 = load i32, i32* @BUFFER_SPAN, align 4
  %146 = call i32 @rndr_popbuf(%struct.sd_markdown* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %106
  %148 = load i64, i64* %12, align 8
  ret i64 %148
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i32 @parse_inline(%struct.buf*, %struct.sd_markdown*, i8*, i64) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
