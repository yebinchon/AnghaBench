; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_autolink.c_sd_autolink__url.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_autolink.c_sd_autolink__url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@SD_AUTOLINK_SHORT_DOMAINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sd_autolink__url(i64* %0, %struct.buf* %1, i8* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store %struct.buf* %1, %struct.buf** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %15, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %31, label %19

19:                                               ; preds = %6
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 47
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 47
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19, %6
  store i64 0, i64* %7, align 8
  br label %131

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %15, align 8
  %40 = sub i64 0, %39
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @isalpha(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %37, %33
  %47 = phi i1 [ false, %33 ], [ %45, %37 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i64, i64* %15, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %15, align 8
  br label %33

51:                                               ; preds = %46
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %15, align 8
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %15, align 8
  %58 = add i64 %56, %57
  %59 = call i32 @sd_autolink_issafe(i8* %55, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  store i64 0, i64* %7, align 8
  br label %131

62:                                               ; preds = %51
  %63 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %63, i64* %14, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %14, align 8
  %69 = sub i64 %67, %68
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @SD_AUTOLINK_SHORT_DOMAINS, align 4
  %72 = and i32 %70, %71
  %73 = call i64 @check_domain(i8* %66, i64 %69, i32 %72)
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  store i64 0, i64* %7, align 8
  br label %131

77:                                               ; preds = %62
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %14, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %14, align 8
  br label %81

81:                                               ; preds = %95, %77
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i8*, i8** %10, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = call i32 @isspace(i8 signext %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %85, %81
  %94 = phi i1 [ false, %81 ], [ %92, %85 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i64, i64* %14, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %14, align 8
  br label %81

98:                                               ; preds = %93
  %99 = load i8*, i8** %10, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i64 @autolink_delim(i8* %99, i64 %100, i64 %101, i64 %102)
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %14, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i64 0, i64* %7, align 8
  br label %131

107:                                              ; preds = %98
  %108 = load i8*, i8** %10, align 8
  %109 = load i64, i64* %14, align 8
  %110 = sub i64 %109, 1
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 46
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i64, i64* %14, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %14, align 8
  br label %118

118:                                              ; preds = %115, %107
  %119 = load %struct.buf*, %struct.buf** %9, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i64, i64* %15, align 8
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = add i64 %124, %125
  %127 = call i32 @bufput(%struct.buf* %119, i8* %123, i64 %126)
  %128 = load i64, i64* %15, align 8
  %129 = load i64*, i64** %8, align 8
  store i64 %128, i64* %129, align 8
  %130 = load i64, i64* %14, align 8
  store i64 %130, i64* %7, align 8
  br label %131

131:                                              ; preds = %118, %106, %76, %61, %31
  %132 = load i64, i64* %7, align 8
  ret i64 %132
}

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @sd_autolink_issafe(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @check_domain(i8*, i64, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i64 @autolink_delim(i8*, i64, i64, i64) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
