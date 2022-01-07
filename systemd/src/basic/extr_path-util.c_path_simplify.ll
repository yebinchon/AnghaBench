; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_path-util.c_path_simplify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_path-util.c_path_simplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @path_simplify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @isempty(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %3, align 8
  br label %101

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @path_is_absolute(i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @IN_SET(i8 signext %32, i32 0, i8 signext 47)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %35, %29, %24, %18
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %81, %38
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %81

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 46
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @IN_SET(i8 signext %64, i32 0, i8 signext 47)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %81

68:                                               ; preds = %61, %56, %53
  store i32 0, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %75

72:                                               ; preds = %68
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %7, align 8
  store i8 47, i8* %73, align 1
  br label %75

75:                                               ; preds = %72, %71
  br label %76

76:                                               ; preds = %75, %50
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  store i8 %78, i8* %79, align 1
  br label %81

81:                                               ; preds = %76, %67, %49
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  br label %40

84:                                               ; preds = %40
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = icmp eq i8* %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %7, align 8
  store i8 47, i8* %92, align 1
  br label %97

94:                                               ; preds = %88
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %7, align 8
  store i8 46, i8* %95, align 1
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %84
  %99 = load i8*, i8** %7, align 8
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %4, align 8
  store i8* %100, i8** %3, align 8
  br label %101

101:                                              ; preds = %98, %16
  %102 = load i8*, i8** %3, align 8
  ret i8* %102
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @path_is_absolute(i8*) #1

declare dso_local i64 @IN_SET(i8 signext, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
