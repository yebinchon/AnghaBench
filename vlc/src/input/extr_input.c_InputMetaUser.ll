; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputMetaUser.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputMetaUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8* }

@InputMetaUser.p_list = internal constant [8 x %struct.anon] [%struct.anon { i32 129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i32 134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i32 130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i32 131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i32 132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"meta-title\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"meta-artist\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"meta-genre\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"meta-copyright\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"meta-description\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"meta-date\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"meta-url\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @InputMetaUser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InputMetaUser(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @InputMetaUser.p_list, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %7
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @InputMetaUser.p_list, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @var_GetNonEmptyString(i32* %15, i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %38

25:                                               ; preds = %14
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @EnsureUTF8(i8* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @InputMetaUser.p_list, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 16
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @vlc_meta_Set(i32* %28, i32 %33, i8* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @free(i8* %36)
  br label %38

38:                                               ; preds = %25, %24
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %7

41:                                               ; preds = %7
  ret void
}

declare dso_local i8* @var_GetNonEmptyString(i32*, i8*) #1

declare dso_local i32 @EnsureUTF8(i8*) #1

declare dso_local i32 @vlc_meta_Set(i32*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
