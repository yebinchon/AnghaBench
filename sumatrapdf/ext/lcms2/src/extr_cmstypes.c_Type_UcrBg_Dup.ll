; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_UcrBg_Dup.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_UcrBg_Dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, i8*, %struct._cms_typehandler_struct*)* @Type_UcrBg_Dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_UcrBg_Dup(i32 %0, %struct._cms_typehandler_struct* %1, i8* %2, %struct._cms_typehandler_struct* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._cms_typehandler_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._cms_typehandler_struct*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct._cms_typehandler_struct* %3, %struct._cms_typehandler_struct** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @_cmsMallocZero(i32 %14, i32 24)
  %16 = inttoptr i64 %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %11, align 8
  %17 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %7, align 8
  %18 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %20 = icmp eq %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %46

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @cmsDupToneCurve(i32 %23, i8* %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @cmsDupToneCurve(i32 %30, i8* %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cmsMLUdup(i32 %37, i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %45 = bitcast %struct.TYPE_2__* %44 to i8*
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %22, %21
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i64 @_cmsMallocZero(i32, i32) #1

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i8* @cmsDupToneCurve(i32, i8*) #1

declare dso_local i32 @cmsMLUdup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
