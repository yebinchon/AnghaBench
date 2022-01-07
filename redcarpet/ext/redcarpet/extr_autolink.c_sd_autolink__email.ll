; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_autolink.c_sd_autolink__email.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_autolink.c_sd_autolink__email.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c".+-_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sd_autolink__email(i64* %0, %struct.buf* %1, i8* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store i64* %0, i64** %8, align 8
  store %struct.buf* %1, %struct.buf** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %15, align 8
  br label %20

20:                                               ; preds = %41, %6
  %21 = load i64, i64* %15, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %15, align 8
  %27 = sub i64 0, %26
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %18, align 1
  %31 = load i8, i8* %18, align 1
  %32 = call i64 @isalnum(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %41

35:                                               ; preds = %24
  %36 = load i8, i8* %18, align 1
  %37 = call i32* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %41

40:                                               ; preds = %35
  br label %44

41:                                               ; preds = %39, %34
  %42 = load i64, i64* %15, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %15, align 8
  br label %20

44:                                               ; preds = %40, %20
  %45 = load i64, i64* %15, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i64 0, i64* %7, align 8
  br label %128

48:                                               ; preds = %44
  store i64 0, i64* %14, align 8
  br label %49

49:                                               ; preds = %93, %48
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %96

53:                                               ; preds = %49
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* %19, align 1
  %58 = load i8, i8* %19, align 1
  %59 = call i64 @isalnum(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %93

62:                                               ; preds = %53
  %63 = load i8, i8* %19, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %92

69:                                               ; preds = %62
  %70 = load i8, i8* %19, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 46
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %12, align 8
  %76 = sub i64 %75, 1
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %91

81:                                               ; preds = %73, %69
  %82 = load i8, i8* %19, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 45
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i8, i8* %19, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 95
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %96

90:                                               ; preds = %85, %81
  br label %91

91:                                               ; preds = %90, %78
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i64, i64* %14, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %14, align 8
  br label %49

96:                                               ; preds = %89, %49
  %97 = load i64, i64* %14, align 8
  %98 = icmp ult i64 %97, 2
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %17, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %99, %96
  store i64 0, i64* %7, align 8
  br label %128

106:                                              ; preds = %102
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i64 @autolink_delim(i8* %107, i64 %108, i64 %109, i64 %110)
  store i64 %111, i64* %14, align 8
  %112 = load i64, i64* %14, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i64 0, i64* %7, align 8
  br label %128

115:                                              ; preds = %106
  %116 = load %struct.buf*, %struct.buf** %9, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i64, i64* %15, align 8
  %119 = sub i64 0, %118
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %15, align 8
  %123 = add i64 %121, %122
  %124 = call i32 @bufput(%struct.buf* %116, i8* %120, i64 %123)
  %125 = load i64, i64* %15, align 8
  %126 = load i64*, i64** %8, align 8
  store i64 %125, i64* %126, align 8
  %127 = load i64, i64* %14, align 8
  store i64 %127, i64* %7, align 8
  br label %128

128:                                              ; preds = %115, %114, %105, %47
  %129 = load i64, i64* %7, align 8
  ret i64 %129
}

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @autolink_delim(i8*, i64, i64, i64) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
