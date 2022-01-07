; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_pageheap.c_PageHeap_ParseCmdline.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_pageheap.c_PageHeap_ParseCmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i32] [i32 47, i32 101, i32 110, i32 97, i32 98, i32 108, i32 101, i32 0], align 4
@TRUE = common dso_local global i8* null, align 8
@Set = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i32] [i32 47, i32 100, i32 105, i32 115, i32 97, i32 98, i32 108, i32 101, i32 0], align 4
@Unset = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i32] [i32 47, i32 102, i32 117, i32 108, i32 108, i32 0], align 4
@Full = common dso_local global i8* null, align 8
@Image = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [20 x i32] [i32 73, i32 110, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 111, i32 112, i32 116, i32 105, i32 111, i32 110, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@FALSE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [44 x i32] [i32 69, i32 78, i32 65, i32 66, i32 76, i32 69, i32 32, i32 97, i32 110, i32 100, i32 32, i32 68, i32 73, i32 83, i32 65, i32 66, i32 76, i32 69, i32 68, i32 32, i32 99, i32 97, i32 110, i32 110, i32 111, i32 116, i32 32, i32 98, i32 101, i32 32, i32 115, i32 101, i32 116, i32 32, i32 116, i32 111, i32 103, i32 101, i32 116, i32 104, i32 101, i32 114, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [39 x i32] [i32 67, i32 97, i32 110, i32 39, i32 116, i32 32, i32 69, i32 78, i32 65, i32 66, i32 76, i32 69, i32 32, i32 111, i32 114, i32 32, i32 68, i32 73, i32 83, i32 65, i32 66, i32 76, i32 69, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 110, i32 111, i32 32, i32 105, i32 109, i32 97, i32 103, i32 101, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [55 x i32] [i32 67, i32 97, i32 110, i32 110, i32 111, i32 116, i32 32, i32 100, i32 101, i32 97, i32 108, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 102, i32 117, i32 108, i32 108, i32 32, i32 116, i32 114, i32 97, i32 99, i32 101, i32 115, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 110, i32 111, i32 32, i32 111, i32 116, i32 104, i32 101, i32 114, i32 32, i32 105, i32 110, i32 100, i32 105, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PageHeap_ParseCmdline(i32 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  br label %8

8:                                                ; preds = %73, %3
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %76

12:                                               ; preds = %8
  %13 = load i32**, i32*** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %54

21:                                               ; preds = %12
  %22 = load i32**, i32*** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @wcscmp(i32* %26, i8* bitcast ([8 x i32]* @.str to i8*))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i8*, i8** @TRUE, align 8
  store i8* %30, i8** @Set, align 8
  br label %53

31:                                               ; preds = %21
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @wcscmp(i32* %36, i8* bitcast ([9 x i32]* @.str.1 to i8*))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i8*, i8** @TRUE, align 8
  store i8* %40, i8** @Unset, align 8
  br label %52

41:                                               ; preds = %31
  %42 = load i32**, i32*** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @wcscmp(i32* %46, i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i8*, i8** @TRUE, align 8
  store i8* %50, i8** @Full, align 8
  br label %51

51:                                               ; preds = %49, %41
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %29
  br label %72

54:                                               ; preds = %12
  %55 = load i32*, i32** @Image, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32**, i32*** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** @Image, align 8
  br label %71

63:                                               ; preds = %54
  %64 = load i32**, i32*** %7, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 (i8*, ...) @wprintf(i8* bitcast ([20 x i32]* @.str.3 to i8*), i32* %68)
  %70 = load i8*, i8** @FALSE, align 8
  store i8* %70, i8** %4, align 8
  br label %114

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %53
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %8

76:                                               ; preds = %8
  %77 = load i8*, i8** @Set, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i8*, i8** @Unset, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @wprintf(i8* bitcast ([44 x i32]* @.str.4 to i8*))
  %84 = load i8*, i8** @FALSE, align 8
  store i8* %84, i8** %4, align 8
  br label %114

85:                                               ; preds = %79, %76
  %86 = load i32*, i32** @Image, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load i8*, i8** @Set, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** @Unset, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i8*, i8** @Full, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94, %91, %88
  %98 = call i32 (i8*, ...) @wprintf(i8* bitcast ([39 x i32]* @.str.5 to i8*))
  %99 = load i8*, i8** @FALSE, align 8
  store i8* %99, i8** %4, align 8
  br label %114

100:                                              ; preds = %94, %85
  %101 = load i8*, i8** @Set, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = load i8*, i8** @Unset, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load i8*, i8** @Full, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = call i32 (i8*, ...) @wprintf(i8* bitcast ([55 x i32]* @.str.6 to i8*))
  %111 = load i8*, i8** @FALSE, align 8
  store i8* %111, i8** %4, align 8
  br label %114

112:                                              ; preds = %106, %103, %100
  %113 = load i8*, i8** @TRUE, align 8
  store i8* %113, i8** %4, align 8
  br label %114

114:                                              ; preds = %112, %109, %97, %82, %63
  %115 = load i8*, i8** %4, align 8
  ret i8* %115
}

declare dso_local i64 @wcscmp(i32*, i8*) #1

declare dso_local i32 @wprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
