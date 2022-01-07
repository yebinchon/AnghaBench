; ModuleID = '/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_valid_var_name.c'
source_filename = "/home/carl/AnghaBench/yaf/views/extr_yaf_view_simple.c_yaf_view_simple_valid_var_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @yaf_view_simple_valid_var_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yaf_view_simple_valid_var_name(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 95
  br i1 %20, label %21, label %40

21:                                               ; preds = %11
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 65
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 90
  br i1 %26, label %27, label %40

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 97
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 122
  br i1 %32, label %33, label %40

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 127
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 255
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  store i32 0, i32* %3, align 4
  br label %93

40:                                               ; preds = %36, %30, %24, %11
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %92

43:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %88, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 95
  br i1 %61, label %62, label %87

62:                                               ; preds = %48
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 48
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %66, 57
  br i1 %67, label %68, label %87

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 65
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp sgt i32 %72, 90
  br i1 %73, label %74, label %87

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 97
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 122
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 127
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 255
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  store i32 0, i32* %3, align 4
  br label %93

87:                                               ; preds = %83, %77, %71, %65, %48
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %44

91:                                               ; preds = %44
  br label %92

92:                                               ; preds = %91, %40
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %86, %39, %10
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
