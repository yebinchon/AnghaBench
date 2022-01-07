; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_get_path_encoding.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_get_path_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoding = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"check-attr\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@SIZEOF_STR = common dso_local global i32 0, align 4
@ENCODING_SEP = common dso_local global i32 0, align 4
@ENCODING_UTF8 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"--mime\00", align 1
@CHARSET_SEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.encoding* @get_path_encoding(i8* %0, %struct.encoding* %1) #0 {
  %3 = alloca %struct.encoding*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.encoding*, align 8
  %6 = alloca [6 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [5 x i8*], align 16
  store i8* %0, i8** %4, align 8
  store %struct.encoding* %1, %struct.encoding** %5, align 8
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 1
  store i8* null, i8** %18, align 8
  %19 = load i32, i32* @SIZEOF_STR, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 0
  %28 = trunc i64 %20 to i32
  %29 = call i32 @io_run_buf(i8** %27, i8* %22, i32 %28, i32* null, i32 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @ENCODING_SEP, align 4
  %33 = call i8* @strstr(i8* %22, i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %26, %2
  %36 = load %struct.encoding*, %struct.encoding** %5, align 8
  store %struct.encoding* %36, %struct.encoding** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

37:                                               ; preds = %31
  %38 = load i32, i32* @ENCODING_SEP, align 4
  %39 = call i32 @STRING_SIZE(i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** @ENCODING_UTF8, align 8
  %45 = call i32 @strcmp(i8* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %82, label %55

55:                                               ; preds = %51, %47, %37
  %56 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %56, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %57, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %58, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = load i8*, i8** %4, align 8
  store i8* %60, i8** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 1
  store i8* null, i8** %61, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %55
  %66 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %67 = trunc i64 %20 to i32
  %68 = call i32 @io_run_buf(i8** %66, i8* %22, i32 %67, i32* null, i32 0)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @CHARSET_SEP, align 4
  %72 = call i8* @strstr(i8* %22, i32 %71)
  store i8* %72, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70, %65, %55
  %75 = load %struct.encoding*, %struct.encoding** %5, align 8
  store %struct.encoding* %75, %struct.encoding** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

76:                                               ; preds = %70
  %77 = load i32, i32* @CHARSET_SEP, align 4
  %78 = call i32 @STRING_SIZE(i32 %77)
  %79 = load i8*, i8** %9, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %76, %51
  %83 = load i8*, i8** %9, align 8
  %84 = call %struct.encoding* @encoding_open(i8* %83)
  store %struct.encoding* %84, %struct.encoding** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %74, %35
  %86 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load %struct.encoding*, %struct.encoding** %3, align 8
  ret %struct.encoding* %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @io_run_buf(i8**, i8*, i32, i32*, i32) #2

declare dso_local i8* @strstr(i8*, i32) #2

declare dso_local i32 @STRING_SIZE(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local %struct.encoding* @encoding_open(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
