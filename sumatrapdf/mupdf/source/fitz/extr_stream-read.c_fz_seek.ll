; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stream-read.c_fz_seek.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stream-read.c_fz_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 (i32*, %struct.TYPE_6__*, i64, i32)*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"cannot seek backwards\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"seek failed\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cannot seek\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_seek(i32* %0, %struct.TYPE_6__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32 (i32*, %struct.TYPE_6__*, i64, i32)*, i32 (i32*, %struct.TYPE_6__*, i64, i32)** %12, align 8
  %14 = icmp ne i32 (i32*, %struct.TYPE_6__*, i64, i32)* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = call i64 @fz_tell(i32* %19, %struct.TYPE_6__* %20)
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32 (i32*, %struct.TYPE_6__*, i64, i32)*, i32 (i32*, %struct.TYPE_6__*, i64, i32)** %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 %27(i32* %28, %struct.TYPE_6__* %29, i64 %30, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %73

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 2
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = call i64 @fz_tell(i32* %42, %struct.TYPE_6__* %43)
  %45 = load i64, i64* %7, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i64, i64* %7, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @fz_warn(i32* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %7, align 8
  %57 = icmp sgt i64 %55, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = call i64 @fz_read_byte(i32* %59, %struct.TYPE_6__* %60)
  %62 = load i64, i64* @EOF, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @fz_warn(i32* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %68

67:                                               ; preds = %58
  br label %54

68:                                               ; preds = %64, %54
  br label %72

69:                                               ; preds = %35
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @fz_warn(i32* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %68
  br label %73

73:                                               ; preds = %72, %24
  ret void
}

declare dso_local i64 @fz_tell(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i64 @fz_read_byte(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
