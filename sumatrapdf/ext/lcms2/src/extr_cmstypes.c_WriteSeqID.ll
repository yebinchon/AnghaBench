; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteSeqID.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteSeqID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_11__ = type { i32 (i32, %struct.TYPE_11__*, i32, i32)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_11__*, i8*, i64, i64)* @WriteSeqID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteSeqID(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_11__* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._cms_typehandler_struct*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %8, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %14, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32 (i32, %struct.TYPE_11__*, i32, i32)*, i32 (i32, %struct.TYPE_11__*, i32, i32)** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %19(i32 %20, %struct.TYPE_11__* %21, i32 16, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %7, align 4
  br label %51

34:                                               ; preds = %6
  %35 = load i32, i32* %8, align 4
  %36 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %9, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SaveDescription(i32 %35, %struct._cms_typehandler_struct* %36, %struct.TYPE_11__* %37, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %7, align 4
  br label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %47, %32
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @SaveDescription(i32, %struct._cms_typehandler_struct*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
