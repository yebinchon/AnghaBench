; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_StreamExtractorCreateMRL.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_StreamExtractorCreateMRL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"!/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @StreamExtractorCreateMRL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @StreamExtractorCreateMRL(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vlc_memstream, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @mrl_EscapeFragmentIdentifier(i8** %7, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %39

12:                                               ; preds = %2
  %13 = call i64 @vlc_memstream_open(%struct.vlc_memstream* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @free(i8* %16)
  store i8* null, i8** %3, align 8
  br label %39

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %6, i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strstr(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %6, i8 signext 35)
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @vlc_memstream_printf(%struct.vlc_memstream* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @free(i8* %29)
  %31 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %37

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %6, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i8* [ null, %33 ], [ %36, %34 ]
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %37, %15, %11
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i64 @mrl_EscapeFragmentIdentifier(i8**, i8*) #1

declare dso_local i64 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i8 signext) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, i8*) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
