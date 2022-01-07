; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_intf.c_config_RemoveIntf.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_intf.c_config_RemoveIntf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"extraintf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"control\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_RemoveIntf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %5, align 8
  %14 = call i8* @config_GetPsz(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %4, align 8
  store i8* %14, i8** %3, align 8
  br label %15

15:                                               ; preds = %55, %1
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @strncmp(i8* %19, i8* %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 58
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i8*, i8** %4, align 8
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %38)
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @config_PutPsz(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @free(i8* %44)
  br label %46

46:                                               ; preds = %41, %35
  br label %56

47:                                               ; preds = %18
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 58)
  store i8* %49, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %52, %47
  br label %15

56:                                               ; preds = %46, %15
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @free(i8* %57)
  %59 = call i8* @config_GetPsz(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %59, i8** %4, align 8
  store i8* %59, i8** %3, align 8
  br label %60

60:                                               ; preds = %100, %56
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  %64 = load i8*, i8** %2, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @strncmp(i8* %64, i8* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 58
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  br label %80

80:                                               ; preds = %77, %69
  %81 = load i8*, i8** %4, align 8
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %3, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %82, i8* %83)
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @config_PutPsz(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @free(i8* %89)
  br label %91

91:                                               ; preds = %86, %80
  br label %101

92:                                               ; preds = %63
  %93 = load i8*, i8** %4, align 8
  %94 = call i8* @strchr(i8* %93, i8 signext 58)
  store i8* %94, i8** %4, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  br label %100

100:                                              ; preds = %97, %92
  br label %60

101:                                              ; preds = %91, %60
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 @free(i8* %102)
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @config_GetPsz(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @config_PutPsz(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
