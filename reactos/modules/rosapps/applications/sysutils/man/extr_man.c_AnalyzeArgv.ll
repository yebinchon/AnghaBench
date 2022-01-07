; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/man/extr_man.c_AnalyzeArgv.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/man/extr_man.c_AnalyzeArgv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/h\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@__const.AnalyzeArgv.keys = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [3 x i8] c".1\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".2\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".3\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c".4\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".5\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c".6\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c".7\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".8\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c".9\00", align 1
@__const.AnalyzeArgv.sections = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0)], align 16
@MAXLINE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"No manual for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnalyzeArgv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca [4 x i8*], align 16
  %6 = alloca [9 x i8*], align 16
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8 0, i8* %4, align 1
  %8 = bitcast [4 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i8*]* @__const.AnalyzeArgv.keys to i8*), i64 32, i1 false)
  %9 = bitcast [9 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([9 x i8*]* @__const.AnalyzeArgv.sections to i8*), i64 72, i1 false)
  %10 = load i32, i32* @MAXLINE, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 1, %11
  %13 = trunc i64 %12 to i32
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strcpy(i8* %16, i8* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %35, %1
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %22 = call i32 @_countof(i8** %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @strcmp(i8* %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = call i32 (...) @Usage()
  store i8 1, i8* %4, align 1
  br label %34

34:                                               ; preds = %32, %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %19

38:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  %39 = load i8, i8* %4, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @OpenF(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %3, align 4
  %48 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 0
  %49 = call i32 @_countof(i8** %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @strcat(i8* %52, i8* %56)
  %58 = call i64 @OpenF(i8* %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %51, %46
  %61 = phi i1 [ false, %46 ], [ %59, %51 ]
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @strcpy(i8* %63, i8* %64)
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %46

68:                                               ; preds = %60
  %69 = load i32, i32* %3, align 4
  %70 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 0
  %71 = call i32 @_countof(i8** %70)
  %72 = icmp sge i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %41
  br label %78

78:                                               ; preds = %77, %38
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @_countof(i8**) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @Usage(...) #2

declare dso_local i64 @OpenF(i8*) #2

declare dso_local i8* @strcat(i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
