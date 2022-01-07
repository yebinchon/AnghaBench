; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_fz_scan_convert_sharp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_fz_scan_convert_sharp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i32, %struct.TYPE_13__*, i32*, i8*, i32*, i32*)* @fz_scan_convert_sharp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_scan_convert_sharp(i32* %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_13__* %3, i32* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %18, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %18, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %8
  br label %35

35:                                               ; preds = %65, %34
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ true, %35 ], [ %45, %40 ]
  br i1 %47, label %48, label %66

48:                                               ; preds = %46
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @insert_active(i32* %49, %struct.TYPE_14__* %50, i32 %51, i32* %17)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %18, align 4
  br label %66

65:                                               ; preds = %48
  br label %35

66:                                               ; preds = %61, %46
  br label %67

67:                                               ; preds = %66, %8
  br label %68

68:                                               ; preds = %148, %67
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br label %79

79:                                               ; preds = %73, %68
  %80 = phi i1 [ true, %68 ], [ %78, %73 ]
  br i1 %80, label %81, label %153

81:                                               ; preds = %79
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @insert_active(i32* %82, %struct.TYPE_14__* %83, i32 %84, i32* %17)
  store i32 %85, i32* %19, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %18, align 4
  br label %141

94:                                               ; preds = %81
  %95 = load i32, i32* %19, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %18, align 4
  %100 = sub nsw i32 %98, %99
  %101 = icmp sge i32 %95, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %18, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %102, %94
  %109 = load i32, i32* %19, align 4
  store i32 %109, i32* %20, align 4
  br label %110

110:                                              ; preds = %137, %108
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %20, align 4
  %113 = icmp ne i32 %111, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %110
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32*, i32** %9, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %120 = load i32, i32* %18, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @even_odd_sharp(i32* %118, %struct.TYPE_14__* %119, i32 %120, %struct.TYPE_13__* %121, i32* %122, i8* %123, i32* %124, i32* %125)
  br label %137

127:                                              ; preds = %114
  %128 = load i32*, i32** %9, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %130 = load i32, i32* %18, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = load i8*, i8** %14, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = load i32*, i32** %16, align 8
  %136 = call i32 @non_zero_winding_sharp(i32* %128, %struct.TYPE_14__* %129, i32 %130, %struct.TYPE_13__* %131, i32* %132, i8* %133, i32* %134, i32* %135)
  br label %137

137:                                              ; preds = %127, %117
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %18, align 4
  br label %110

140:                                              ; preds = %110
  br label %141

141:                                              ; preds = %140, %90
  %142 = load i32, i32* %18, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sge i32 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %153

148:                                              ; preds = %141
  %149 = load i32*, i32** %9, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %151 = load i32, i32* %19, align 4
  %152 = call i32 @advance_active(i32* %149, %struct.TYPE_14__* %150, i32 %151)
  br label %68

153:                                              ; preds = %147, %79
  ret void
}

declare dso_local i32 @insert_active(i32*, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @even_odd_sharp(i32*, %struct.TYPE_14__*, i32, %struct.TYPE_13__*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @non_zero_winding_sharp(i32*, %struct.TYPE_14__*, i32, %struct.TYPE_13__*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @advance_active(i32*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
