; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ProfileSequenceDesc_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ProfileSequenceDesc_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, i64)* @Type_ProfileSequenceDesc_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_ProfileSequenceDesc_Write(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @_cmsWriteUInt32Number(i32 %17, i32* %18, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %6, align 4
  br label %105

26:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %100, %26
  %28 = load i64, i64* %13, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %103

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %14, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @_cmsWriteUInt32Number(i32 %39, i32* %40, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %6, align 4
  br label %105

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @_cmsWriteUInt32Number(i32 %49, i32* %50, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %6, align 4
  br label %105

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = call i32 @_cmsWriteUInt64Number(i32 %59, i32* %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %6, align 4
  br label %105

67:                                               ; preds = %58
  %68 = load i32, i32* %7, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @_cmsWriteUInt32Number(i32 %68, i32* %69, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %6, align 4
  br label %105

77:                                               ; preds = %67
  %78 = load i32, i32* %7, align 4
  %79 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SaveDescription(i32 %78, %struct._cms_typehandler_struct* %79, i32* %80, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %6, align 4
  br label %105

88:                                               ; preds = %77
  %89 = load i32, i32* %7, align 4
  %90 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @SaveDescription(i32 %89, %struct._cms_typehandler_struct* %90, i32* %91, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %6, align 4
  br label %105

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %13, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %13, align 8
  br label %27

103:                                              ; preds = %27
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %97, %86, %75, %65, %56, %46, %24
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @_cmsWriteUInt32Number(i32, i32*, i64) #1

declare dso_local i32 @_cmsWriteUInt64Number(i32, i32*, i32*) #1

declare dso_local i32 @SaveDescription(i32, %struct._cms_typehandler_struct*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
