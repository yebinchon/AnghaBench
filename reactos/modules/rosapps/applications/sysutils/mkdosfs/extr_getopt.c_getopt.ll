; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/mkdosfs/extr_getopt.c_getopt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/mkdosfs/extr_getopt.c_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@suboptind = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@subopt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@optopt = common dso_local global i32 0, align 4
@opterr = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: illegal option -- %c\0A\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: option requires an argument -- %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getopt(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @suboptind, align 4
  %12 = load i32, i32* @optind, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load i8**, i8*** %6, align 8
  %17 = load i32, i32* @suboptind, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* @subopt, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* @suboptind, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  br label %60

32:                                               ; preds = %15, %3
  %33 = load i8**, i8*** %6, align 8
  %34 = load i32, i32* @optind, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %32
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 45
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %40, %32
  store i32 -1, i32* %4, align 4
  br label %156

51:                                               ; preds = %46
  %52 = load i32, i32* @optind, align 4
  store i32 %52, i32* @suboptind, align 4
  store i64 1, i64* @subopt, align 8
  %53 = load i32, i32* @optind, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @optind, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %156

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i64, i64* @subopt, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* @subopt, align 8
  %63 = trunc i64 %61 to i32
  store i32 %63, i32* %10, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i8* @strchr(i8* %64, i8 signext %69)
  store i8* %70, i8** %9, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %60
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  store i32 %78, i32* @optopt, align 4
  %79 = load i64, i64* @opterr, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8**, i8*** %6, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @optopt, align 4
  %87 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %72
  store i32 63, i32* %4, align 4
  br label %156

89:                                               ; preds = %60
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 58
  br i1 %94, label %95, label %151

95:                                               ; preds = %89
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %95
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %109, i8** @optarg, align 8
  %110 = load i32, i32* @suboptind, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @suboptind, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  store i32 %115, i32* %4, align 4
  br label %156

116:                                              ; preds = %95
  %117 = load i8**, i8*** %6, align 8
  %118 = load i32, i32* @optind, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %144

123:                                              ; preds = %116
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  store i32 %127, i32* @optopt, align 4
  %128 = load i64, i64* @opterr, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i32, i32* @stderr, align 4
  %132 = load i8**, i8*** %6, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* @optopt, align 4
  %136 = call i32 @fprintf(i32 %131, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %123
  %138 = load i8*, i8** %7, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 58
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i32 58, i32* %4, align 4
  br label %156

143:                                              ; preds = %137
  store i32 63, i32* %4, align 4
  br label %156

144:                                              ; preds = %116
  %145 = load i8**, i8*** %6, align 8
  %146 = load i32, i32* @optind, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @optind, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8*, i8** %145, i64 %148
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** @optarg, align 8
  br label %151

151:                                              ; preds = %144, %89
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %151, %143, %142, %104, %88, %58, %50
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
