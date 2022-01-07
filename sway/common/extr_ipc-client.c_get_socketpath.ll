; ModuleID = '/home/carl/AnghaBench/sway/common/extr_ipc-client.c_get_socketpath.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_ipc-client.c_get_socketpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"SWAYSOCK\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"sway --get-socketpath 2>/dev/null\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"I3SOCK\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"i3 --get-socketpath 2>/dev/null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_socketpath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %1, align 8
  br label %85

15:                                               ; preds = %0
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %16 = call i32* @popen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @getline(i8** %3, i64* %4, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @pclose(i32* %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %35, %26
  %42 = load i8*, i8** %3, align 8
  store i8* %42, i8** %1, align 8
  br label %85

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43, %15
  %45 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i8* @strdup(i8* %51)
  store i8* %52, i8** %1, align 8
  br label %85

53:                                               ; preds = %44
  %54 = call i32* @popen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %54, i32** %5, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @getline(i8** %3, i64* %4, i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @pclose(i32* %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %57
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i8*, i8** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %73, %64
  %80 = load i8*, i8** %3, align 8
  store i8* %80, i8** %1, align 8
  br label %85

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81, %53
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @free(i8* %83)
  store i8* null, i8** %1, align 8
  br label %85

85:                                               ; preds = %82, %79, %48, %41, %12
  %86 = load i8*, i8** %1, align 8
  ret i8* %86
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
