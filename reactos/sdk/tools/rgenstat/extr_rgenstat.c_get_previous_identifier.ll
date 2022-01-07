; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_get_previous_identifier.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_get_previous_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_buffer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @get_previous_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_previous_identifier(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %10, align 1
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i8*, i8** @file_buffer, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @is_whitespace(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load i8*, i8** @file_buffer, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @is_eol_char(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %22, %14
  %31 = phi i1 [ true, %14 ], [ %29, %22 ]
  br label %32

32:                                               ; preds = %30, %11
  %33 = phi i1 [ false, %11 ], [ %31, %30 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %6, align 4
  br label %11

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %95

40:                                               ; preds = %37
  %41 = load i8*, i8** @file_buffer, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 47
  br i1 %47, label %48, label %95

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %51, label %94

51:                                               ; preds = %48
  %52 = load i8*, i8** @file_buffer, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 42
  br i1 %59, label %60, label %94

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, -1
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %88, %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp ugt i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %63
  %67 = load i8*, i8** @file_buffer, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 42
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load i8*, i8** @file_buffer, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sub i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 47
  br label %83

83:                                               ; preds = %74, %66
  %84 = phi i1 [ false, %66 ], [ %82, %74 ]
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %83, %63
  %87 = phi i1 [ false, %63 ], [ %85, %83 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i32, i32* %6, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %6, align 4
  br label %63

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  %93 = sub i32 %92, 2
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %91, %51, %48
  br label %95

95:                                               ; preds = %94, %40, %37
  br label %96

96:                                               ; preds = %109, %95
  %97 = load i32, i32* %6, align 4
  %98 = icmp ugt i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i8*, i8** @file_buffer, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = call i64 @is_whitespace(i8 signext %104)
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %99, %96
  %108 = phi i1 [ false, %96 ], [ %106, %99 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i32, i32* %6, align 4
  %111 = add i32 %110, -1
  store i32 %111, i32* %6, align 4
  br label %96

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %141, %112
  %115 = load i32, i32* %6, align 4
  %116 = icmp ugt i32 %115, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %114
  %118 = load i8*, i8** @file_buffer, align 8
  %119 = load i32, i32* %6, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = call i64 @is_end_of_name(i8 signext %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %117
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sub i32 %126, %127
  store i32 %128, i32* %7, align 4
  %129 = load i8*, i8** %5, align 8
  %130 = load i8*, i8** @file_buffer, align 8
  %131 = load i32, i32* %6, align 4
  %132 = add i32 %131, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @strncpy(i8* %129, i8* %134, i32 %135)
  %137 = load i8*, i8** %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8 0, i8* %140, align 1
  store i32 1, i32* %3, align 4
  br label %145

141:                                              ; preds = %117
  %142 = load i32, i32* %6, align 4
  %143 = add i32 %142, -1
  store i32 %143, i32* %6, align 4
  br label %114

144:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %125
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i64 @is_whitespace(i8 signext) #1

declare dso_local i64 @is_eol_char(i8 signext) #1

declare dso_local i64 @is_end_of_name(i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
