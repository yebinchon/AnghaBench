; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_path_expand.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_path_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@SIZEOF_STR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"/$|&;<>(){}`\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WRDE_NOCMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_expand(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 126
  br i1 %23, label %24, label %84

24:                                               ; preds = %18
  %25 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %30

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %29 ]
  store i8* %31, i8** %8, align 8
  %32 = load i32, i32* @SIZEOF_STR, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %11, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  %36 = load i32, i32* @SIZEOF_STR, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %13, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @string_format(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcspn(i8* %41, i8* %35)
  store i64 %42, i64* %10, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %56, label %49

49:                                               ; preds = %30
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %49, %30
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 (i8*, i64, i32*, i8*, i8*, ...) @string_nformat(i8* %38, i64 %58, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @WRDE_NOCMD, align 4
  %62 = call i64 @wordexp(i8* %38, %struct.TYPE_4__* %9, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

65:                                               ; preds = %56
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = call i32 (i8*, i64, i32*, i8*, i8*, ...) @string_nformat(i8* %66, i64 %67, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %76)
  %78 = call i32 @wordfree(%struct.TYPE_4__* %9)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

79:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %79, %65, %64
  %81 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %14, align 4
  switch i32 %82, label %93 [
    i32 0, label %83
    i32 1, label %91
  ]

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %83, %18
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = call i32 @string_ncopy_do(i8* %85, i64 %86, i8* %87, i32 %89)
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %84, %80, %17
  %92 = load i32, i32* %4, align 4
  ret i32 %92

93:                                               ; preds = %80
  unreachable
}

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @string_format(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @string_nformat(i8*, i64, i32*, i8*, i8*, ...) #1

declare dso_local i64 @wordexp(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @wordfree(%struct.TYPE_4__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @string_ncopy_do(i8*, i64, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
