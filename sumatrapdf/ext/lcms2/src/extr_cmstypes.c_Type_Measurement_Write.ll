; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Measurement_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Measurement_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, %struct._cms_typehandler_struct*)* @Type_Measurement_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_Measurement_Write(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, %struct._cms_typehandler_struct* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._cms_typehandler_struct*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct._cms_typehandler_struct* %4, %struct._cms_typehandler_struct** %11, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @_cmsWriteUInt32Number(i32 %15, i32* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %6, align 4
  br label %65

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = call i32 @_cmsWriteXYZNumber(i32 %25, i32* %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %6, align 4
  br label %65

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @_cmsWriteUInt32Number(i32 %34, i32* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %65

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @_cmsWrite15Fixed16Number(i32 %44, i32* %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %65

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @_cmsWriteUInt32Number(i32 %54, i32* %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %6, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %61, %51, %41, %31, %22
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @_cmsWriteUInt32Number(i32, i32*, i32) #1

declare dso_local i32 @_cmsWriteXYZNumber(i32, i32*, i32*) #1

declare dso_local i32 @_cmsWrite15Fixed16Number(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
