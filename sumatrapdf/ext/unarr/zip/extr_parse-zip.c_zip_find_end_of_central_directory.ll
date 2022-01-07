; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_parse-zip.c_zip_find_end_of_central_directory.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_parse-zip.c_zip_find_end_of_central_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@ZIP_END_OF_CENTRAL_DIR_SIZE = common dso_local global i32 0, align 4
@SIG_END_OF_CENTRAL_DIRECTORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zip_find_end_of_central_directory(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [512 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @SEEK_END, align 4
  %11 = call i32 @ar_seek(i32* %9, i32 0, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %99

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @ar_tell(i32* %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %93, %14
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @UINT16_MAX, align 4
  %20 = load i32, i32* @ZIP_END_OF_CENTRAL_DIR_SIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i1 [ false, %17 ], [ %26, %23 ]
  br i1 %28, label %29, label %98

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 2048
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i64 [ %39, %35 ], [ 2048, %40 ]
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @ZIP_END_OF_CENTRAL_DIR_SIZE, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %99

51:                                               ; preds = %41
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 0, %53
  %55 = load i32, i32* @SEEK_END, align 4
  %56 = call i32 @ar_seek(i32* %52, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 -1, i32* %2, align 4
  br label %99

59:                                               ; preds = %51
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds [512 x i32], [512 x i32]* %4, i64 0, i64 0
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @ar_read(i32* %60, i32* %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 -1, i32* %2, align 4
  br label %99

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ZIP_END_OF_CENTRAL_DIR_SIZE, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %90, %68
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = getelementptr inbounds [512 x i32], [512 x i32]* %4, i64 0, i64 0
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i64 @uint32le(i32* %79)
  %81 = load i64, i64* @SIG_END_OF_CENTRAL_DIRECTORY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %2, align 4
  br label %99

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %8, align 4
  br label %72

93:                                               ; preds = %72
  %94 = load i32, i32* @ZIP_END_OF_CENTRAL_DIR_SIZE, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %17

98:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %83, %67, %58, %50, %13
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @ar_seek(i32*, i32, i32) #1

declare dso_local i32 @ar_tell(i32*) #1

declare dso_local i64 @ar_read(i32*, i32*, i32) #1

declare dso_local i64 @uint32le(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
