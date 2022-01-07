; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_ParseUSFHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_ParseUSFHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@XML_READER_STARTELEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"usfsubtitles\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @ParseUSFHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseUSFHeader(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = call i32 @VLC_OBJECT(%struct.TYPE_8__* %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @vlc_stream_MemoryNew(i32 %7, i32 %11, i32 %15, i32 1)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @xml_ReaderCreate(%struct.TYPE_8__* %21, i32* %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @likely(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @xml_ReaderNextNode(i32* %28, i8** %5)
  %30 = load i64, i64* @XML_READER_STARTELEM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcasecmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ParseUSFHeaderTags(%struct.TYPE_8__* %37, i32* %38)
  br label %40

40:                                               ; preds = %36, %32, %27
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @xml_ReaderDelete(i32* %41)
  br label %43

43:                                               ; preds = %40, %20
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @vlc_stream_Delete(i32* %44)
  br label %46

46:                                               ; preds = %43, %19
  ret void
}

declare dso_local i32* @vlc_stream_MemoryNew(i32, i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_8__*) #1

declare dso_local i32* @xml_ReaderCreate(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @likely(i32*) #1

declare dso_local i64 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @ParseUSFHeaderTags(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @xml_ReaderDelete(i32*) #1

declare dso_local i32 @vlc_stream_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
