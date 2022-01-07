; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_tox_sync.c_file_request_accept.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_tox_sync.c_file_request_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@TOX_FILE_KIND_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Refused invalid file type.\00", align 1
@TOX_FILE_CONTROL_CANCEL = common dso_local global i32 0, align 4
@path = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@file_recv = common dso_local global %struct.TYPE_2__* null, align 8
@TOX_FILE_CONTROL_RESUME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Accepted file transfer. (file: %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_request_accept(i32* %0, i64 %1, i64 %2, i64 %3, i32 %4, i8* %5, i64 %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8, align 1
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* %7, i8** %16, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @TOX_FILE_KIND_DATA, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i32, i32* @TOX_FILE_CONTROL_CANCEL, align 4
  %31 = call i64 @tox_file_control(i32* %27, i64 %28, i64 %29, i32 %30, i32 0)
  br label %128

32:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %18, align 8
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* %18, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i8*, i8** %14, align 8
  %40 = load i64, i64* %18, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %18, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %19, align 4
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %18, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %18, align 8
  br label %33

52:                                               ; preds = %33
  %53 = load i8*, i8** @path, align 8
  %54 = load i8*, i8** @path, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %63 = load i8*, i8** @path, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %68)
  br label %79

70:                                               ; preds = %52
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %72 = load i8*, i8** @path, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %72, i8* %77)
  br label %79

79:                                               ; preds = %70, %61
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %81 = call i8* @fopen(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %20, align 8
  %83 = load i32*, i32** %20, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i32*, i32** %20, align 8
  %87 = call i32 @fclose(i32* %86)
  %88 = load i32*, i32** %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i32, i32* @TOX_FILE_CONTROL_CANCEL, align 4
  %92 = call i64 @tox_file_control(i32* %88, i64 %89, i64 %90, i32 %91, i32 0)
  br label %128

93:                                               ; preds = %79
  %94 = load i64, i64* %11, align 8
  %95 = ashr i64 %94, 16
  %96 = sub nsw i64 %95, 1
  %97 = trunc i64 %96 to i8
  store i8 %97, i8* %21, align 1
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %99 = call i8* @fopen(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_recv, align 8
  %101 = load i8, i8* %21, align 1
  %102 = sext i8 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i8* %99, i8** %104, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_recv, align 8
  %106 = load i8, i8* %21, align 1
  %107 = sext i8 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %93
  %113 = load i32*, i32** %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i32, i32* @TOX_FILE_CONTROL_CANCEL, align 4
  %117 = call i64 @tox_file_control(i32* %113, i64 %114, i64 %115, i32 %116, i32 0)
  br label %128

118:                                              ; preds = %93
  %119 = load i32*, i32** %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i32, i32* @TOX_FILE_CONTROL_RESUME, align 4
  %123 = call i64 @tox_file_control(i32* %119, i64 %120, i64 %121, i32 %122, i32 0)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %25, %85, %112, %125, %118
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @tox_file_control(i32*, i64, i64, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
