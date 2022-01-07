; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_livehttp.c_formatSegmentPath.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_livehttp.c_formatSegmentPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEG_NUMBER_PLACEHOLDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s%0*d%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @formatSegmentPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @formatSegmentPath(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @vlc_strftime(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %47

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @SEG_NUMBER_PLACEHOLDER, align 4
  %19 = call i32 @strcspn(i8* %17, i32 %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %15
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @SEG_NUMBER_PLACEHOLDER, align 4
  %28 = call i32 @strspn(i8* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %7, align 8
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31, i32 %32, i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %47

43:                                               ; preds = %25
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %43, %15
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %45, %42, %14
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i8* @vlc_strftime(i8*) #1

declare dso_local i32 @strcspn(i8*, i32) #1

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
