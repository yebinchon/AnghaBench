; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/touch/extr_touch.c_stime_arg2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/touch/extr_touch.c_stime_arg2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"out of range or illegal time specification: MMDDhhmm[yy]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stime_arg2(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tm*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = call %struct.tm* @localtime(i32* %9)
  store %struct.tm* %10, %struct.tm** %7, align 8
  %11 = icmp eq %struct.tm* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @ATOI2(i8* %15)
  %17 = load %struct.tm*, %struct.tm** %7, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.tm*, %struct.tm** %7, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 5
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %20, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @ATOI2(i8* %23)
  %25 = load %struct.tm*, %struct.tm** %7, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @ATOI2(i8* %27)
  %29 = load %struct.tm*, %struct.tm** %7, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @ATOI2(i8* %31)
  %33 = load %struct.tm*, %struct.tm** %7, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %14
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @ATOI2(i8* %38)
  %40 = load %struct.tm*, %struct.tm** %7, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %37, %14
  %43 = load %struct.tm*, %struct.tm** %7, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.tm*, %struct.tm** %7, align 8
  %46 = call i32 @mktime(%struct.tm* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = call i32 @errx(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %42
  ret void
}

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @ATOI2(i8*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
