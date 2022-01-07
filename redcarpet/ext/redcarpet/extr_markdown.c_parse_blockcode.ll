; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_blockcode.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_blockcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i8* }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32*, i32)* }
%struct.buf.0 = type opaque

@BUFFER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64)* @parse_blockcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_blockcode(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.sd_markdown*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.buf* null, %struct.buf** %12, align 8
  %13 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %14 = load i32, i32* @BUFFER_BLOCK, align 4
  %15 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %13, i32 %14)
  store %struct.buf* %15, %struct.buf** %12, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %92, %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %94

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %38, %20
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 10
  br label %35

35:                                               ; preds = %27, %23
  %36 = phi i1 [ false, %23 ], [ %34, %27 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %23

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %45, %46
  %48 = call i64 @prefix_code(i8* %44, i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %9, align 8
  br label %66

55:                                               ; preds = %41
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub i64 %59, %60
  %62 = call i64 @is_empty(i8* %58, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %94

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %74, %75
  %77 = call i64 @is_empty(i8* %73, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.buf*, %struct.buf** %12, align 8
  %81 = call i32 @bufputc(%struct.buf* %80, i8 signext 10)
  br label %91

82:                                               ; preds = %70
  %83 = load %struct.buf*, %struct.buf** %12, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %87, %88
  %90 = call i32 @bufput(%struct.buf* %83, i8* %86, i64 %89)
  br label %91

91:                                               ; preds = %82, %79
  br label %92

92:                                               ; preds = %91, %66
  %93 = load i64, i64* %10, align 8
  store i64 %93, i64* %9, align 8
  br label %16

94:                                               ; preds = %64, %16
  br label %95

95:                                               ; preds = %115, %94
  %96 = load %struct.buf*, %struct.buf** %12, align 8
  %97 = getelementptr inbounds %struct.buf, %struct.buf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.buf*, %struct.buf** %12, align 8
  %102 = getelementptr inbounds %struct.buf, %struct.buf* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.buf*, %struct.buf** %12, align 8
  %105 = getelementptr inbounds %struct.buf, %struct.buf* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 10
  br label %113

113:                                              ; preds = %100, %95
  %114 = phi i1 [ false, %95 ], [ %112, %100 ]
  br i1 %114, label %115, label %120

115:                                              ; preds = %113
  %116 = load %struct.buf*, %struct.buf** %12, align 8
  %117 = getelementptr inbounds %struct.buf, %struct.buf* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %95

120:                                              ; preds = %113
  %121 = load %struct.buf*, %struct.buf** %12, align 8
  %122 = call i32 @bufputc(%struct.buf* %121, i8 signext 10)
  %123 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %124 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32 (%struct.buf.0*, %struct.buf.0*, i32*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32*, i32)** %125, align 8
  %127 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32*, i32)* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %120
  %129 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %130 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32 (%struct.buf.0*, %struct.buf.0*, i32*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32*, i32)** %131, align 8
  %133 = load %struct.buf*, %struct.buf** %5, align 8
  %134 = bitcast %struct.buf* %133 to %struct.buf.0*
  %135 = load %struct.buf*, %struct.buf** %12, align 8
  %136 = bitcast %struct.buf* %135 to %struct.buf.0*
  %137 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %138 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 %132(%struct.buf.0* %134, %struct.buf.0* %136, i32* null, i32 %139)
  br label %141

141:                                              ; preds = %128, %120
  %142 = load %struct.sd_markdown*, %struct.sd_markdown** %6, align 8
  %143 = load i32, i32* @BUFFER_BLOCK, align 4
  %144 = call i32 @rndr_popbuf(%struct.sd_markdown* %142, i32 %143)
  %145 = load i64, i64* %9, align 8
  ret i64 %145
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i64 @prefix_code(i8*, i64) #1

declare dso_local i64 @is_empty(i8*, i64) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
