; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ProfileSequenceId_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ProfileSequenceId_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, %struct.TYPE_6__*)* }

@ReadSeqID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_6__*, i32*, i32)* @Type_ProfileSequenceId_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_ProfileSequenceId_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_6__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %10, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = call i32 %18(i32 %19, %struct.TYPE_6__* %20)
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = call i32 @_cmsReadUInt32Number(i32 %25, %struct.TYPE_6__* %26, i32* %13)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %58

30:                                               ; preds = %5
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i8* @cmsAllocProfileSequenceDescription(i32 %35, i32 %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i8* null, i8** %6, align 8
  br label %58

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* @ReadSeqID, align 4
  %49 = call i32 @ReadPositionTable(i32 %42, %struct._cms_typehandler_struct* %43, %struct.TYPE_6__* %44, i32 %45, i32 %46, i8* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @cmsFreeProfileSequenceDescription(i32 %52, i8* %53)
  store i8* null, i8** %6, align 8
  br label %58

55:                                               ; preds = %41
  %56 = load i32*, i32** %10, align 8
  store i32 1, i32* %56, align 4
  %57 = load i8*, i8** %12, align 8
  store i8* %57, i8** %6, align 8
  br label %58

58:                                               ; preds = %55, %51, %40, %29
  %59 = load i8*, i8** %6, align 8
  ret i8* %59
}

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i8* @cmsAllocProfileSequenceDescription(i32, i32) #1

declare dso_local i32 @ReadPositionTable(i32, %struct._cms_typehandler_struct*, %struct.TYPE_6__*, i32, i32, i8*, i32) #1

declare dso_local i32 @cmsFreeProfileSequenceDescription(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
