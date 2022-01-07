; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_autolink_www.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_autolink_www.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32*, %struct.buf.0*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)* }
%struct.buf.0 = type opaque
%struct.buf.1 = type opaque

@BUFFER_SPAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i32*, i64, i64)* @char_autolink_www to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @char_autolink_www(%struct.buf* %0, %struct.sd_markdown* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca %struct.buf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %18 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.buf.0*, %struct.buf.0*, i32*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32*, %struct.buf.0*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32*, %struct.buf.0*, i32)* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %24 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %5
  store i64 0, i64* %6, align 8
  br label %119

28:                                               ; preds = %22
  %29 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %30 = load i32, i32* @BUFFER_SPAN, align 4
  %31 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %29, i32 %30)
  store %struct.buf* %31, %struct.buf** %12, align 8
  %32 = load %struct.buf*, %struct.buf** %12, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i64 @sd_autolink__www(i64* %16, %struct.buf* %32, i32* %33, i64 %34, i64 %35, i32 0)
  store i64 %36, i64* %15, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %114

38:                                               ; preds = %28
  %39 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %40 = load i32, i32* @BUFFER_SPAN, align 4
  %41 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %39, i32 %40)
  store %struct.buf* %41, %struct.buf** %13, align 8
  %42 = load %struct.buf*, %struct.buf** %13, align 8
  %43 = call i32 @BUFPUTSL(%struct.buf* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.buf*, %struct.buf** %13, align 8
  %45 = load %struct.buf*, %struct.buf** %12, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.buf*, %struct.buf** %12, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @bufput(%struct.buf* %44, i32 %47, i64 %50)
  %52 = load i64, i64* %16, align 8
  %53 = load %struct.buf*, %struct.buf** %7, align 8
  %54 = getelementptr inbounds %struct.buf, %struct.buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %58 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.buf.1*, %struct.buf.1*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.buf.1*, %struct.buf.1*, i32)* %60, null
  br i1 %61, label %62, label %95

62:                                               ; preds = %38
  %63 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %64 = load i32, i32* @BUFFER_SPAN, align 4
  %65 = call %struct.buf* @rndr_newbuf(%struct.sd_markdown* %63, i32 %64)
  store %struct.buf* %65, %struct.buf** %14, align 8
  %66 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %67 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (%struct.buf.1*, %struct.buf.1*, i32)*, i32 (%struct.buf.1*, %struct.buf.1*, i32)** %68, align 8
  %70 = load %struct.buf*, %struct.buf** %14, align 8
  %71 = bitcast %struct.buf* %70 to %struct.buf.1*
  %72 = load %struct.buf*, %struct.buf** %12, align 8
  %73 = bitcast %struct.buf* %72 to %struct.buf.1*
  %74 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %75 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %69(%struct.buf.1* %71, %struct.buf.1* %73, i32 %76)
  %78 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %79 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.buf.0*, %struct.buf.0*, i32*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32*, %struct.buf.0*, i32)** %80, align 8
  %82 = load %struct.buf*, %struct.buf** %7, align 8
  %83 = bitcast %struct.buf* %82 to %struct.buf.0*
  %84 = load %struct.buf*, %struct.buf** %13, align 8
  %85 = bitcast %struct.buf* %84 to %struct.buf.0*
  %86 = load %struct.buf*, %struct.buf** %14, align 8
  %87 = bitcast %struct.buf* %86 to %struct.buf.0*
  %88 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %89 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %81(%struct.buf.0* %83, %struct.buf.0* %85, i32* null, %struct.buf.0* %87, i32 %90)
  %92 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %93 = load i32, i32* @BUFFER_SPAN, align 4
  %94 = call i32 @rndr_popbuf(%struct.sd_markdown* %92, i32 %93)
  br label %110

95:                                               ; preds = %38
  %96 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %97 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32 (%struct.buf.0*, %struct.buf.0*, i32*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32*, %struct.buf.0*, i32)** %98, align 8
  %100 = load %struct.buf*, %struct.buf** %7, align 8
  %101 = bitcast %struct.buf* %100 to %struct.buf.0*
  %102 = load %struct.buf*, %struct.buf** %13, align 8
  %103 = bitcast %struct.buf* %102 to %struct.buf.0*
  %104 = load %struct.buf*, %struct.buf** %12, align 8
  %105 = bitcast %struct.buf* %104 to %struct.buf.0*
  %106 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %107 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %99(%struct.buf.0* %101, %struct.buf.0* %103, i32* null, %struct.buf.0* %105, i32 %108)
  br label %110

110:                                              ; preds = %95, %62
  %111 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %112 = load i32, i32* @BUFFER_SPAN, align 4
  %113 = call i32 @rndr_popbuf(%struct.sd_markdown* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %28
  %115 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %116 = load i32, i32* @BUFFER_SPAN, align 4
  %117 = call i32 @rndr_popbuf(%struct.sd_markdown* %115, i32 %116)
  %118 = load i64, i64* %15, align 8
  store i64 %118, i64* %6, align 8
  br label %119

119:                                              ; preds = %114, %27
  %120 = load i64, i64* %6, align 8
  ret i64 %120
}

declare dso_local %struct.buf* @rndr_newbuf(%struct.sd_markdown*, i32) #1

declare dso_local i64 @sd_autolink__www(i64*, %struct.buf*, i32*, i64, i64, i32) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufput(%struct.buf*, i32, i64) #1

declare dso_local i32 @rndr_popbuf(%struct.sd_markdown*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
