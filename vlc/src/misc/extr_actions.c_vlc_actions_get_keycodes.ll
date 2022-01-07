; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_actions.c_vlc_actions_get_keycodes.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_actions.c_vlc_actions_get_keycodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%skey-%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"global-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vlc_actions_get_keycodes(i32* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 12, %20
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  %31 = load i32**, i32*** %9, align 8
  store i32* null, i32** %31, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @var_InheritString(i32* %32, i8* %24)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %97

37:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  %38 = load i8*, i8** %12, align 8
  store i8* %38, i8** %15, align 8
  br label %39

39:                                               ; preds = %52, %37
  %40 = load i8*, i8** %15, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i8*, i8** %15, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %14, align 8
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %15, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %15, align 8
  br label %39

55:                                               ; preds = %39
  %56 = load i64, i64* %14, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i32* @vlc_alloc(i64 %58, i32 4)
  %60 = load i32**, i32*** %9, align 8
  store i32* %59, i32** %60, align 8
  %61 = load i32**, i32*** %9, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @free(i8* %69)
  store i64 0, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %97

71:                                               ; preds = %55
  store i64 0, i64* %16, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i8* @strtok_r(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %17)
  store i8* %73, i8** %18, align 8
  br label %74

74:                                               ; preds = %84, %71
  %75 = load i8*, i8** %18, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i8*, i8** %18, align 8
  %79 = call i32 @vlc_str2keycode(i8* %78)
  %80 = load i32**, i32*** %9, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %16, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %77
  %85 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %17)
  store i8* %85, i8** %18, align 8
  %86 = load i64, i64* %16, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %16, align 8
  br label %74

88:                                               ; preds = %74
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %14, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i64, i64* %14, align 8
  store i64 %96, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %97

97:                                               ; preds = %88, %68, %36
  %98 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i32* @vlc_alloc(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @vlc_str2keycode(i8*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
