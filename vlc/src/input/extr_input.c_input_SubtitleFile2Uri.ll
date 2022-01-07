; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_input_SubtitleFile2Uri.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_input_SubtitleFile2Uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c".sub\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"using %s as subtitle file instead of %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @input_SubtitleFile2Uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @input_SubtitleFile2Uri(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strrchr(i8* %9, i8 signext 46)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strdup(i8* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 %27
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @vlc_stat(i8* %32, %struct.stat* %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @S_ISREG(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32*, i32** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @msg_Dbg(i32* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load i8*, i8** %5, align 8
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %40, %35, %22
  br label %47

47:                                               ; preds = %46, %17
  br label %48

48:                                               ; preds = %47, %13, %2
  %49 = load i8*, i8** %4, align 8
  %50 = call i8* @vlc_path2uri(i8* %49, i32* null)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i8*, i8** %8, align 8
  ret i8* %53
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @vlc_stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @vlc_path2uri(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
