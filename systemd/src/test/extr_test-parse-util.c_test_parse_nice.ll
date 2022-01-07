; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_nice.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_nice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"+0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"+1\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"+2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"-20\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"19\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"+19\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"-50\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"+50\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"-21\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"+20\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parse_nice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parse_nice() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @parse_nice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = icmp sge i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 0
  br label %7

7:                                                ; preds = %4, %0
  %8 = phi i1 [ false, %0 ], [ %6, %4 ]
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert_se(i32 %9)
  %11 = call i32 @parse_nice(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i1 [ false, %7 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = call i32 @parse_nice(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %1, align 4
  %24 = icmp eq i32 %23, -1
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = call i32 @parse_nice(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %1)
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %1, align 4
  %33 = icmp eq i32 %32, -2
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i1 [ false, %25 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = call i32 @parse_nice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %1)
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %1, align 4
  %42 = icmp eq i32 %41, 1
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i1 [ false, %34 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = call i32 @parse_nice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %1)
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %1, align 4
  %51 = icmp eq i32 %50, 2
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi i1 [ false, %43 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert_se(i32 %54)
  %56 = call i32 @parse_nice(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %1)
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %1, align 4
  %60 = icmp eq i32 %59, 1
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi i1 [ false, %52 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert_se(i32 %63)
  %65 = call i32 @parse_nice(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %1)
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %1, align 4
  %69 = icmp eq i32 %68, 2
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i1 [ false, %61 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert_se(i32 %72)
  %74 = call i32 @parse_nice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %1)
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %1, align 4
  %78 = icmp eq i32 %77, -20
  br label %79

79:                                               ; preds = %76, %70
  %80 = phi i1 [ false, %70 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert_se(i32 %81)
  %83 = call i32 @parse_nice(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %1)
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %1, align 4
  %87 = icmp eq i32 %86, 19
  br label %88

88:                                               ; preds = %85, %79
  %89 = phi i1 [ false, %79 ], [ %87, %85 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert_se(i32 %90)
  %92 = call i32 @parse_nice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* %1)
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %1, align 4
  %96 = icmp eq i32 %95, 19
  br label %97

97:                                               ; preds = %94, %88
  %98 = phi i1 [ false, %88 ], [ %96, %94 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert_se(i32 %99)
  %101 = call i32 @parse_nice(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32* %1)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert_se(i32 %105)
  %107 = call i32 @parse_nice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32* %1)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert_se(i32 %111)
  %113 = call i32 @parse_nice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32* %1)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert_se(i32 %117)
  %119 = call i32 @parse_nice(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32* %1)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert_se(i32 %123)
  %125 = call i32 @parse_nice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32* %1)
  %126 = load i32, i32* @ERANGE, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert_se(i32 %129)
  %131 = call i32 @parse_nice(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32* %1)
  %132 = load i32, i32* @ERANGE, align 4
  %133 = sub nsw i32 0, %132
  %134 = icmp eq i32 %131, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert_se(i32 %135)
  %137 = call i32 @parse_nice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32* %1)
  %138 = load i32, i32* @ERANGE, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp eq i32 %137, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert_se(i32 %141)
  %143 = call i32 @parse_nice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32* %1)
  %144 = load i32, i32* @ERANGE, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp eq i32 %143, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert_se(i32 %147)
  %149 = call i32 @parse_nice(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32* %1)
  %150 = load i32, i32* @ERANGE, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp eq i32 %149, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert_se(i32 %153)
  %155 = call i32 @parse_nice(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32* %1)
  %156 = load i32, i32* @ERANGE, align 4
  %157 = sub nsw i32 0, %156
  %158 = icmp eq i32 %155, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert_se(i32 %159)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @parse_nice(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
