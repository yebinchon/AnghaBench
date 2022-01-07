; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/minizip/extr_minizip.c_getFileCrc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/minizip/extr_minizip.c_getFileCrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIP_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@ZIP_ERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"error in reading %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"file %s crc %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getFileCrc(i8* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load i32, i32* @ZIP_OK, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @FOPEN_FUNC(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ZIP_ERRNO, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @ZIP_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %65, %25
  %27 = load i32, i32* @ZIP_OK, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @fread(i8* %28, i32 1, i64 %29, i32* %30)
  %32 = trunc i64 %31 to i32
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load i32*, i32** %11, align 8
  %39 = call i64 @feof(i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @ZIP_ERRNO, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i64, i64* %12, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @crc32(i64 %50, i8* %51, i64 %52)
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %13, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @ZIP_OK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  %64 = icmp ugt i64 %63, 0
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br i1 %66, label %26, label %67

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %21
  %69 = load i32*, i32** %11, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @fclose(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i64, i64* %9, align 8
  %76 = load i64*, i64** %8, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %77, i64 %78)
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32* @FOPEN_FUNC(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @crc32(i64, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
