; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_str_map.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_str_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strcmp_void = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, [2 x i8*]*, i64)* @str_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @str_map(i8* %0, [2 x i8*]* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i8*]*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store [2 x i8*]* %1, [2 x i8*]** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load [2 x i8*]*, [2 x i8*]** %5, align 8
  %10 = bitcast [2 x i8*]* %9 to i8***
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @strcmp_void, align 4
  %13 = call i8** @bsearch(i8* %8, i8*** %10, i64 %11, i32 16, i32 %12)
  store i8** %13, i8*** %7, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i8**, i8*** %7, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i8* [ %19, %16 ], [ null, %20 ]
  ret i8* %22
}

declare dso_local i8** @bsearch(i8*, i8***, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
