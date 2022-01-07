; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_emph1.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_emph1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)* }
%struct.buf.0 = type opaque
%struct.buf.1 = type opaque

@MKDEXT_NO_INTRA_EMPHASIS = common dso_local global i32 0, align 4
@BUFFER_SPAN = common dso_local global i32 0, align 4
@MKDEXT_UNDERLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64, i8)* @parse_emph1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_emph1(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i8 signext %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.buf*, align 8
  %15 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8 %4, i8* %11, align 1
  store i64 0, i64* %12, align 8
  store %struct.buf* null, %struct.buf** %14, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ugt i64 %16, 1
  br i1 %17, label %18, label %35

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* %11, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %11, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i64 1, i64* %12, align 8
  br label %35

35:                                               ; preds = %34, %26, %18, %5
  br label %36

36:                                               ; preds = %156, %97, %35
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %157

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = sub i64 %44, %45
  %47 = load i8, i8* %11, align 1
  %48 = call i64 @find_emph_char(i8* %43, i64 %46, i8 signext %47)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  store i64 0, i64* %6, align 8
  br label %158

52:                                               ; preds = %40
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i64 0, i64* %6, align 8
  br label %158

60:                                               ; preds = %52
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* %11, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %156

69:                                               ; preds = %60
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %12, align 8
  %72 = sub i64 %71, 1
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @_isspace(i8 signext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %156, label %77

77:                                               ; preds = %69
  %78 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %79 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MKDEXT_NO_INTRA_EMPHASIS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %77
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %85, 1
  %87 = load i64, i64* %10, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load i8*, i8** %9, align 8
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @_isalnum(i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %36

98:                                               ; preds = %89, %84
  br label %99

99:                                               ; preds = %98, %77
  %100 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %101 = load i32, i32* @BUFFER_SPAN, align 4
  %102 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %100, i32 %101)
  store %struct.buf* %102, %struct.buf** %14, align 8
  %103 = load %struct.buf*, %struct.buf** %14, align 8
  %104 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @parse_inline(%struct.buf* %103, %struct.sd_markdown* %104, i8* %105, i64 %106)
  %108 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %109 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MKDEXT_UNDERLINE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %99
  %115 = load i8, i8* %11, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 95
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %120 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %121, align 8
  %123 = load %struct.buf*, %struct.buf** %7, align 8
  %124 = bitcast %struct.buf* %123 to %struct.buf.0*
  %125 = load %struct.buf*, %struct.buf** %14, align 8
  %126 = bitcast %struct.buf* %125 to %struct.buf.0*
  %127 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %128 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 %122(%struct.buf.0* %124, %struct.buf.0* %126, i32 %129)
  store i32 %130, i32* %15, align 4
  br label %144

131:                                              ; preds = %114, %99
  %132 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %133 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32 (%struct.buf.1*, %struct.buf.1*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)** %134, align 8
  %136 = load %struct.buf*, %struct.buf** %7, align 8
  %137 = bitcast %struct.buf* %136 to %struct.buf.1*
  %138 = load %struct.buf*, %struct.buf** %14, align 8
  %139 = bitcast %struct.buf* %138 to %struct.buf.1*
  %140 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %141 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 %135(%struct.buf.1* %137, %struct.buf.1* %139, i32 %142)
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %131, %118
  %145 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %146 = load i32, i32* @BUFFER_SPAN, align 4
  %147 = call i32 @rndr_popbuf(%struct.sd_markdown* %145, i32 %146)
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %151, 1
  br label %154

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153, %150
  %155 = phi i64 [ %152, %150 ], [ 0, %153 ]
  store i64 %155, i64* %6, align 8
  br label %158

156:                                              ; preds = %69, %60
  br label %36

157:                                              ; preds = %36
  store i64 0, i64* %6, align 8
  br label %158

158:                                              ; preds = %157, %154, %59, %51
  %159 = load i64, i64* %6, align 8
  ret i64 %159
}

declare dso_local i64 @find_emph_char(i8*, i64, i8 signext) #1

declare dso_local i32 @_isspace(i8 signext) #1

declare dso_local i64 @_isalnum(i8 signext) #1

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i32 @parse_inline(%struct.buf*, %struct.sd_markdown*, i8*, i64) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
