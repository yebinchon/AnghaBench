; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_environ.c_test__environ.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_environ.c_test__environ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_environ = common dso_local global i8*** null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Expected the pointer to _environ to be non-NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Expected _environ to be initialized on startup\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"_environ pointers are not valid\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Expected _environ pointers to be identical\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"__p__environ() is not available\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"_get_environ() is not available\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Expected initial environment block pointer to be non-NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Initial environment block pointer is not valid\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Expected environment block pointer element to be non-NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"Expected _environ and environment block pointer strings (%s vs. %s) to match\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"Expected environment block pointer element to be NULL, got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__environ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__environ() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store i8** null, i8*** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8***, i8**** @p_environ, align 8
  %8 = icmp ne i8*** %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %11 = load i8***, i8**** @p_environ, align 8
  %12 = icmp ne i8*** %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load i8***, i8**** @p_environ, align 8
  %15 = load i8**, i8*** %14, align 8
  %16 = icmp ne i8** %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %13, %0
  %20 = load i8***, i8**** @p_environ, align 8
  %21 = icmp ne i8*** %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i8***, i8**** @p_environ, align 8
  %24 = load i8**, i8*** %23, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %19
  %27 = call i32 @skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %124

28:                                               ; preds = %22
  br i1 true, label %29, label %37

29:                                               ; preds = %28
  %30 = call i8*** (...) @p__p__environ()
  %31 = load i8**, i8*** %30, align 8
  %32 = load i8***, i8**** @p_environ, align 8
  %33 = load i8**, i8*** %32, align 8
  %34 = icmp eq i8** %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %39

37:                                               ; preds = %28
  %38 = call i32 @skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %29
  br i1 true, label %40, label %48

40:                                               ; preds = %39
  %41 = call i32 @p_get_environ(i8*** %6)
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8***, i8**** @p_environ, align 8
  %44 = load i8**, i8*** %43, align 8
  %45 = icmp eq i8** %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %50

48:                                               ; preds = %39
  %49 = call i32 @win_skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  %51 = call i32 @__getmainargs(i32* %1, i8*** %2, i8*** %3, i32 0, i32* %5)
  %52 = load i8**, i8*** %3, align 8
  %53 = icmp ne i8** %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %56 = load i8**, i8*** %3, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = call i32 @skip(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %124

60:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %121, %60
  %62 = load i8***, i8**** @p_environ, align 8
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %105

69:                                               ; preds = %61
  %70 = load i8**, i8*** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %78 = load i8***, i8**** @p_environ, align 8
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcmp(i8* %83, i8* %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load i8***, i8**** @p_environ, align 8
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i8**, i8*** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.9, i64 0, i64 0), i8* %98, i8* %103)
  br label %120

105:                                              ; preds = %61
  %106 = load i8**, i8*** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load i8**, i8*** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i8* %118)
  br label %124

120:                                              ; preds = %69
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %61

124:                                              ; preds = %26, %58, %105
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i8*** @p__p__environ(...) #1

declare dso_local i32 @p_get_environ(i8***) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @__getmainargs(i32*, i8***, i8***, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
