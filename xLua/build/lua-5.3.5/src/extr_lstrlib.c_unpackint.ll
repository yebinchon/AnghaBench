; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lstrlib.c_unpackint.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lstrlib.c_unpackint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZINT = common dso_local global i32 0, align 4
@NB = common dso_local global i32 0, align 4
@MC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%d-byte integer does not fit into Lua Integer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i32, i32, i32)* @unpackint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unpackint(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SZINT, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @SZINT, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %52, %23
  %28 = load i32, i32* %12, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  %31 = load i32, i32* @NB, align 4
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  br label %44

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %41, %42
  br label %44

44:                                               ; preds = %39, %37
  %45 = phi i32 [ %38, %37 ], [ %43, %39 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %34, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %12, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SZINT, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @NB, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sub nsw i32 %65, 1
  %67 = shl i32 1, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %14, align 4
  %70 = xor i32 %68, %69
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %62, %59
  br label %124

74:                                               ; preds = %55
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @SZINT, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %123

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %78
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @MC, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ 0, %85 ], [ %87, %86 ]
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %119, %88
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  br label %106

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %12, align 4
  %105 = sub nsw i32 %103, %104
  br label %106

106:                                              ; preds = %101, %99
  %107 = phi i32 [ %100, %99 ], [ %105, %101 ]
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %96, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @luaL_error(i32* %115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %114, %106
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %91

122:                                              ; preds = %91
  br label %123

123:                                              ; preds = %122, %74
  br label %124

124:                                              ; preds = %123, %73
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  ret i64 %126
}

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
