; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_chain.c_AppendTransform.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_chain.c_AppendTransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"90\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"180\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"270\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"hflip\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"vflip\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"transpose\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"antitranspose\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"transform{type=%s}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_7__*, %struct.TYPE_7__*)* @AppendTransform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AppendTransform(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [100 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @video_format_GetTransform(i32 %18, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %32 [
    i32 130, label %25
    i32 132, label %26
    i32 131, label %27
    i32 133, label %28
    i32 128, label %29
    i32 129, label %30
    i32 134, label %31
  ]

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %33

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %33

27:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %33

28:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %33

29:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %33

30:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %33

31:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %33

32:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  br label %33

33:                                               ; preds = %32, %31, %30, %29, %28, %27, %26, %25
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32* null, i32** %4, align 8
  br label %55

37:                                               ; preds = %33
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @snprintf(i8* %38, i32 100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %42 = call i8* @config_ChainCreate(i8** %11, i32** %10, i8* %41)
  store i8* %42, i8** %13, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = call i32* @filter_chain_AppendFilter(i32* %43, i8* %44, i32* %45, %struct.TYPE_7__* %46)
  store i32* %47, i32** %14, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @config_ChainDestroy(i32* %48)
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32*, i32** %14, align 8
  store i32* %54, i32** %4, align 8
  br label %55

55:                                               ; preds = %37, %36
  %56 = load i32*, i32** %4, align 8
  ret i32* %56
}

declare dso_local i32 @video_format_GetTransform(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @config_ChainCreate(i8**, i32**, i8*) #1

declare dso_local i32* @filter_chain_AppendFilter(i32*, i8*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @config_ChainDestroy(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
