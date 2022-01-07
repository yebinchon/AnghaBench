; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_demux.c_demux_NameFromMimeType.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_demux.c_demux_NameFromMimeType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }

@demux_NameFromMimeType.types = internal global [8 x %struct.TYPE_5__] [%struct.TYPE_5__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.TYPE_5__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.TYPE_5__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* null }, %struct.TYPE_5__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null }, %struct.TYPE_5__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* null }, %struct.TYPE_5__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct.TYPE_5__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null }, %struct.TYPE_5__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null }], align 16
@.str = private unnamed_addr constant [10 x i8] c"audio/aac\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"m4a\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"audio/aacp\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"audio/mpeg\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mp3\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"video/dv\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rawdv\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"video/MP2P\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"video/MP2T\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"video/nsa\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"nsv\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"video/nsv\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @demux_NameFromMimeType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @demux_NameFromMimeType(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* getelementptr inbounds ([8 x %struct.TYPE_5__], [8 x %struct.TYPE_5__]* @demux_NameFromMimeType.types, i64 0, i64 0))
  %6 = call %struct.TYPE_5__* @demux_lookup(i8* %4, %struct.TYPE_5__* getelementptr inbounds ([8 x %struct.TYPE_5__], [8 x %struct.TYPE_5__]* @demux_NameFromMimeType.types, i64 0, i64 0), i32 %5)
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %13 ]
  ret i8* %15
}

declare dso_local %struct.TYPE_5__* @demux_lookup(i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
