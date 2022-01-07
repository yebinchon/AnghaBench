; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadSeqID.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadSeqID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_11__ = type { i32 (i32, %struct.TYPE_11__*, i32, i32, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_11__*, i8*, i64, i64)* @ReadSeqID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadSeqID(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_11__* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._cms_typehandler_struct*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %8, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %14, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %21
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %15, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32 (i32, %struct.TYPE_11__*, i32, i32, i32)*, i32 (i32, %struct.TYPE_11__*, i32, i32, i32)** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %25(i32 %26, %struct.TYPE_11__* %27, i32 %31, i32 16, i32 1)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %7, align 4
  br label %49

36:                                               ; preds = %6
  %37 = load i32, i32* %8, align 4
  %38 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %9, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @ReadEmbeddedText(i32 %37, %struct._cms_typehandler_struct* %38, %struct.TYPE_11__* %39, i32* %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %7, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %45, %34
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @ReadEmbeddedText(i32, %struct._cms_typehandler_struct*, %struct.TYPE_11__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
