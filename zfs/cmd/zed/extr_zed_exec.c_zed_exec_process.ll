; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_exec.c_zed_exec_process.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_exec.c_zed_exec_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zed_exec_process(i32 %0, i8* %1, i8* %2, i8* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [4 x i8*], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %7
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32*, i32** %14, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27, %24, %7
  store i32 -1, i32* %8, align 4
  br label %107

34:                                               ; preds = %30
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 0
  store i8** %35, i8*** %18, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = load i8**, i8*** %18, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %18, align 8
  store i8* %39, i8** %40, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** %11, align 8
  %47 = load i8**, i8*** %18, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %18, align 8
  store i8* %46, i8** %47, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i8*, i8** %17, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8*, i8** %17, align 8
  %54 = load i8**, i8*** %18, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %18, align 8
  store i8* %53, i8** %54, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i8**, i8*** %18, align 8
  store i8* null, i8** %57, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = call i8** @_zed_exec_create_env(i32* %58)
  store i8** %59, i8*** %20, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i8* @zed_strings_first(i32* %60)
  store i8* %61, i8** %19, align 8
  br label %62

62:                                               ; preds = %101, %56
  %63 = load i8*, i8** %19, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %104

65:                                               ; preds = %62
  %66 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 0
  store i8** %66, i8*** %18, align 8
  br label %67

67:                                               ; preds = %97, %65
  %68 = load i8**, i8*** %18, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load i8**, i8*** %18, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strlen(i8* %73)
  store i32 %74, i32* %21, align 4
  %75 = load i8*, i8** %19, align 8
  %76 = load i8**, i8*** %18, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %21, align 4
  %79 = call i64 @strncmp(i8* %75, i8* %77, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %71
  %82 = load i8*, i8** %19, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @isalpha(i8 signext %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = load i8**, i8*** %20, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @_zed_exec_fork_child(i32 %90, i8* %91, i8* %92, i8** %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %81, %71
  br label %97

97:                                               ; preds = %96
  %98 = load i8**, i8*** %18, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %99, i8*** %18, align 8
  br label %67

100:                                              ; preds = %67
  br label %101

101:                                              ; preds = %100
  %102 = load i32*, i32** %13, align 8
  %103 = call i8* @zed_strings_next(i32* %102)
  store i8* %103, i8** %19, align 8
  br label %62

104:                                              ; preds = %62
  %105 = load i8**, i8*** %20, align 8
  %106 = call i32 @free(i8** %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %104, %33
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local i8** @_zed_exec_create_env(i32*) #1

declare dso_local i8* @zed_strings_first(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i32 @_zed_exec_fork_child(i32, i8*, i8*, i8**, i32) #1

declare dso_local i8* @zed_strings_next(i32*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
