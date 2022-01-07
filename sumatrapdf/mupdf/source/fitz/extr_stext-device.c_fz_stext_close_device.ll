; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_stext_close_device.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_fz_stext_close_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i8*, %struct.TYPE_9__, %struct.TYPE_14__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }

@FZ_STEXT_BLOCK_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fz_stext_close_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_stext_close_device(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %7, align 8
  br label %19

19:                                               ; preds = %87, %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %91

22:                                               ; preds = %19
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FZ_STEXT_BLOCK_TEXT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %87

29:                                               ; preds = %22
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %8, align 8
  br label %35

35:                                               ; preds = %82, %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %86

38:                                               ; preds = %35
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %9, align 8
  br label %42

42:                                               ; preds = %68, %38
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %45, label %72

45:                                               ; preds = %42
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @fz_rect_from_quad(i32 %48)
  store i8* %49, i8** %10, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = icmp eq %struct.TYPE_13__* %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i8*, i8** %10, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %67

59:                                               ; preds = %45
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i8* @fz_union_rect(i8* %62, i8* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %59, %55
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %9, align 8
  br label %42

72:                                               ; preds = %42
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @fz_union_rect(i8* %75, i8* %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %72
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %8, align 8
  br label %35

86:                                               ; preds = %35
  br label %87

87:                                               ; preds = %86, %28
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %7, align 8
  br label %19

91:                                               ; preds = %19
  ret void
}

declare dso_local i8* @fz_rect_from_quad(i32) #1

declare dso_local i8* @fz_union_rect(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
