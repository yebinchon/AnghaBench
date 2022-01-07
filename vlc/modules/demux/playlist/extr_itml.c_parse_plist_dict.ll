; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_itml.c_parse_plist_dict.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_itml.c_parse_plist_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@COMPLEX_CONTENT = common dso_local global i32 0, align 4
@SIMPLE_CONTENT = common dso_local global i32 0, align 4
@UNKNOWN_CONTENT = common dso_local global i32 0, align 4
@parse_tracks_dict = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i8*, i8*)* @parse_plist_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_plist_dict(i32* %0, i32* %1, i8* %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [9 x i8], align 1
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @VLC_UNUSED(i8* %14)
  %16 = load i8*, i8** %11, align 8
  %17 = call i32 @VLC_UNUSED(i8* %16)
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @VLC_UNUSED(i8* %18)
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  store i8 ptrtoint ([5 x i8]* @.str to i8), i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 ptrtoint ([6 x i8]* @.str.1 to i8), i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 ptrtoint ([4 x i8]* @.str.2 to i8), i8* %22, align 1
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 ptrtoint ([8 x i8]* @.str.3 to i8), i8* %23, align 1
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 ptrtoint ([7 x i8]* @.str.4 to i8), i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 ptrtoint ([5 x i8]* @.str.5 to i8), i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 ptrtoint ([5 x i8]* @.str.6 to i8), i8* %26, align 1
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 ptrtoint ([6 x i8]* @.str.7 to i8), i8* %27, align 1
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 0, i8* %28, align 1
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds [9 x i8], [9 x i8]* %13, i64 0, i64 0
  %33 = call i32 @parse_dict(i32* %29, i32* %30, i32* null, i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %32)
  ret i32 %33
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i32 @parse_dict(i32*, i32*, i32*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
