; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_finds.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_finds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@PDF_FLAGS_SORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i8*)* @pdf_dict_finds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_dict_finds(i32* %0, %struct.TYPE_7__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = call %struct.TYPE_8__* @DICT(%struct.TYPE_7__* %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PDF_FLAGS_SORTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %91

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = call %struct.TYPE_8__* @DICT(%struct.TYPE_7__* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pdf_to_name(i32* %30, i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcmp(i32 %40, i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %27
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = sub nsw i32 -1, %46
  store i32 %47, i32* %4, align 4
  br label %120

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %87, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %54, %55
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = call %struct.TYPE_8__* @DICT(%struct.TYPE_7__* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pdf_to_name(i32* %58, i32 %67)
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @strcmp(i32 %68, i8* %69)
  %71 = sub nsw i64 0, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %53
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %87

78:                                               ; preds = %53
  %79 = load i32, i32* %12, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %4, align 4
  br label %120

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %75
  br label %49

88:                                               ; preds = %49
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 -1, %89
  store i32 %90, i32* %4, align 4
  br label %120

91:                                               ; preds = %24, %3
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %114, %91
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = call %struct.TYPE_8__* @DICT(%struct.TYPE_7__* %98)
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pdf_to_name(i32* %97, i32 %106)
  %108 = load i8*, i8** %7, align 8
  %109 = call i64 @strcmp(i32 %107, i8* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %96
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %120

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %92

117:                                              ; preds = %92
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 -1, %118
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %111, %88, %84, %44
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_8__* @DICT(%struct.TYPE_7__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pdf_to_name(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
