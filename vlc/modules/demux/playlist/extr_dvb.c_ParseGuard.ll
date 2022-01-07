; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_dvb.c_ParseGuard.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_dvb.c_ParseGuard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guard = type { [7 x i8], [7 x i8] }
%struct.guard.0 = type { i8*, i8* }

@ParseGuard.tab = internal constant [8 x %struct.guard] [%struct.guard { [7 x i8] c"19_128\00", [7 x i8] c"19/128\00" }, %struct.guard { [7 x i8] c"19_256\00", [7 x i8] c"19/256\00" }, %struct.guard { [7 x i8] c"1_128\00\00", [7 x i8] c"1/128\00\00" }, %struct.guard { [7 x i8] c"1_16\00\00\00", [7 x i8] c"1/16\00\00\00" }, %struct.guard { [7 x i8] c"1_32\00\00\00", [7 x i8] c"1/32\00\00\00" }, %struct.guard { [7 x i8] c"1_4\00\00\00\00", [7 x i8] c"1/4\00\00\00\00" }, %struct.guard { [7 x i8] c"1_8\00\00\00\00", [7 x i8] c"1/8\00\00\00\00" }, %struct.guard { [7 x i8] c"AUTO\00\00\00", [7 x i8] zeroinitializer }], align 16
@.str = private unnamed_addr constant [16 x i8] c"GUARD_INTERVAL_\00", align 1
@cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ParseGuard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ParseGuard(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.guard*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strncmp(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 15)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store i8* null, i8** %2, align 8
  br label %28

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 15
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @cmp, align 4
  %17 = call %struct.guard.0* @bsearch(i8* %15, %struct.guard.0* bitcast ([8 x %struct.guard]* @ParseGuard.tab to %struct.guard.0*), i32 8, i32 14, i32 %16)
  %18 = bitcast %struct.guard.0* %17 to %struct.guard*
  store %struct.guard* %18, %struct.guard** %4, align 8
  %19 = load %struct.guard*, %struct.guard** %4, align 8
  %20 = icmp ne %struct.guard* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.guard*, %struct.guard** %4, align 8
  %23 = getelementptr inbounds %struct.guard, %struct.guard* %22, i32 0, i32 1
  %24 = getelementptr inbounds [7 x i8], [7 x i8]* %23, i64 0, i64 0
  br label %26

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i8* [ %24, %21 ], [ null, %25 ]
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %26, %11
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.guard.0* @bsearch(i8*, %struct.guard.0*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
