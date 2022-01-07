; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri_putc.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%%%02hhX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_memstream*, i32, i8*)* @vlc_uri_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_uri_putc(%struct.vlc_memstream* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.vlc_memstream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @isurisafe(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @isurisubdelim(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @strchr(i8* %15, i32 %16)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %10, %3
  %20 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %20, i32 %21)
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = trunc i32 %25 to i8
  %27 = call i32 @vlc_memstream_printf(%struct.vlc_memstream* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 zeroext %26)
  br label %28

28:                                               ; preds = %23, %19
  ret void
}

declare dso_local i64 @isurisafe(i32) #1

declare dso_local i64 @isurisubdelim(i32) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i32) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
