; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbReplParseCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbReplParseCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ldb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @ldbReplParseCommand(i32* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** null, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 0), align 4
  %11 = call i64 @sdslen(i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8** null, i8*** %2, align 8
  br label %122

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 0), align 4
  %16 = call i8* @sdsdup(i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 42)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %116

23:                                               ; preds = %14
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strstr(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %116

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @atoi(i8* %35)
  %37 = load i32*, i32** %3, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 1024
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %31
  br label %116

46:                                               ; preds = %41
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 8, %49
  %51 = trunc i64 %50 to i32
  %52 = call i8** @zmalloc(i32 %51)
  store i8** %52, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %109, %46
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %112

58:                                               ; preds = %53
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 36
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %116

64:                                               ; preds = %58
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i8* @strstr(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %116

72:                                               ; preds = %64
  %73 = load i8*, i8** %7, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @atoi(i8* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %81, 1024
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %72
  br label %116

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i8* @sdsnewlen(i8* %85, i32 %86)
  %88 = load i8**, i8*** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  store i8* %87, i8** %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %7, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 13
  br i1 %101, label %108, label %102

102:                                              ; preds = %84
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 10
  br i1 %107, label %108, label %109

108:                                              ; preds = %102, %84
  br label %116

109:                                              ; preds = %102
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  store i8* %111, i8** %7, align 8
  br label %53

112:                                              ; preds = %53
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @sdsfree(i8* %113)
  %115 = load i8**, i8*** %4, align 8
  store i8** %115, i8*** %2, align 8
  br label %122

116:                                              ; preds = %108, %83, %71, %63, %45, %30, %22
  %117 = load i8**, i8*** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @sdsfreesplitres(i8** %117, i32 %118)
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @sdsfree(i8* %120)
  store i8** null, i8*** %2, align 8
  br label %122

122:                                              ; preds = %116, %112, %13
  %123 = load i8**, i8*** %2, align 8
  ret i8** %123
}

declare dso_local i64 @sdslen(i32) #1

declare dso_local i8* @sdsdup(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8** @zmalloc(i32) #1

declare dso_local i8* @sdsnewlen(i8*, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @sdsfreesplitres(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
