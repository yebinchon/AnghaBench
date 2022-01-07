; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_is_basic_auth_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_is_basic_auth_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_basic_auth_value.szBasic = internal constant [5 x i8] c"Basic", align 1
@is_basic_auth_value.szRealm = internal constant [5 x i8] c"realm", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**)* @is_basic_auth_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_basic_auth_value(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @ARRAYSIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @is_basic_auth_value.szBasic, i64 0, i64 0))
  %12 = call i32 @strncmpiW(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @is_basic_auth_value.szBasic, i64 0, i64 0), i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @ARRAYSIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @is_basic_auth_value.szBasic, i64 0, i64 0))
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @ARRAYSIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @is_basic_auth_value.szBasic, i64 0, i64 0))
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %21, %14
  %29 = phi i1 [ true, %14 ], [ %27, %21 ]
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i1 [ false, %2 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %106

35:                                               ; preds = %30
  %36 = load i32**, i32*** %5, align 8
  %37 = icmp ne i32** %36, null
  br i1 %37, label %38, label %106

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @ARRAYSIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @is_basic_auth_value.szBasic, i64 0, i64 0))
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %8, align 8
  %44 = load i32**, i32*** %5, align 8
  store i32* null, i32** %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i8* @strchrW(i8* %45, i8 signext 61)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %3, align 4
  br label %108

51:                                               ; preds = %38
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %58, %51
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  br label %53

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @ARRAYSIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @is_basic_auth_value.szRealm, i64 0, i64 0))
  %64 = call i32 @strncmpiW(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @is_basic_auth_value.szRealm, i64 0, i64 0), i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %105, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @ARRAYSIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @is_basic_auth_value.szRealm, i64 0, i64 0))
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @ARRAYSIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @is_basic_auth_value.szRealm, i64 0, i64 0))
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 61
  br i1 %79, label %80, label %105

80:                                               ; preds = %73, %66
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %88, %80
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %7, align 8
  br label %83

91:                                               ; preds = %83
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %108

98:                                               ; preds = %91
  %99 = load i8*, i8** %7, align 8
  %100 = call i32* @heap_strdupW(i8* %99)
  %101 = load i32**, i32*** %5, align 8
  store i32* %100, i32** %101, align 8
  %102 = load i32**, i32*** %5, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @strip_spaces(i32* %103)
  br label %105

105:                                              ; preds = %98, %73, %61
  br label %106

106:                                              ; preds = %105, %35, %30
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %96, %49
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @strncmpiW(i8*, i8*, i64) #1

declare dso_local i64 @ARRAYSIZE(i8*) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32* @heap_strdupW(i8*) #1

declare dso_local i32 @strip_spaces(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
