; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_signal-util.c_signal_from_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_signal-util.c_signal_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"SIG\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@SIGRTMIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIGRTMAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @signal_from_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @safe_atoi(i8* %7, i32* %5)
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @SIGNAL_VALID(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %122

16:                                               ; preds = %10
  %17 = load i32, i32* @ERANGE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %122

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @startswith(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @__signal_from_string(i8* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %122

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = call i8* @startswith(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %76

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @SIGRTMIN, align 4
  store i32 %44, i32* %2, align 4
  br label %122

45:                                               ; preds = %38
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 43
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %122

53:                                               ; preds = %45
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @safe_atoi(i8* %54, i32* %5)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %122

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @SIGRTMAX, align 4
  %66 = load i32, i32* @SIGRTMIN, align 4
  %67 = sub nsw i32 %65, %66
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63, %60
  %70 = load i32, i32* @ERANGE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %122

72:                                               ; preds = %63
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SIGRTMIN, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %2, align 4
  br label %122

76:                                               ; preds = %33
  %77 = load i8*, i8** %3, align 8
  %78 = call i8* @startswith(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %78, i8** %4, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %119

81:                                               ; preds = %76
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @SIGRTMAX, align 4
  store i32 %87, i32* %2, align 4
  br label %122

88:                                               ; preds = %81
  %89 = load i8*, i8** %4, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 45
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %122

96:                                               ; preds = %88
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @safe_atoi(i8* %97, i32* %5)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %122

103:                                              ; preds = %96
  %104 = load i32, i32* %5, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @SIGRTMIN, align 4
  %109 = load i32, i32* @SIGRTMAX, align 4
  %110 = sub nsw i32 %108, %109
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106, %103
  %113 = load i32, i32* @ERANGE, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %122

115:                                              ; preds = %106
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @SIGRTMAX, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %2, align 4
  br label %122

119:                                              ; preds = %76
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %119, %115, %112, %101, %93, %86, %72, %69, %58, %50, %43, %31, %16, %14
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @safe_atoi(i8*, i32*) #1

declare dso_local i64 @SIGNAL_VALID(i32) #1

declare dso_local i8* @startswith(i8*, i8*) #1

declare dso_local i32 @__signal_from_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
