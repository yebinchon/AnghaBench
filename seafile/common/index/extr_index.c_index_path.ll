; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_index_path.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_index_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"g_open (\22%s\22): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"readlink(\22%s\22): %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: unsupported file type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_path(i8* %0, i8* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %14 = load i32, i32* @SEAF_PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @S_IFMT, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %67 [
    i32 128, label %23
    i32 129, label %46
  ]

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = load i32, i32* @O_BINARY, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @seaf_util_open(i8* %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i8* @strerror(i32 %33)
  %35 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %34)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %71

36:                                               ; preds = %23
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = load i32, i32* @OBJ_BLOB, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @index_fd(i8* %37, i32 %38, %struct.TYPE_4__* %39, i32 %40, i8* %41)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %71

45:                                               ; preds = %36
  br label %70

46:                                               ; preds = %3
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @SEAF_PATH_MAX, align 4
  %49 = call i32 @readlink(i8* %47, i8* %17, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* @errno, align 4
  %57 = call i8* @strerror(i32 %56)
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %71

61:                                               ; preds = %46
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @OBJ_BLOB, align 4
  %64 = call i32 @typename(i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @hash_sha1_file(i8* %17, i32 %62, i32 %64, i8* %65)
  br label %70

67:                                               ; preds = %3
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %71

70:                                               ; preds = %61, %45
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %71

71:                                               ; preds = %70, %67, %55, %44, %31
  %72 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @seaf_util_open(i8*, i32) #2

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @index_fd(i8*, i32, %struct.TYPE_4__*, i32, i8*) #2

declare dso_local i32 @readlink(i8*, i8*, i32) #2

declare dso_local i32 @hash_sha1_file(i8*, i32, i32, i8*) #2

declare dso_local i32 @typename(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
