; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_main.c_xgetopt.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_main.c_xgetopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xgetopt.scan = internal global i8* null, align 8
@xoptarg = common dso_local global i8* null, align 8
@xoptind = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: unknown option -%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: option requires argument -%c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @xgetopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgetopt(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** @xoptarg, align 8
  %10 = load i8*, i8** @xgetopt.scan, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i8*, i8** @xgetopt.scan, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @xoptind, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @xoptind, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @xoptind, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @xoptind, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = load i8**, i8*** %6, align 8
  %29 = load i32, i32* @xoptind, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 45
  br i1 %36, label %47, label %37

37:                                               ; preds = %27
  %38 = load i8**, i8*** %6, align 8
  %39 = load i32, i32* @xoptind, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37, %27, %23
  %48 = load i32, i32* @EOF, align 4
  store i32 %48, i32* %4, align 4
  br label %140

49:                                               ; preds = %37
  %50 = load i8**, i8*** %6, align 8
  %51 = load i32, i32* @xoptind, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 45
  br i1 %58, label %59, label %73

59:                                               ; preds = %49
  %60 = load i8**, i8*** %6, align 8
  %61 = load i32, i32* @xoptind, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @xoptind, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @xoptind, align 4
  %72 = load i32, i32* @EOF, align 4
  store i32 %72, i32* %4, align 4
  br label %140

73:                                               ; preds = %59, %49
  %74 = load i8**, i8*** %6, align 8
  %75 = load i32, i32* @xoptind, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %79, i8** @xgetopt.scan, align 8
  %80 = load i32, i32* @xoptind, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @xoptind, align 4
  br label %82

82:                                               ; preds = %73, %12
  %83 = load i8*, i8** @xgetopt.scan, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** @xgetopt.scan, align 8
  %85 = load i8, i8* %83, align 1
  store i8 %85, i8* %8, align 1
  %86 = load i8*, i8** %7, align 8
  %87 = load i8, i8* %8, align 1
  %88 = call i8* @strchr(i8* %86, i8 signext %87)
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i8, i8* %8, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 58
  br i1 %94, label %95, label %102

95:                                               ; preds = %91, %82
  %96 = load i32, i32* @stderr, align 4
  %97 = load i8**, i8*** %6, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i8, i8* %8, align 1
  %101 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %99, i8 signext %100)
  store i32 63, i32* %4, align 4
  br label %140

102:                                              ; preds = %91
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 58
  br i1 %108, label %109, label %137

109:                                              ; preds = %102
  %110 = load i8*, i8** @xgetopt.scan, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i8*, i8** @xgetopt.scan, align 8
  store i8* %115, i8** @xoptarg, align 8
  store i8* null, i8** @xgetopt.scan, align 8
  br label %136

116:                                              ; preds = %109
  %117 = load i32, i32* @xoptind, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i8**, i8*** %6, align 8
  %122 = load i32, i32* @xoptind, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** @xoptarg, align 8
  %126 = load i32, i32* @xoptind, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @xoptind, align 4
  br label %135

128:                                              ; preds = %116
  %129 = load i32, i32* @stderr, align 4
  %130 = load i8**, i8*** %6, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i8, i8* %8, align 1
  %134 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %132, i8 signext %133)
  store i32 58, i32* %4, align 4
  br label %140

135:                                              ; preds = %120
  br label %136

136:                                              ; preds = %135, %114
  br label %137

137:                                              ; preds = %136, %102
  %138 = load i8, i8* %8, align 1
  %139 = sext i8 %138 to i32
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %137, %128, %95, %69, %47
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
