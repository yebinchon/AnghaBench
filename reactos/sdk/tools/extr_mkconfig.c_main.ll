; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/extr_mkconfig.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/extr_mkconfig.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Not enough arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Out of memory 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"/* Automatically generated, \00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Edit the Makefile to change configuration */\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"#ifndef __INCLUDE_CONFIG_H\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"#define __INCLUDE_CONFIG_H\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"REGTESTS\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"#ifndef %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"#define %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"#endif /* %s */\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"#ifndef __ASM__\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"extern void PrepareTests();\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"#define PREPARE_TESTS PrepareTests();\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"#endif /* __ASM__ */\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"#define PREPARE_TESTS\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"#define CONFIG \22%s\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"#endif /* __INCLUDE_CONFIG_H */\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [512 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %157

16:                                               ; preds = %2
  %17 = call i8* @malloc(i32 262144)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %157

23:                                               ; preds = %16
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8* %44, i8** %9, align 8
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %46 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %47

47:                                               ; preds = %107, %23
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %110

51:                                               ; preds = %47
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  br label %91

60:                                               ; preds = %51
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %61, i64 %69
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %71, i64 %79
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %87)
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %81, i64 %89
  store i8* %90, i8** %9, align 8
  br label %91

91:                                               ; preds = %60, %59
  %92 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %93 = load i8**, i8*** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcat(i8* %92, i8* %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %4, align 4
  %101 = sub nsw i32 %100, 1
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %105 = call i32 @strcat(i8* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %91
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %47

110:                                              ; preds = %47
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8* %118, i8** %9, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 (i8*, i8*, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  store i8* %123, i8** %9, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 (i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8* %128, i8** %9, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 (i8*, i8*, ...) @sprintf(i8* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8* %133, i8** %9, align 8
  br label %140

134:                                              ; preds = %110
  %135 = load i8*, i8** %9, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = call i32 (i8*, i8*, ...) @sprintf(i8* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  store i8* %139, i8** %9, align 8
  br label %140

140:                                              ; preds = %134, %113
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %144 = call i32 (i8*, i8*, ...) @sprintf(i8* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %143)
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %141, i64 %145
  store i8* %146, i8** %9, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = call i32 (i8*, i8*, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  store i8* %151, i8** %9, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i8**, i8*** %5, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @write_if_change(i8* %152, i8* %155)
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %140, %20, %13
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @write_if_change(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
