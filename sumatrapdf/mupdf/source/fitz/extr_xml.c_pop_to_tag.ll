; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_pop_to_tag.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_pop_to_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.parser*, i8*, i8*)* @pop_to_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop_to_tag(i32* %0, %struct.parser* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.parser*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.parser* %1, %struct.parser** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.parser*, %struct.parser** %7, align 8
  %15 = getelementptr inbounds %struct.parser, %struct.parser* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %4
  %19 = load %struct.parser*, %struct.parser** %7, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %10, align 8
  br label %22

22:                                               ; preds = %54, %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = call i8* @fz_xml_tag(%struct.TYPE_3__* %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load i8*, i8** %12, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i64 @fz_strncasecmp(i8* %31, i8* %32, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %30
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, i8* %42, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %58

53:                                               ; preds = %41, %30, %25
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %10, align 8
  br label %22

58:                                               ; preds = %52, %22
  br label %100

59:                                               ; preds = %4
  %60 = load %struct.parser*, %struct.parser** %7, align 8
  %61 = getelementptr inbounds %struct.parser, %struct.parser* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %10, align 8
  br label %63

63:                                               ; preds = %95, %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = call i8* @fz_xml_tag(%struct.TYPE_3__* %67)
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load i8*, i8** %13, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = call i64 @strncmp(i8* %72, i8* %73, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %71
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %99

94:                                               ; preds = %82, %71, %66
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  store %struct.TYPE_3__* %98, %struct.TYPE_3__** %10, align 8
  br label %63

99:                                               ; preds = %93, %63
  br label %100

100:                                              ; preds = %99, %58
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %102 = icmp eq %struct.TYPE_3__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %121

104:                                              ; preds = %100
  %105 = load %struct.parser*, %struct.parser** %7, align 8
  %106 = getelementptr inbounds %struct.parser, %struct.parser* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  store %struct.TYPE_3__* %107, %struct.TYPE_3__** %11, align 8
  br label %108

108:                                              ; preds = %116, %104
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %111 = icmp ne %struct.TYPE_3__* %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.parser*, %struct.parser** %7, align 8
  %115 = call i32 @xml_emit_close_tag(i32* %113, %struct.parser* %114)
  br label %116

116:                                              ; preds = %112
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  store %struct.TYPE_3__* %119, %struct.TYPE_3__** %11, align 8
  br label %108

120:                                              ; preds = %108
  store i32 1, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %103
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i8* @fz_xml_tag(%struct.TYPE_3__*) #1

declare dso_local i64 @fz_strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @xml_emit_close_tag(i32*, %struct.parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
