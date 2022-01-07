; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteOneMLUC.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteOneMLUC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_8__ = type { i64 (i32, %struct.TYPE_8__*)* }
%struct.TYPE_9__ = type { i64*, i64* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, %struct.TYPE_9__*, i64, i32*, i64)* @WriteOneMLUC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteOneMLUC(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_8__* %2, %struct.TYPE_9__* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._cms_typehandler_struct*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %10, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %7
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %13, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %8, align 4
  br label %70

31:                                               ; preds = %7
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64 (i32, %struct.TYPE_8__*)*, i64 (i32, %struct.TYPE_8__*)** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = call i64 %34(i32 %35, %struct.TYPE_8__* %36)
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* %15, align 8
  %40 = sub i64 %38, %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %40, i64* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %10, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = call i32 @Type_MLU_Write(i32 %46, %struct._cms_typehandler_struct* %47, %struct.TYPE_8__* %48, i8* %50, i32 1)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %31
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %8, align 4
  br label %70

55:                                               ; preds = %31
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64 (i32, %struct.TYPE_8__*)*, i64 (i32, %struct.TYPE_8__*)** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %61 = call i64 %58(i32 %59, %struct.TYPE_8__* %60)
  %62 = load i64, i64* %16, align 8
  %63 = sub i64 %61, %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %63, i64* %68, align 8
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %55, %53, %19
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @Type_MLU_Write(i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
