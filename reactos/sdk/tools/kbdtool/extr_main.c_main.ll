; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/kbdtool/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/kbdtool/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UnicodeFile = common dso_local global i32 0, align 4
@Verbose = common dso_local global i32 0, align 4
@NoLogo = common dso_local global i32 0, align 4
@FallbackDriver = common dso_local global i32 0, align 4
@SanityCheck = common dso_local global i32 0, align 4
@BuildType = common dso_local global i32 0, align 4
@SourceOnly = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"\0AKbdTool v%d.%02d - convert keyboard text file to C file or a keyboard layout DLL\0A\0A\00", align 1
@gVersion = common dso_local global i32 0, align 4
@gSubVersion = common dso_local global i32 0, align 4
@gpszFileName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@gfpInput = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to open '%s' for read.\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"source files\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"i386/x86\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ia64\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"amd64/x64\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"wow64\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"unknown purpose\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Compiling layout information from '%s' for %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"All tasks completed successfully.\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"\0A     %13d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca [16 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast [16 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %83, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %86

17:                                               ; preds = %13
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 47
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 45
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %86

38:                                               ; preds = %27, %17
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %38
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %48
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %9, align 1
  br label %66

65:                                               ; preds = %48, %38
  store i8 0, i8* %9, align 1
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i8, i8* %9, align 1
  %68 = sext i8 %67 to i32
  switch i32 %68, label %80 [
    i32 65, label %69
    i32 97, label %69
    i32 85, label %70
    i32 117, label %70
    i32 86, label %71
    i32 118, label %71
    i32 78, label %72
    i32 110, label %72
    i32 75, label %73
    i32 107, label %73
    i32 87, label %74
    i32 119, label %74
    i32 73, label %75
    i32 105, label %75
    i32 88, label %76
    i32 120, label %76
    i32 77, label %77
    i32 109, label %77
    i32 79, label %78
    i32 111, label %78
    i32 83, label %79
    i32 115, label %79
  ]

69:                                               ; preds = %66, %66
  store i32 0, i32* @UnicodeFile, align 4
  br label %82

70:                                               ; preds = %66, %66
  store i32 1, i32* @UnicodeFile, align 4
  br label %82

71:                                               ; preds = %66, %66
  store i32 1, i32* @Verbose, align 4
  br label %82

72:                                               ; preds = %66, %66
  store i32 1, i32* @NoLogo, align 4
  br label %82

73:                                               ; preds = %66, %66
  store i32 1, i32* @FallbackDriver, align 4
  br label %82

74:                                               ; preds = %66, %66
  store i32 1, i32* @SanityCheck, align 4
  br label %82

75:                                               ; preds = %66, %66
  store i32 1, i32* @BuildType, align 4
  br label %82

76:                                               ; preds = %66, %66
  store i32 0, i32* @BuildType, align 4
  br label %82

77:                                               ; preds = %66, %66
  store i32 2, i32* @BuildType, align 4
  br label %82

78:                                               ; preds = %66, %66
  store i32 3, i32* @BuildType, align 4
  br label %82

79:                                               ; preds = %66, %66
  store i32 1, i32* @SourceOnly, align 4
  br label %82

80:                                               ; preds = %66
  %81 = call i32 (...) @PrintUsage()
  br label %82

82:                                               ; preds = %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %13

86:                                               ; preds = %37, %13
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 (...) @PrintUsage()
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32, i32* @NoLogo, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @gVersion, align 4
  %97 = load i32, i32* @gSubVersion, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** @gpszFileName, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %105 = load i32, i32* @UnicodeFile, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %108

108:                                              ; preds = %107, %99
  %109 = load i8*, i8** @gpszFileName, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @fopen(i8* %109, i8* %110)
  store i32 %111, i32* @gfpInput, align 4
  %112 = load i32, i32* @gfpInput, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = load i8*, i8** @gpszFileName, align 8
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  %117 = call i32 @exit(i32 1) #4
  unreachable

118:                                              ; preds = %108
  %119 = load i32, i32* @NoLogo, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %149, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @SourceOnly, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %126 = call i32 @strcpy(i8* %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %145

127:                                              ; preds = %121
  %128 = load i32, i32* @BuildType, align 4
  switch i32 %128, label %141 [
    i32 0, label %129
    i32 1, label %132
    i32 2, label %135
    i32 3, label %138
  ]

129:                                              ; preds = %127
  %130 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %131 = call i32 @strcpy(i8* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %144

132:                                              ; preds = %127
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %134 = call i32 @strcpy(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %144

135:                                              ; preds = %127
  %136 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %137 = call i32 @strcpy(i8* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %144

138:                                              ; preds = %127
  %139 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %140 = call i32 @strcpy(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %144

141:                                              ; preds = %127
  %142 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %143 = call i32 @strcpy(i8* %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %138, %135, %132, %129
  br label %145

145:                                              ; preds = %144, %124
  %146 = load i8*, i8** @gpszFileName, align 8
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i8* %146, i8* %147)
  br label %149

149:                                              ; preds = %145, %118
  %150 = call i32 (...) @DoParsing()
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* @SourceOnly, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* @FallbackDriver, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %156, %153, %149
  %158 = load i32, i32* %8, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* @NoLogo, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %160
  br label %169

166:                                              ; preds = %157
  %167 = load i32, i32* %8, align 4
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %166, %165
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PrintUsage(...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fopen(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @DoParsing(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
