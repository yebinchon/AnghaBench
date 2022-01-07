; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_file_is_ignored.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_file_is_ignored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_readdir_helper = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_readdir_helper*, i8*)* @rdh_file_is_ignored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdh_file_is_ignored(%struct.vlc_readdir_helper* %0, i8* %1) #0 {
  %3 = alloca %struct.vlc_readdir_helper*, align 8
  %4 = alloca i8*, align 8
  store %struct.vlc_readdir_helper* %0, %struct.vlc_readdir_helper** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %3, align 8
  %20 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %36, label %29

29:                                               ; preds = %23, %18
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %3, align 8
  %32 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rdh_file_has_ext(i8* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %29, %23, %14, %10, %2
  %37 = phi i1 [ true, %23 ], [ true, %14 ], [ true, %10 ], [ true, %2 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @rdh_file_has_ext(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
