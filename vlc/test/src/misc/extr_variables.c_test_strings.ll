; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_strings.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_COUNT = common dso_local global i32 0, align 4
@psz_var_name = common dso_local global i8** null, align 8
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bla\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_strings(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @VAR_COUNT, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32*, i32** %2, align 8
  %15 = load i8**, i8*** @psz_var_name, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @VLC_VAR_STRING, align 4
  %21 = call i32 @var_Create(i32* %14, i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %9

25:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VAR_COUNT, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = load i8**, i8*** @psz_var_name, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** @psz_var_name, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @var_SetString(i32* %31, i8* %36, i8* %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %26

46:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %76, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @VAR_COUNT, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load i32*, i32** %2, align 8
  %53 = load i8**, i8*** @psz_var_name, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @var_GetString(i32* %52, i8* %57)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load i8**, i8*** @psz_var_name, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcmp(i8* %63, i8* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @free(i8* %74)
  br label %76

76:                                               ; preds = %51
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %47

79:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %92, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @VAR_COUNT, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32*, i32** %2, align 8
  %86 = load i8**, i8*** @psz_var_name, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @var_Destroy(i32* %85, i8* %90)
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %7, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %80

95:                                               ; preds = %80
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @VLC_VAR_STRING, align 4
  %98 = call i32 @var_Create(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %2, align 8
  %100 = call i8* @var_GetNonEmptyString(i32* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %101 = icmp eq i8* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @var_SetString(i32* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32*, i32** %2, align 8
  %107 = call i8* @var_GetNonEmptyString(i32* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %108 = icmp eq i8* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @var_SetString(i32* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32*, i32** %2, align 8
  %114 = call i8* @var_GetNonEmptyString(i32* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %114, i8** %8, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = icmp ne i8* %115, null
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i32*, i32** %2, align 8
  %128 = call i32 @var_Destroy(i32* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

declare dso_local i8* @var_GetString(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @var_Destroy(i32*, i8*) #1

declare dso_local i8* @var_GetNonEmptyString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
