; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_es.c_es_print_url.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_es.c_es_print_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"stream-%n-%c.%m\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%4.4s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%%%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32, i8*, i8*)* @es_print_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @es_print_url(i8* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.vlc_memstream, align 8
  %13 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = call i64 @vlc_memstream_open(%struct.vlc_memstream* %12)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %71

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %25

25:                                               ; preds = %24, %20
  br label %26

26:                                               ; preds = %62, %36, %25
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  %29 = load i8, i8* %27, align 1
  store i8 %29, i8* %13, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %26
  %33 = load i8, i8* %13, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 37
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8, i8* %13, align 1
  %38 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %12, i8 signext %37)
  br label %26

39:                                               ; preds = %32
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  %42 = load i8, i8* %40, align 1
  store i8 %42, i8* %13, align 1
  %43 = zext i8 %42 to i32
  switch i32 %43, label %58 [
    i32 110, label %44
    i32 99, label %47
    i32 109, label %50
    i32 97, label %53
    i32 0, label %56
  ]

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %62

47:                                               ; preds = %39
  %48 = bitcast i32* %8 to i8*
  %49 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %62

50:                                               ; preds = %39
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %12, i8* %51)
  br label %62

53:                                               ; preds = %39
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %12, i8* %54)
  br label %62

56:                                               ; preds = %39
  %57 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %12, i8 signext 37)
  br label %64

58:                                               ; preds = %39
  %59 = load i8, i8* %13, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %53, %50, %47, %44
  br label %26

63:                                               ; preds = %26
  br label %64

64:                                               ; preds = %63, %56
  %65 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %12)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i8* null, i8** %6, align 8
  br label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %12, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %68, %67, %16
  %72 = load i8*, i8** %6, align 8
  ret i8* %72
}

declare dso_local i64 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i8 signext) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, ...) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
