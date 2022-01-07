; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_read_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_read_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@BOM_NONE = common dso_local global i64 0, align 8
@BOM_UTF16 = common dso_local global i64 0, align 8
@BOM_UTF8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_stream(%struct.TYPE_3__* %0, i32* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @IStream_Read(i32* %17, i8* %18, i32 %19, i32* %11)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %90, label %25

25:                                               ; preds = %5
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BOM_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = icmp sge i32 %32, 2
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32*, i32** %13, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 254
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64, i64* @BOM_UTF16, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  store i32 2, i32* %12, align 4
  br label %71

48:                                               ; preds = %39, %34, %31
  %49 = load i32, i32* %11, align 4
  %50 = icmp sge i32 %49, 3
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load i32*, i32** %13, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 239
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 187
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i32*, i32** %13, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 191
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* @BOM_UTF8, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  store i32 3, i32* %12, align 4
  br label %70

70:                                               ; preds = %66, %61, %56, %51, %48
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @memmove(i32* %81, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %80, %74
  br label %89

89:                                               ; preds = %88, %71
  br label %90

90:                                               ; preds = %89, %25, %5
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %14, align 4
  ret i32 %99
}

declare dso_local i32 @IStream_Read(i32*, i8*, i32, i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
