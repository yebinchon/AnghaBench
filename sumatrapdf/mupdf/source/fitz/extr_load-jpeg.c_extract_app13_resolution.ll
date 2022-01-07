; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-jpeg.c_extract_app13_resolution.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-jpeg.c_extract_app13_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@JPEG_APP0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Photoshop 3.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*)* @extract_app13_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_app13_resolution(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @JPEG_APP0, align 8
  %20 = add nsw i64 %19, 13
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 42
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %22, %15, %3
  store i32 0, i32* %4, align 4
  br label %138

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 14
  store i8* %47, i8** %8, align 8
  br label %48

48:                                               ; preds = %130, %35
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 12
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ult i8* %50, %51
  br i1 %52, label %53, label %137

53:                                               ; preds = %48
  store i32 -1, i32* %10, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = call i32 @read_value(i8* %55, i32 2, i32 1)
  store i32 %56, i32* %11, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 6
  %59 = call i32 @read_value(i8* %58, i32 2, i32 1)
  %60 = add nsw i32 11, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = srem i32 %61, 2
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %53
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @read_value(i8* %68, i32 4, i32 1)
  %70 = icmp eq i32 %69, 943868237
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = icmp sle i64 %73, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 -4
  %86 = call i32 @read_value(i8* %85, i32 4, i32 1)
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %80, %71, %67
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %97, %99
  %101 = icmp sgt i64 %92, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90, %87
  store i32 0, i32* %4, align 4
  br label %138

103:                                              ; preds = %90
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 1005
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 16
  br i1 %108, label %109, label %123

109:                                              ; preds = %106
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = call i32 @read_value(i8* %113, i32 2, i32 1)
  %115 = load i32*, i32** %6, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = getelementptr inbounds i8, i8* %119, i64 8
  %121 = call i32 @read_value(i8* %120, i32 2, i32 1)
  %122 = load i32*, i32** %7, align 8
  store i32 %121, i32* %122, align 4
  store i32 1, i32* %4, align 4
  br label %138

123:                                              ; preds = %106, %103
  %124 = load i32, i32* %10, align 4
  %125 = srem i32 %124, 2
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i8*, i8** %8, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %8, align 8
  br label %48

137:                                              ; preds = %48
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %109, %102, %34
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_value(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
