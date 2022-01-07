; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_InheritURational.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_InheritURational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @var_InheritURational(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i8* @var_InheritString(i32* %15, i8* %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %91

21:                                               ; preds = %4
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @strtoul(i8* %22, i8** %11, i32 10)
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %63 [
    i32 0, label %27
    i32 58, label %28
    i32 47, label %28
    i32 46, label %38
  ]

27:                                               ; preds = %21
  store i32 1, i32* %13, align 4
  br label %64

28:                                               ; preds = %21, %21
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 @strtoul(i8* %30, i8** %11, i32 10)
  store i32 %31, i32* %13, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %91

37:                                               ; preds = %28
  br label %64

38:                                               ; preds = %21
  store i32 1, i32* %13, align 4
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %14, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load i8, i8* %14, align 1
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %47, 48
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %14, align 1
  %50 = load i8, i8* %14, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sge i32 %51, 10
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %91

54:                                               ; preds = %45
  %55 = load i32, i32* %12, align 4
  %56 = mul i32 %55, 10
  %57 = load i8, i8* %14, align 1
  %58 = zext i8 %57 to i32
  %59 = add i32 %56, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = mul i32 %60, 10
  store i32 %61, i32* %13, align 4
  br label %39

62:                                               ; preds = %39
  br label %64

63:                                               ; preds = %21
  br label %91

64:                                               ; preds = %62, %37, %27
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32*, i32** %7, align 8
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %89

76:                                               ; preds = %64
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  store i32 1, i32* %80, align 4
  %81 = load i32*, i32** %8, align 8
  store i32 0, i32* %81, align 4
  br label %88

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @vlc_ureduce(i32* %83, i32* %84, i32 %85, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %82, %79
  br label %89

89:                                               ; preds = %88, %69
  %90 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %90, i32* %5, align 4
  br label %97

91:                                               ; preds = %63, %53, %36, %20
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i32*, i32** %7, align 8
  store i32 0, i32* %94, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 0, i32* %95, align 4
  %96 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %91, %89
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_ureduce(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
