; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_SaveDescription.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_SaveDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }

@cmsSigTextDescriptionType = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@cmsSigMultiLocalizedUnicodeType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i32*)* @SaveDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SaveDescription(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._cms_typehandler_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %7, align 8
  %11 = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 67108864
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @cmsSigTextDescriptionType, align 4
  %18 = call i32 @_cmsWriteTypeBase(i32 %15, i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %5, align 4
  br label %42

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @Type_Text_Description_Write(i32 %23, %struct._cms_typehandler_struct* %24, i32* %25, i32* %26, i32 1)
  store i32 %27, i32* %5, align 4
  br label %42

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @cmsSigMultiLocalizedUnicodeType, align 4
  %32 = call i32 @_cmsWriteTypeBase(i32 %29, i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %42

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @Type_MLU_Write(i32 %37, %struct._cms_typehandler_struct* %38, i32* %39, i32* %40, i32 1)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36, %34, %22, %20
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @_cmsWriteTypeBase(i32, i32*, i32) #1

declare dso_local i32 @Type_Text_Description_Write(i32, %struct._cms_typehandler_struct*, i32*, i32*, i32) #1

declare dso_local i32 @Type_MLU_Write(i32, %struct._cms_typehandler_struct*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
