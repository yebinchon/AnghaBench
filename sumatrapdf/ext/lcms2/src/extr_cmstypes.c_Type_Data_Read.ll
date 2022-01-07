; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Data_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Data_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_7__ = type { i32 (i32, %struct.TYPE_7__*, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_7__*, i32*, i32)* @Type_Data_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_Data_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_7__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %15 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %14)
  %16 = load i32*, i32** %10, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %77

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @INT_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i8* null, i8** %6, align 8
  br label %77

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 12, %33
  %35 = sub i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = call i64 @_cmsMalloc(i32 %31, i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %12, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = icmp eq %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i8* null, i8** %6, align 8
  br label %77

42:                                               ; preds = %30
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = call i32 @_cmsReadUInt32Number(i32 %46, %struct.TYPE_7__* %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %55 = call i32 @_cmsFree(i32 %53, %struct.TYPE_8__* %54)
  store i8* null, i8** %6, align 8
  br label %77

56:                                               ; preds = %42
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32 (i32, %struct.TYPE_7__*, i32, i32, i32)*, i32 (i32, %struct.TYPE_7__*, i32, i32, i32)** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 %59(i32 %60, %struct.TYPE_7__* %61, i32 %64, i32 4, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %72 = call i32 @_cmsFree(i32 %70, %struct.TYPE_8__* %71)
  store i8* null, i8** %6, align 8
  br label %77

73:                                               ; preds = %56
  %74 = load i32*, i32** %10, align 8
  store i32 1, i32* %74, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %76 = bitcast %struct.TYPE_8__* %75 to i8*
  store i8* %76, i8** %6, align 8
  br label %77

77:                                               ; preds = %73, %69, %52, %41, %29, %20
  %78 = load i8*, i8** %6, align 8
  ret i8* %78
}

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i64 @_cmsMalloc(i32, i32) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @_cmsFree(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
