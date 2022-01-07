; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_OptInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_OptInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_options = type { i32 }

@argv = common dso_local global i8** null, align 8
@op = common dso_local global %struct.s_options* null, align 8
@errstream = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Valid command line options for \22%s\22 are:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OptInit(i8** %0, %struct.s_options* %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.s_options*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.s_options* %1, %struct.s_options** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8**, i8*** %4, align 8
  store i8** %9, i8*** @argv, align 8
  %10 = load %struct.s_options*, %struct.s_options** %5, align 8
  store %struct.s_options* %10, %struct.s_options** @op, align 8
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** @errstream, align 8
  %12 = load i8**, i8*** @argv, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %79

14:                                               ; preds = %3
  %15 = load i8**, i8*** @argv, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %79

18:                                               ; preds = %14
  %19 = load %struct.s_options*, %struct.s_options** @op, align 8
  %20 = icmp ne %struct.s_options* %19, null
  br i1 %20, label %21, label %79

21:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %22

22:                                               ; preds = %75, %21
  %23 = load i8**, i8*** @argv, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %78

29:                                               ; preds = %22
  %30 = load i8**, i8*** @argv, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %49, label %39

39:                                               ; preds = %29
  %40 = load i8**, i8*** @argv, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %57

49:                                               ; preds = %39, %29
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @handleflags(i32 %50, i32* %51)
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  br label %74

57:                                               ; preds = %39
  %58 = load i8**, i8*** @argv, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strchr(i8* %62, i8 signext 61)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @handleswitch(i32 %66, i32* %67)
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %65, %57
  br label %74

74:                                               ; preds = %73, %49
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %22

78:                                               ; preds = %22
  br label %79

79:                                               ; preds = %78, %18, %14, %3
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = load i8**, i8*** %4, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @fprintf(i32* %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = call i32 (...) @OptPrint()
  %88 = call i32 @exit(i32 1) #3
  unreachable

89:                                               ; preds = %79
  ret i32 0
}

declare dso_local i64 @handleflags(i32, i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @handleswitch(i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @OptPrint(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
