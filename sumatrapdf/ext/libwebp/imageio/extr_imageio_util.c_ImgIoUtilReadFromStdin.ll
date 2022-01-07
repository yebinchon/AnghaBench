; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_imageio_util.c_ImgIoUtilReadFromStdin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_imageio_util.c_ImgIoUtilReadFromStdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ImgIoUtilReadFromStdin.kBlockSize = internal constant i64 16384, align 8
@stdin = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not read from stdin\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ImgIoUtilReadFromStdin(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = icmp eq i8** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64*, i64** %5, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %87

17:                                               ; preds = %13
  %18 = load i8**, i8*** %4, align 8
  store i8* null, i8** %18, align 8
  %19 = load i64*, i64** %5, align 8
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @stdin, align 4
  %21 = call i32 @ImgIoUtilSetBinaryMode(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %87

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %64, %24
  %26 = load i32, i32* @stdin, align 4
  %27 = call i32 @feof(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i64 [ 16384, %33 ], [ %35, %34 ]
  store i64 %37, i64* %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = add i64 %41, 1
  %43 = call i8* @realloc(i8* %38, i64 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %82

47:                                               ; preds = %36
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* @stdin, align 4
  %57 = call i64 @fread(i8* %54, i32 1, i64 %55, i32 %56)
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %65

64:                                               ; preds = %47
  br label %25

65:                                               ; preds = %63, %25
  %66 = load i32, i32* @stdin, align 4
  %67 = call i64 @ferror(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %82

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i8*, i8** %8, align 8
  %79 = load i8**, i8*** %4, align 8
  store i8* %78, i8** %79, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64*, i64** %5, align 8
  store i64 %80, i64* %81, align 8
  store i32 1, i32* %3, align 4
  br label %87

82:                                               ; preds = %69, %46
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %82, %77, %23, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ImgIoUtilSetBinaryMode(i32) #1

declare dso_local i32 @feof(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
