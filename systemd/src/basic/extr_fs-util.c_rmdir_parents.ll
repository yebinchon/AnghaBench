; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fs-util.c_rmdir_parents.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fs-util.c_rmdir_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmdir_parents(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %28, %2
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i1 [ false, %15 ], [ %25, %18 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %6, align 8
  br label %15

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %105, %31
  %33 = load i64, i64* %6, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %106

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i64, i64* %6, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 47
  br label %47

47:                                               ; preds = %39, %36
  %48 = phi i1 [ false, %36 ], [ %46, %39 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %6, align 8
  br label %36

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %66, %52
  %54 = load i64, i64* %6, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 47
  br label %64

64:                                               ; preds = %56, %53
  %65 = phi i1 [ false, %53 ], [ %63, %56 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, -1
  store i64 %68, i64* %6, align 8
  br label %53

69:                                               ; preds = %64
  %70 = load i64, i64* %6, align 8
  %71 = icmp ule i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %106

73:                                               ; preds = %69
  %74 = load i8*, i8** %4, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i8* @strndup(i8* %74, i64 %75)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %107

82:                                               ; preds = %73
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i64 @path_startswith(i8* %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @free(i8* %88)
  store i32 0, i32* %3, align 4
  br label %107

90:                                               ; preds = %82
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @rmdir(i8* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load i32, i32* @errno, align 4
  %99 = load i32, i32* @ENOENT, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @errno, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %107

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %90
  br label %32

106:                                              ; preds = %72, %32
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %101, %87, %79
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i64 @path_startswith(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
