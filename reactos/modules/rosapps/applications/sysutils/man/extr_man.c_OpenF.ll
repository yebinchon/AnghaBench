; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/man/extr_man.c_OpenF.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/man/extr_man.c_OpenF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLINE = common dso_local global i32 0, align 4
@manpath = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@manfile = common dso_local global i32* null, align 8
@OpenFlag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpenF(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @MAXLINE, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 1, %6
  %8 = trunc i64 %7 to i32
  %9 = call i64 @malloc(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @manpath, align 4
  %13 = call i32 @strcpy(i8* %11, i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strcat(i8* %14, i8* %15)
  %17 = call i32* @fopen(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** @manfile, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  store i32 1, i32* @OpenFlag, align 4
  %20 = call i32 (...) @AnalyzeFile()
  br label %22

21:                                               ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @AnalyzeFile(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
