; ModuleID = '/home/carl/AnghaBench/tig/src/extr_argv.c_format_append_arg.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_argv.c_format_append_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_context = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%(\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.format_context*, i8***, i8*)* @format_append_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_append_arg(%struct.format_context* %0, i8*** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.format_context*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.format_context* %0, %struct.format_context** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.format_context*, %struct.format_context** %5, align 8
  %13 = getelementptr inbounds %struct.format_context, %struct.format_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load %struct.format_context*, %struct.format_context** %5, align 8
  %17 = getelementptr inbounds %struct.format_context, %struct.format_context* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %85, %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %87

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strstr(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 41)
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i8* [ %28, %26 ], [ null, %29 ]
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i8* [ %36, %34 ], [ null, %37 ]
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  br label %52

48:                                               ; preds = %38
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = sext i32 %50 to i64
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi i64 [ %47, %42 ], [ %51, %48 ]
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %93

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.format_context*, %struct.format_context** %5, align 8
  %66 = getelementptr inbounds %struct.format_context, %struct.format_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.format_context*, %struct.format_context** %5, align 8
  %69 = getelementptr inbounds %struct.format_context, %struct.format_context* %68, i32 0, i32 1
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @string_format_from(i32 %67, i64* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %70, i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %93

75:                                               ; preds = %64, %61
  %76 = load i8*, i8** %8, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.format_context*, %struct.format_context** %5, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @format_expand_arg(%struct.format_context* %79, i8* %80, i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %93

85:                                               ; preds = %78, %75
  %86 = load i8*, i8** %10, align 8
  store i8* %86, i8** %7, align 8
  br label %18

87:                                               ; preds = %18
  %88 = load i8***, i8**** %6, align 8
  %89 = load %struct.format_context*, %struct.format_context** %5, align 8
  %90 = getelementptr inbounds %struct.format_context, %struct.format_context* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @argv_append(i8*** %88, i32 %91)
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %87, %84, %74, %60
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @string_format_from(i32, i64*, i8*, i32, i8*) #1

declare dso_local i32 @format_expand_arg(%struct.format_context*, i8*, i8*) #1

declare dso_local i32 @argv_append(i8***, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
