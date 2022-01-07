; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_fencedcode.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_fencedcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i8*, i32, i32, i32, i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)* }
%struct.buf.0 = type opaque

@BUFFER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64)* @parse_fencedcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_fencedcode(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.sd_markdown*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca %struct.buf, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.buf, align 8
  store %struct.buf* %0, %struct.buf** %6, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.buf* null, %struct.buf** %12, align 8
  %16 = bitcast %struct.buf* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @is_codefence(i8* %17, i64 %18, %struct.buf* %13)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %151

23:                                               ; preds = %4
  %24 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %25 = load i32, i32* @BUFFER_BLOCK, align 4
  %26 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %24, i32 %25)
  store %struct.buf* %26, %struct.buf** %12, align 8
  br label %27

27:                                               ; preds = %97, %23
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %99

31:                                               ; preds = %27
  %32 = bitcast %struct.buf* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 32, i1 false)
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub i64 %36, %37
  %39 = call i64 @is_codefence(i8* %35, i64 %38, %struct.buf* %15)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %10, align 8
  br label %99

50:                                               ; preds = %42, %31
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %68, %50
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %11, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 10
  br label %65

65:                                               ; preds = %57, %53
  %66 = phi i1 [ false, %53 ], [ %64, %57 ]
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %53

71:                                               ; preds = %65
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %10, align 8
  %81 = sub i64 %79, %80
  %82 = call i64 @is_empty(i8* %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load %struct.buf*, %struct.buf** %12, align 8
  %86 = call i32 @bufputc(%struct.buf* %85, i8 signext 10)
  br label %96

87:                                               ; preds = %75
  %88 = load %struct.buf*, %struct.buf** %12, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %10, align 8
  %94 = sub i64 %92, %93
  %95 = call i32 @bufput(%struct.buf* %88, i8* %91, i64 %94)
  br label %96

96:                                               ; preds = %87, %84
  br label %97

97:                                               ; preds = %96, %71
  %98 = load i64, i64* %11, align 8
  store i64 %98, i64* %10, align 8
  br label %27

99:                                               ; preds = %46, %27
  %100 = load %struct.buf*, %struct.buf** %12, align 8
  %101 = getelementptr inbounds %struct.buf, %struct.buf* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load %struct.buf*, %struct.buf** %12, align 8
  %106 = getelementptr inbounds %struct.buf, %struct.buf* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.buf*, %struct.buf** %12, align 8
  %109 = getelementptr inbounds %struct.buf, %struct.buf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 1
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 10
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load %struct.buf*, %struct.buf** %12, align 8
  %118 = call i32 @bufputc(%struct.buf* %117, i8 signext 10)
  br label %119

119:                                              ; preds = %116, %104, %99
  %120 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %121 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)** %122, align 8
  %124 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)* %123, null
  br i1 %124, label %125, label %146

125:                                              ; preds = %119
  %126 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %127 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, %struct.buf.0*, i32)** %128, align 8
  %130 = load %struct.buf*, %struct.buf** %6, align 8
  %131 = bitcast %struct.buf* %130 to %struct.buf.0*
  %132 = load %struct.buf*, %struct.buf** %12, align 8
  %133 = bitcast %struct.buf* %132 to %struct.buf.0*
  %134 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %139

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %137
  %140 = phi %struct.buf* [ %13, %137 ], [ null, %138 ]
  %141 = bitcast %struct.buf* %140 to %struct.buf.0*
  %142 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %143 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %129(%struct.buf.0* %131, %struct.buf.0* %133, %struct.buf.0* %141, i32 %144)
  br label %146

146:                                              ; preds = %139, %119
  %147 = load %struct.sd_markdown*, %struct.sd_markdown** %7, align 8
  %148 = load i32, i32* @BUFFER_BLOCK, align 4
  %149 = call i32 @rndr_popbuf(%struct.sd_markdown* %147, i32 %148)
  %150 = load i64, i64* %10, align 8
  store i64 %150, i64* %5, align 8
  br label %151

151:                                              ; preds = %146, %22
  %152 = load i64, i64* %5, align 8
  ret i64 %152
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @is_codefence(i8*, i64, %struct.buf*) #2

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #2

declare dso_local i64 @is_empty(i8*, i64) #2

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #2

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #2

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
