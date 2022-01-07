; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_objres.c_vlc_objres_new.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_objres.c_vlc_objres_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_res = type { void (i8*)*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_objres_new(i64 %0, void (i8*)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca %struct.vlc_res*, align 8
  store i64 %0, i64* %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @add_overflow(i32 16, i64 %7, i64* %4)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  store i32 %12, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %29

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.vlc_res* @malloc(i64 %14)
  store %struct.vlc_res* %15, %struct.vlc_res** %6, align 8
  %16 = load %struct.vlc_res*, %struct.vlc_res** %6, align 8
  %17 = icmp eq %struct.vlc_res* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %29

22:                                               ; preds = %13
  %23 = load void (i8*)*, void (i8*)** %5, align 8
  %24 = load %struct.vlc_res*, %struct.vlc_res** %6, align 8
  %25 = getelementptr inbounds %struct.vlc_res, %struct.vlc_res* %24, i32 0, i32 0
  store void (i8*)* %23, void (i8*)** %25, align 8
  %26 = load %struct.vlc_res*, %struct.vlc_res** %6, align 8
  %27 = getelementptr inbounds %struct.vlc_res, %struct.vlc_res* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %22, %21, %11
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @add_overflow(i32, i64, i64*) #1

declare dso_local %struct.vlc_res* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
