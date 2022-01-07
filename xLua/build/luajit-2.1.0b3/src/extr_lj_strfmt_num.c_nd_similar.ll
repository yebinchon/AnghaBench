; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strfmt_num.c_nd_similar.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strfmt_num.c_nd_similar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64*, i32, i32)* @nd_similar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_similar(i64* %0, i64 %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [9 x i8], align 1
  %13 = alloca [9 x i8], align 1
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %5
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @LJ_UNLIKELY(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %105

29:                                               ; preds = %17
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load i64*, i64** %9, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 -1
  store i64* %34, i64** %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %35, 1
  %37 = and i64 %36, 63
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = icmp sge i32 %38, 9
  br i1 %39, label %40, label %60

40:                                               ; preds = %29
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @LJ_UNLIKELY(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %105

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 9
  store i32 %54, i32* %11, align 4
  %55 = load i64*, i64** %9, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 -1
  store i64* %56, i64** %9, align 8
  %57 = load i64, i64* %8, align 8
  %58 = sub i64 %57, 1
  %59 = and i64 %58, 63
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %52, %29
  br label %66

61:                                               ; preds = %5
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 9
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %61, %60
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 9
  %69 = zext i1 %68 to i32
  %70 = call i32 @lua_assert(i32 %69)
  %71 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %72 = load i64*, i64** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @lj_strfmt_wuint9(i8* %71, i64 %75)
  %77 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @lj_strfmt_wuint9(i8* %77, i64 %79)
  %81 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 0
  %82 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @memcmp(i8* %81, i8* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %66
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [9 x i8], [9 x i8]* %12, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp slt i32 %91, 53
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp slt i32 %98, 53
  %100 = zext i1 %99 to i32
  %101 = icmp eq i32 %93, %100
  br label %102

102:                                              ; preds = %86, %66
  %103 = phi i1 [ false, %66 ], [ %101, %86 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %102, %51, %28
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lj_strfmt_wuint9(i8*, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
