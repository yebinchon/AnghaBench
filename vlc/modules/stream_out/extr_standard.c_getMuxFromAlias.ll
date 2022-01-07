; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_standard.c_getMuxFromAlias.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_standard.c_getMuxFromAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [6 x i8], [32 x i8] }

@getMuxFromAlias.mux_alias = internal global [22 x %struct.anon] [%struct.anon { [6 x i8] c"avi\00\00\00", [32 x i8] c"avi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"ogg\00\00\00", [32 x i8] c"ogg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"ogm\00\00\00", [32 x i8] c"ogg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"ogv\00\00\00", [32 x i8] c"ogg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"flac\00\00", [32 x i8] c"raw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"mp3\00\00\00", [32 x i8] c"raw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"mp4\00\00\00", [32 x i8] c"mp4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"mov\00\00\00", [32 x i8] c"mov\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"moov\00\00", [32 x i8] c"mov\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"asf\00\00\00", [32 x i8] c"asf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"wma\00\00\00", [32 x i8] c"asf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"wmv\00\00\00", [32 x i8] c"asf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"trp\00\00\00", [32 x i8] c"ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"ts\00\00\00\00", [32 x i8] c"ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"mpg\00\00\00", [32 x i8] c"ps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"mpeg\00\00", [32 x i8] c"ps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"ps\00\00\00\00", [32 x i8] c"ps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"mpeg1\00", [32 x i8] c"mpeg1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"wav\00\00\00", [32 x i8] c"wav\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"flv\00\00\00", [32 x i8] c"avformat{mux=flv}\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"mkv\00\00\00", [32 x i8] c"avformat{mux=matroska}\00\00\00\00\00\00\00\00\00\00" }, %struct.anon { [6 x i8] c"webm\00\00", [32 x i8] c"avformat{mux=webm}\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @getMuxFromAlias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getMuxFromAlias(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %30

8:                                                ; preds = %1
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %26, %8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %10, 22
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @getMuxFromAlias.mux_alias, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  %17 = getelementptr inbounds [6 x i8], [6 x i8]* %16, i64 0, i64 0
  %18 = call i32 @strcasecmp(i8* %13, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds [22 x %struct.anon], [22 x %struct.anon]* @getMuxFromAlias.mux_alias, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  store i8* %24, i8** %2, align 8
  br label %30

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %9

29:                                               ; preds = %9
  store i8* null, i8** %2, align 8
  br label %30

30:                                               ; preds = %29, %20, %7
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
