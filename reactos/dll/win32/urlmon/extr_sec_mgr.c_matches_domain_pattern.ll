; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_matches_domain_pattern.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_matches_domain_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"(%d) Checking if %s matches %s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Found a match: matched=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"No match found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i8**)* @matches_domain_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @matches_domain_pattern(i8* %0, i8* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlenW(i8* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlenW(i8* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @debugstr_w(i8* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @debugstr_w(i8* %21)
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %20, i32 %22)
  %24 = load i8**, i8*** %8, align 8
  store i8* null, i8** %24, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %131

28:                                               ; preds = %4
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 42
  br i1 %33, label %34, label %84

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %84

40:                                               ; preds = %34
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add nsw i64 %42, 1
  %44 = icmp sge i64 %41, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub nsw i64 %47, %48
  %50 = add nsw i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i32 @strcmpiW(i8* %51, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %83, label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %58, 1
  %60 = icmp sgt i64 %57, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub nsw i64 %63, %64
  %66 = sub nsw i64 %65, 2
  %67 = call i8* @memrchrW(i8* %62, i8 signext 46, i64 %66)
  store i8* %67, i8** %12, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i64, i64* @TRUE, align 8
  store i64 %73, i64* %9, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8**, i8*** %8, align 8
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %69
  br label %82

78:                                               ; preds = %61, %56
  %79 = load i64, i64* @TRUE, align 8
  store i64 %79, i64* %9, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i8**, i8*** %8, align 8
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %77
  br label %83

83:                                               ; preds = %82, %45, %40
  br label %130

84:                                               ; preds = %34, %28
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %84
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %87
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %10, align 8
  %95 = sub nsw i64 %93, %94
  %96 = sub nsw i64 %95, 1
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 46
  br i1 %100, label %101, label %118

101:                                              ; preds = %91
  %102 = load i8*, i8** %6, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = sub nsw i64 %103, %104
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @strcmpiW(i8* %106, i8* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %101
  %111 = load i64, i64* @TRUE, align 8
  store i64 %111, i64* %9, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %10, align 8
  %115 = sub nsw i64 %113, %114
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i8**, i8*** %8, align 8
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %110, %101, %91
  br label %129

119:                                              ; preds = %87, %84
  %120 = load i8*, i8** %6, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @strcmpiW(i8* %120, i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = load i64, i64* @TRUE, align 8
  store i64 %125, i64* %9, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i8**, i8*** %8, align 8
  store i8* %126, i8** %127, align 8
  br label %128

128:                                              ; preds = %124, %119
  br label %129

129:                                              ; preds = %128, %118
  br label %130

130:                                              ; preds = %129, %83
  br label %131

131:                                              ; preds = %130, %4
  %132 = load i64, i64* %9, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i8**, i8*** %8, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @debugstr_w(i8* %136)
  %138 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %141

139:                                              ; preds = %131
  %140 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %134
  %142 = load i64, i64* %9, align 8
  ret i64 %142
}

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @strcmpiW(i8*, i8*) #1

declare dso_local i8* @memrchrW(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
