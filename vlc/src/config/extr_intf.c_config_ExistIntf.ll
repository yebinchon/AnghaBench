; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_intf.c_config_ExistIntf.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_intf.c_config_ExistIntf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"extraintf\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_ExistIntf(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @assert(i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %6, align 8
  %11 = call i8* @config_GetPsz(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  store i8* %11, i8** %4, align 8
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @strncmp(i8* %16, i8* %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @free(i8* %22)
  store i32 1, i32* %2, align 4
  br label %61

24:                                               ; preds = %15
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 58)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %29, %24
  br label %12

33:                                               ; preds = %12
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @free(i8* %34)
  %36 = call i8* @config_GetPsz(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %36, i8** %5, align 8
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %57, %33
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @strncmp(i8* %41, i8* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @free(i8* %47)
  store i32 1, i32* %2, align 4
  br label %61

49:                                               ; preds = %40
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @strchr(i8* %50, i8 signext 58)
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  br label %57

57:                                               ; preds = %54, %49
  br label %37

58:                                               ; preds = %37
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @free(i8* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %46, %21
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @config_GetPsz(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
