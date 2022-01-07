; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_mask_transparency.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_mask_transparency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, i32, i8*, i64* }
%struct.TYPE_3__ = type { i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.info*, %struct.TYPE_3__*)* @png_mask_transparency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_mask_transparency(%struct.info* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.info*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.info* %0, %struct.info** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %14 = load %struct.info*, %struct.info** %3, align 8
  %15 = getelementptr inbounds %struct.info, %struct.info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.info*, %struct.info** %3, align 8
  %18 = getelementptr inbounds %struct.info, %struct.info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = load %struct.info*, %struct.info** %3, align 8
  %22 = getelementptr inbounds %struct.info, %struct.info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = add nsw i32 %24, 7
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %5, align 4
  %27 = load %struct.info*, %struct.info** %3, align 8
  %28 = getelementptr inbounds %struct.info, %struct.info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load %struct.info*, %struct.info** %3, align 8
  %31 = getelementptr inbounds %struct.info, %struct.info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %113, %2
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.info*, %struct.info** %3, align 8
  %36 = getelementptr inbounds %struct.info, %struct.info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %116

39:                                               ; preds = %33
  %40 = load %struct.info*, %struct.info** %3, align 8
  %41 = getelementptr inbounds %struct.info, %struct.info* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  store i8* %47, i8** %12, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = mul i32 %51, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %50, i64 %56
  store i8* %57, i8** %13, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %109, %39
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.info*, %struct.info** %3, align 8
  %61 = getelementptr inbounds %struct.info, %struct.info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %58
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %88, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = mul i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %73, %74
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @getcomp(i8* %70, i32 %75, i32 %76)
  %78 = load %struct.info*, %struct.info** %3, align 8
  %79 = getelementptr inbounds %struct.info, %struct.info* %78, i32 0, i32 5
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %77, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %65

91:                                               ; preds = %65
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i8*, i8** %13, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = mul i32 %96, %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %100, %103
  %105 = sub i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %95, i64 %106
  store i8 0, i8* %107, align 1
  br label %108

108:                                              ; preds = %94, %91
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %58

112:                                              ; preds = %58
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %33

116:                                              ; preds = %33
  ret void
}

declare dso_local i64 @getcomp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
