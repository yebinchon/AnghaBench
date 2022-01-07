; ModuleID = '/home/carl/AnghaBench/tig/src/extr_argv.c_concat_argv.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_argv.c_concat_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" \09\22\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i64, i8*, i32)* @concat_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_argv(i8** %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %110, %5
  %19 = load i8**, i8*** %7, align 8
  %20 = load i64, i64* %13, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %113

24:                                               ; preds = %18
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i8*, i8** %10, align 8
  br label %30

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %29 ]
  store i8* %31, i8** %14, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %15, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %101

38:                                               ; preds = %30
  %39 = load i8*, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = call i64 @strcspn(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %101

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 (i8*, i64, i64*, i8*, ...) @string_nformat(i8* %47, i64 %48, i64* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %114

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %93, %53
  %55 = load i8*, i8** %15, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = load i8*, i8** %15, align 8
  %60 = call i64 @strcspn(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 34
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %70, i8** %17, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i8*, i8** %15, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = call i32 (i8*, i64, i64*, i8*, ...) @string_nformat(i8* %71, i64 %72, i64* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %73, i8* %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %114

79:                                               ; preds = %58
  %80 = load i8*, i8** %15, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %94

87:                                               ; preds = %79
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i8*, i8** %15, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %15, align 8
  br label %93

93:                                               ; preds = %87
  br label %54

94:                                               ; preds = %86, %54
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 (i8*, i64, i64*, i8*, ...) @string_nformat(i8* %95, i64 %96, i64* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 0, i32* %6, align 4
  br label %114

100:                                              ; preds = %94
  br label %110

101:                                              ; preds = %38, %30
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = call i32 (i8*, i64, i64*, i8*, ...) @string_nformat(i8* %102, i64 %103, i64* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %104, i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %114

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %100
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %13, align 8
  br label %18

113:                                              ; preds = %18
  store i32 1, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %108, %99, %78, %52
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @string_nformat(i8*, i64, i64*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
