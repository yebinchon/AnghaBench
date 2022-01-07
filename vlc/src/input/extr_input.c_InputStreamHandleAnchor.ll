; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputStreamHandleAnchor.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputStreamHandleAnchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"unable to attach stream-extractors for %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"attachment of directory-extractor failed for %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_7__**, i8*)* @InputStreamHandleAnchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InputStreamHandleAnchor(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @stream_extractor_AttachParsed(%struct.TYPE_7__** %11, i8* %12, i8** %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @msg_Err(i32* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %5, align 4
  br label %52

23:                                               ; preds = %4
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %25 = call i64 @vlc_stream_directory_Attach(%struct.TYPE_7__** %24, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @msg_Dbg(i32* %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  br label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i8* [ %38, %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %39 ]
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @MRLSections(i8* %41, i32* %43, i32* %45, i32* %47, i32* %49)
  %51 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %40, %15
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @stream_extractor_AttachParsed(%struct.TYPE_7__**, i8*, i8**) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i64 @vlc_stream_directory_Attach(%struct.TYPE_7__**, i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32) #1

declare dso_local i32 @MRLSections(i8*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
