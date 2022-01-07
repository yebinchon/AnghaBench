; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ColorantOrderType_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ColorantOrderType_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_5__*, i64, i32*)* }

@cmsMAXCHANNELS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_5__*, i8*, i64)* @Type_ColorantOrderType_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_ColorantOrderType_Write(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_5__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  br label %18

18:                                               ; preds = %32, %5
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @cmsMAXCHANNELS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32*, i32** %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 255
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i64, i64* %15, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %15, align 8
  br label %31

31:                                               ; preds = %28, %22
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %13, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %13, align 8
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @_cmsWriteUInt32Number(i32 %36, %struct.TYPE_5__* %37, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %59

43:                                               ; preds = %35
  %44 = load i64, i64* %15, align 8
  %45 = mul i64 %44, 4
  store i64 %45, i64* %14, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32 (i32, %struct.TYPE_5__*, i64, i32*)*, i32 (i32, %struct.TYPE_5__*, i64, i32*)** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 %48(i32 %49, %struct.TYPE_5__* %50, i64 %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %6, align 4
  br label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %55, %41
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @_cmsWriteUInt32Number(i32, %struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
