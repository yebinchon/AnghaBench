; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regdump.c_regdump.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regdump.c_regdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HKCR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HKCU\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HKLM\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"HKU\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HKCC\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"HKRR\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"started with argc = %d, argv[1] = %s (unknown?)\0A\00", align 1
@default_cmd_line1 = common dso_local global i32 0, align 4
@default_cmd_line2 = common dso_local global i32 0, align 4
@default_cmd_line3 = common dso_local global i32 0, align 4
@default_cmd_line4 = common dso_local global i32 0, align 4
@default_cmd_line5 = common dso_local global i32 0, align 4
@default_cmd_line6 = common dso_local global i32 0, align 4
@default_cmd_line7 = common dso_local global i32 0, align 4
@default_cmd_line8 = common dso_local global i32 0, align 4
@default_cmd_line9 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"invalid input.\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regdump(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [500 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %81

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @strstr(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @usage(i8* %18)
  br label %80

20:                                               ; preds = %9
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strstr(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @RegKeyPrint(i8 signext 49)
  br label %79

28:                                               ; preds = %20
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strstr(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @RegKeyPrint(i8 signext 50)
  br label %78

36:                                               ; preds = %28
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strstr(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @RegKeyPrint(i8 signext 51)
  br label %77

44:                                               ; preds = %36
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strstr(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @RegKeyPrint(i8 signext 52)
  br label %76

52:                                               ; preds = %44
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strstr(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @RegKeyPrint(i8 signext 53)
  br label %75

60:                                               ; preds = %52
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strstr(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @RegKeyPrint(i8 signext 54)
  br label %74

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %69, i8* %72)
  br label %74

74:                                               ; preds = %68, %66
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %50
  br label %77

77:                                               ; preds = %76, %42
  br label %78

78:                                               ; preds = %77, %34
  br label %79

79:                                               ; preds = %78, %26
  br label %80

80:                                               ; preds = %79, %15
  store i32 0, i32* %3, align 4
  br label %148

81:                                               ; preds = %2
  %82 = call i32 (...) @show_menu()
  br label %83

83:                                               ; preds = %81, %147
  %84 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %85 = call i32 @GetInput(i8* %84, i32 500)
  %86 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %87 = load i8, i8* %86, align 16
  %88 = call signext i8 @toupper(i8 signext %87)
  %89 = sext i8 %88 to i32
  switch i32 %89, label %136 [
    i32 48, label %90
    i32 49, label %91
    i32 50, label %95
    i32 51, label %99
    i32 52, label %103
    i32 53, label %107
    i32 54, label %111
    i32 55, label %115
    i32 56, label %119
    i32 57, label %123
    i32 65, label %127
    i32 66, label %127
    i32 67, label %127
    i32 68, label %127
    i32 69, label %127
    i32 70, label %127
  ]

90:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %148

91:                                               ; preds = %83
  %92 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %93 = load i32, i32* @default_cmd_line1, align 4
  %94 = call i32 @strcpy(i8* %92, i32 %93)
  br label %137

95:                                               ; preds = %83
  %96 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %97 = load i32, i32* @default_cmd_line2, align 4
  %98 = call i32 @strcpy(i8* %96, i32 %97)
  br label %137

99:                                               ; preds = %83
  %100 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %101 = load i32, i32* @default_cmd_line3, align 4
  %102 = call i32 @strcpy(i8* %100, i32 %101)
  br label %137

103:                                              ; preds = %83
  %104 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %105 = load i32, i32* @default_cmd_line4, align 4
  %106 = call i32 @strcpy(i8* %104, i32 %105)
  br label %137

107:                                              ; preds = %83
  %108 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %109 = load i32, i32* @default_cmd_line5, align 4
  %110 = call i32 @strcpy(i8* %108, i32 %109)
  br label %137

111:                                              ; preds = %83
  %112 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %113 = load i32, i32* @default_cmd_line6, align 4
  %114 = call i32 @strcpy(i8* %112, i32 %113)
  br label %137

115:                                              ; preds = %83
  %116 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %117 = load i32, i32* @default_cmd_line7, align 4
  %118 = call i32 @strcpy(i8* %116, i32 %117)
  br label %137

119:                                              ; preds = %83
  %120 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %121 = load i32, i32* @default_cmd_line8, align 4
  %122 = call i32 @strcpy(i8* %120, i32 %121)
  br label %137

123:                                              ; preds = %83
  %124 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %125 = load i32, i32* @default_cmd_line9, align 4
  %126 = call i32 @strcpy(i8* %124, i32 %125)
  br label %137

127:                                              ; preds = %83, %83, %83, %83, %83, %83
  %128 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %129 = load i8, i8* %128, align 16
  %130 = call signext i8 @toupper(i8 signext %129)
  %131 = sext i8 %130 to i32
  %132 = sub nsw i32 %131, 65
  %133 = add nsw i32 %132, 1
  %134 = trunc i32 %133 to i8
  %135 = call i32 @RegKeyPrint(i8 signext %134)
  br label %147

136:                                              ; preds = %83
  br label %137

137:                                              ; preds = %136, %123, %119, %115, %111, %107, %103, %99, %95, %91
  %138 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0
  %139 = call i32 @ProcessCmdLine(i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %143 = call i32 (...) @show_menu()
  br label %146

144:                                              ; preds = %137
  %145 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %141
  br label %147

147:                                              ; preds = %146, %127
  br label %83

148:                                              ; preds = %90, %80
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @RegKeyPrint(i8 signext) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @show_menu(...) #1

declare dso_local i32 @GetInput(i8*, i32) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @ProcessCmdLine(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
