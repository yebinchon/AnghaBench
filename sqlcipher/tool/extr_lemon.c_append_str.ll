; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_append_str.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_append_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@append_str.empty = internal global [1 x i8] zeroinitializer, align 1
@append_str.z = internal global i8* null, align 8
@append_str.alloced = internal global i32 0, align 4
@append_str.used = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @append_str(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [40 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load i32, i32* @append_str.used, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i8*, i8** @append_str.z, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** @append_str.z, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %20, %17, %14
  store i32 0, i32* @append_str.used, align 4
  %24 = load i8*, i8** @append_str.z, align 8
  store i8* %24, i8** %5, align 8
  br label %127

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @append_str.used, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* @append_str.used, align 4
  %35 = load i32, i32* @append_str.used, align 4
  %36 = icmp sge i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @lemonStrlen(i8* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %25
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 80
  %46 = load i32, i32* @append_str.used, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @append_str.alloced, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 80
  %56 = load i32, i32* @append_str.used, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %55, %57
  %59 = add i64 %58, 200
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* @append_str.alloced, align 4
  %61 = load i8*, i8** @append_str.z, align 8
  %62 = load i32, i32* @append_str.alloced, align 4
  %63 = call i64 @realloc(i8* %61, i32 %62)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** @append_str.z, align 8
  br label %65

65:                                               ; preds = %52, %42
  %66 = load i8*, i8** @append_str.z, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @append_str.empty, i64 0, i64 0), i8** %5, align 8
  br label %127

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %120, %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %7, align 4
  %73 = icmp sgt i32 %71, 0
  br i1 %73, label %74, label %121

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  %77 = load i8, i8* %75, align 1
  %78 = sext i8 %77 to i32
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 37
  br i1 %80, label %81, label %112

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 100
  br i1 %89, label %90, label %112

90:                                               ; preds = %84
  %91 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @lemon_sprintf(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %8, align 4
  %95 = load i8*, i8** @append_str.z, align 8
  %96 = load i32, i32* @append_str.used, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %100 = call i32 @lemon_strcpy(i8* %98, i8* %99)
  %101 = load i8*, i8** @append_str.z, align 8
  %102 = load i32, i32* @append_str.used, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = call i32 @lemonStrlen(i8* %104)
  %106 = load i32, i32* @append_str.used, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* @append_str.used, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %7, align 4
  br label %120

112:                                              ; preds = %84, %81, %74
  %113 = load i32, i32* %10, align 4
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** @append_str.z, align 8
  %116 = load i32, i32* @append_str.used, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @append_str.used, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  store i8 %114, i8* %119, align 1
  br label %120

120:                                              ; preds = %112, %90
  br label %70

121:                                              ; preds = %70
  %122 = load i8*, i8** @append_str.z, align 8
  %123 = load i32, i32* @append_str.used, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  store i8 0, i8* %125, align 1
  %126 = load i8*, i8** @append_str.z, align 8
  store i8* %126, i8** %5, align 8
  br label %127

127:                                              ; preds = %121, %68, %23
  %128 = load i8*, i8** %5, align 8
  ret i8* %128
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lemonStrlen(i8*) #1

declare dso_local i64 @realloc(i8*, i32) #1

declare dso_local i32 @lemon_sprintf(i8*, i8*, i32) #1

declare dso_local i32 @lemon_strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
