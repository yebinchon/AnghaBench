; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/common/extr_xgetopt.c_xgetopt.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/common/extr_xgetopt.c_xgetopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SW = common dso_local global i8 0, align 1
@xoptind = common dso_local global i32 0, align 4
@letP = common dso_local global i8* null, align 8
@xoptarg = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@xopterr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"get command line option\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgetopt(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8, i8* @SW, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8 47, i8* @SW, align 1
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @xoptind, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %106

18:                                               ; preds = %14
  %19 = load i8*, i8** @letP, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i8**, i8*** %6, align 8
  %23 = load i32, i32* @xoptind, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** @letP, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** @letP, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** @letP, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @SW, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %21
  br label %107

37:                                               ; preds = %28
  %38 = load i8*, i8** @letP, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @SW, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @xoptind, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @xoptind, align 4
  br label %107

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i8*, i8** @letP, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** @letP, align 8
  %51 = load i8, i8* %49, align 1
  store i8 %51, i8* %8, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 0, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @xoptind, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @xoptind, align 4
  br label %107

57:                                               ; preds = %48
  %58 = load i8, i8* %8, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %8, align 1
  %64 = call i8* @strchr(i8* %62, i8 zeroext %63)
  store i8* %64, i8** %9, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %57
  br label %109

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 58, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %67
  %74 = load i32, i32* @xoptind, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @xoptind, align 4
  %76 = load i8*, i8** @letP, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 0, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @xoptind, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %109

85:                                               ; preds = %80
  %86 = load i8**, i8*** %6, align 8
  %87 = load i32, i32* @xoptind, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @xoptind, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** @letP, align 8
  br label %92

92:                                               ; preds = %85, %73
  %93 = load i8*, i8** @letP, align 8
  store i8* %93, i8** @xoptarg, align 8
  store i8* null, i8** @letP, align 8
  br label %103

94:                                               ; preds = %67
  %95 = load i8*, i8** @letP, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 0, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @xoptind, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @xoptind, align 4
  store i8* null, i8** @letP, align 8
  br label %102

102:                                              ; preds = %99, %94
  store i8* null, i8** @xoptarg, align 8
  br label %103

103:                                              ; preds = %102, %92
  %104 = load i8, i8* %8, align 1
  %105 = zext i8 %104 to i32
  store i32 %105, i32* %4, align 4
  br label %116

106:                                              ; preds = %14
  br label %107

107:                                              ; preds = %106, %54, %44, %36
  store i8* null, i8** @letP, align 8
  store i8* null, i8** @xoptarg, align 8
  %108 = load i32, i32* @EOF, align 4
  store i32 %108, i32* %4, align 4
  br label %116

109:                                              ; preds = %84, %66
  store i8* null, i8** @xoptarg, align 8
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* @errno, align 4
  %111 = load i64, i64* @xopterr, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %109
  store i32 63, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %107, %103
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i8* @strchr(i8*, i8 zeroext) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
