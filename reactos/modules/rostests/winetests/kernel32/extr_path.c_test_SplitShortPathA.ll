; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_SplitShortPathA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_SplitShortPathA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Illegal file found in 8.3 path '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"GetShortPathNAmeA did not return an 8.3 path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*)* @test_SplitShortPathA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SplitShortPathA(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @lstrlenA(i8* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %70, %4
  %24 = load i32, i32* %14, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %73

32:                                               ; preds = %30
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @TRUE, align 8
  store i64 %45, i64* %10, align 8
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %69

49:                                               ; preds = %32
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 92
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %10, align 8
  br label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %64, %62
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %48
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %14, align 4
  br label %23

73:                                               ; preds = %30
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = call i32 @lstrcpyA(i8* %84, i8* %89)
  br label %94

91:                                               ; preds = %73
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @lstrcpyA(i8* %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %83
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @lstrcpynA(i8* %99, i8* %104, i32 %107)
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  %113 = call i32 @lstrcpynA(i8* %109, i8* %110, i32 %112)
  br label %122

114:                                              ; preds = %94
  %115 = load i8*, i8** %7, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  %119 = call i32 @lstrcpynA(i8* %115, i8* %116, i32 %118)
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @lstrcpyA(i8* %120, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %114, %98
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @lstrlenA(i8* %123)
  %125 = icmp sle i32 %124, 8
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @lstrlenA(i8* %127)
  %129 = icmp sle i32 %128, 3
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i1 [ false, %122 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @lstrcpyA(i8*, i8*) #1

declare dso_local i32 @lstrcpynA(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
