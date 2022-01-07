; ModuleID = '/home/carl/AnghaBench/redis/src/extr_util.c_getAbsolutePath.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_util.c_getAbsolutePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" \0D\0A\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getAbsolutePath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @sdsnew(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @sdstrim(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %2, align 8
  br label %108

20:                                               ; preds = %1
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %22 = call i32* @getcwd(i8* %21, i32 1024)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @sdsfree(i8* %25)
  store i8* null, i8** %2, align 8
  br label %108

27:                                               ; preds = %20
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %29 = call i8* @sdsnew(i8* %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @sdslen(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @sdslen(i8* %35)
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 47
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @sdscat(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %43, %33, %27
  br label %47

47:                                               ; preds = %100, %46
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @sdslen(i8* %48)
  %50 = icmp sge i32 %49, 3
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 47
  br label %69

69:                                               ; preds = %63, %57, %51, %47
  %70 = phi i1 [ false, %57 ], [ false, %51 ], [ false, %47 ], [ %68, %63 ]
  br i1 %70, label %71, label %101

71:                                               ; preds = %69
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @sdsrange(i8* %72, i32 3, i32 -1)
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @sdslen(i8* %74)
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %100

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @sdslen(i8* %79)
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 -2
  store i8* %83, i8** %7, align 8
  store i32 1, i32* %8, align 4
  br label %84

84:                                               ; preds = %89, %77
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 47
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %91, i8** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %84

94:                                               ; preds = %84
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  %98 = sub nsw i32 0, %97
  %99 = call i32 @sdsrange(i8* %95, i32 0, i32 %98)
  br label %100

100:                                              ; preds = %94, %71
  br label %47

101:                                              ; preds = %69
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i8* @sdscatsds(i8* %102, i8* %103)
  store i8* %104, i8** %5, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @sdsfree(i8* %105)
  %107 = load i8*, i8** %5, align 8
  store i8* %107, i8** %2, align 8
  br label %108

108:                                              ; preds = %101, %24, %18
  %109 = load i8*, i8** %2, align 8
  ret i8* %109
}

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i8* @sdstrim(i8*, i8*) #1

declare dso_local i32* @getcwd(i8*, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i32 @sdsrange(i8*, i32, i32) #1

declare dso_local i8* @sdscatsds(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
