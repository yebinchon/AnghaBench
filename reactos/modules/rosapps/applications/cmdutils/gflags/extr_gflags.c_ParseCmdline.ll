; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_gflags.c_ParseCmdline.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_gflags.c_ParseCmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i32] [i32 78, i32 111, i32 116, i32 32, i32 101, i32 110, i32 111, i32 117, i32 103, i32 104, i32 32, i32 97, i32 114, i32 103, i32 115, i32 33, i32 10, i32 0], align 4
@FALSE = common dso_local global i8* null, align 8
@UNICODE_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@UsePageHeap = common dso_local global i8* null, align 8
@UseImageFile = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i32] [i32 73, i32 110, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 111, i32 112, i32 116, i32 105, i32 111, i32 110, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [49 x i32] [i32 79, i32 110, i32 108, i32 121, i32 32, i32 112, i32 97, i32 103, i32 101, i32 32, i32 104, i32 101, i32 97, i32 112, i32 32, i32 47, i32 32, i32 105, i32 109, i32 97, i32 103, i32 101, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 102, i32 108, i32 97, i32 103, i32 115, i32 32, i32 97, i32 114, i32 101, i32 32, i32 115, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 101, i32 100, i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32**)* @ParseCmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ParseCmdline(i32 %0, i32** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @wprintf(i8* bitcast ([18 x i32]* @.str to i8*))
  %11 = load i8*, i8** @FALSE, align 8
  store i8* %11, i8** %3, align 8
  br label %102

12:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %88, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %91

17:                                               ; preds = %13
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %79

26:                                               ; preds = %17
  %27 = load i32**, i32*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 112
  br i1 %34, label %35, label %52

35:                                               ; preds = %26
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UNICODE_NULL, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load i8*, i8** @TRUE, align 8
  store i8* %46, i8** @UsePageHeap, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %4, align 4
  %50 = load i32**, i32*** %5, align 8
  %51 = call i8* @PageHeap_ParseCmdline(i32 %48, i32 %49, i32** %50)
  store i8* %51, i8** %3, align 8
  br label %102

52:                                               ; preds = %35, %26
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 105
  br i1 %60, label %61, label %78

61:                                               ; preds = %52
  %62 = load i32**, i32*** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @UNICODE_NULL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load i8*, i8** @TRUE, align 8
  store i8* %72, i8** @UseImageFile, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %4, align 4
  %76 = load i32**, i32*** %5, align 8
  %77 = call i8* @ImageFile_ParseCmdline(i32 %74, i32 %75, i32** %76)
  store i8* %77, i8** %3, align 8
  br label %102

78:                                               ; preds = %61, %52
  br label %87

79:                                               ; preds = %17
  %80 = load i32**, i32*** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 (i8*, ...) @wprintf(i8* bitcast ([20 x i32]* @.str.1 to i8*), i32* %84)
  %86 = load i8*, i8** @FALSE, align 8
  store i8* %86, i8** %3, align 8
  br label %102

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %13

91:                                               ; preds = %13
  %92 = load i8*, i8** @UsePageHeap, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load i8*, i8** @UseImageFile, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @wprintf(i8* bitcast ([49 x i32]* @.str.2 to i8*))
  %99 = load i8*, i8** @FALSE, align 8
  store i8* %99, i8** %3, align 8
  br label %102

100:                                              ; preds = %94, %91
  %101 = load i8*, i8** @TRUE, align 8
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %100, %97, %79, %71, %45, %9
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i8* @PageHeap_ParseCmdline(i32, i32, i32**) #1

declare dso_local i8* @ImageFile_ParseCmdline(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
