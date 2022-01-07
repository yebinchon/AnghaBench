; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_memstream_puts_xmlencoded.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_memstream_puts_xmlencoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_memstream*, i8*, i8*)* @memstream_puts_xmlencoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memstream_puts_xmlencoded(%struct.vlc_memstream* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.vlc_memstream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %7, align 8
  br label %23

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = call i8* @strndup(i8* %15, i32 %21)
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %14, %11
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %52

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @isXmlEncoded(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %32, i8* %33)
  br label %49

35:                                               ; preds = %27
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @vlc_xml_encode(i8* %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @free(i8* %41)
  br label %52

43:                                               ; preds = %35
  %44 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %44, i8* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %43, %31
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  br label %52

52:                                               ; preds = %49, %40, %26
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i64 @isXmlEncoded(i8*) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

declare dso_local i8* @vlc_xml_encode(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
