; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Curve_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Curve_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, %struct._cms_typehandler_struct*)* @Type_Curve_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_Curve_Write(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, %struct._cms_typehandler_struct* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._cms_typehandler_struct*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct._cms_typehandler_struct* %4, %struct._cms_typehandler_struct** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %12, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %55

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %55

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @_cmsDoubleTo8Fixed8(i32 %29, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @_cmsWriteUInt32Number(i32 %39, i32* %40, i32 1)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %6, align 4
  br label %75

45:                                               ; preds = %28
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @_cmsWriteUInt16Number(i32 %46, i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %75

53:                                               ; preds = %45
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %6, align 4
  br label %75

55:                                               ; preds = %20, %5
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_cmsWriteUInt32Number(i32 %56, i32* %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %6, align 4
  br label %75

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @_cmsWriteUInt16Array(i32 %66, i32* %67, i32 %70, i32 %73)
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %65, %63, %53, %51, %43
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @_cmsDoubleTo8Fixed8(i32, i32) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, i32*, i32) #1

declare dso_local i32 @_cmsWriteUInt16Number(i32, i32*, i32) #1

declare dso_local i32 @_cmsWriteUInt16Array(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
