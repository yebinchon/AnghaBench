; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wpl.c_read_head.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wpl.c_read_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@XML_READER_ENDELEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"head\00", align 1
@XML_READER_STARTELEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"skipping unknown tag <%s> in <head>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @read_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_head(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  br label %11

11:                                               ; preds = %54, %46, %32, %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @xml_ReaderNextNode(i32* %12, i8** %6)
  store i32 %13, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @XML_READER_ENDELEM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %55

24:                                               ; preds = %19, %15
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @XML_READER_STARTELEM, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcasecmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @parse_meta(%struct.TYPE_7__* %33, i32* %34)
  br label %11

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strcasecmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @parse_title_element(%struct.TYPE_7__* %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %55

46:                                               ; preds = %40
  br label %11

47:                                               ; preds = %36
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @msg_Warn(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @consume_volatile_tag(%struct.TYPE_7__* %51, i8* %52)
  br label %54

54:                                               ; preds = %47, %24
  br label %11

55:                                               ; preds = %45, %23, %11
  ret void
}

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @parse_meta(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @parse_title_element(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @consume_volatile_tag(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
