; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_set_remote_branch.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_set_remote_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@.str = private unnamed_addr constant [8 x i8] c".remote\00", align 1
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c".merge\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @set_remote_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_remote_branch(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @string_ncopy(i64* %12, i8* %13, i64 %14)
  br label %45

16:                                               ; preds = %3
  %17 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %26 = call i64 @strlen(i64* %25)
  store i64 %26, i64* %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @prefixcmp(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i8*, i8** %5, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @string_format_from(i64* %36, i64* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %20, %16
  br label %45

45:                                               ; preds = %44, %11
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @string_ncopy(i64*, i8*, i64) #1

declare dso_local i64 @strlen(i64*) #1

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @STRING_SIZE(i8*) #1

declare dso_local i32 @string_format_from(i64*, i64*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
