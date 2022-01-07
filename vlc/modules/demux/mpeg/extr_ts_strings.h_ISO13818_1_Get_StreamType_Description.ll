; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_strings.h_ISO13818_1_Get_StreamType_Description.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_strings.h_ISO13818_1_Get_StreamType_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISO13818_1_streamstypes_descs = common dso_local global i8** null, align 8
@ISO13818_1_other_descs = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ISO13818_1_Get_StreamType_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ISO13818_1_Get_StreamType_Description(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 35
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i8**, i8*** @ISO13818_1_streamstypes_descs, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8*, i8** %7, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 15
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 127
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8**, i8*** @ISO13818_1_streamstypes_descs, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %33

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 127
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8**, i8*** @ISO13818_1_streamstypes_descs, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %2, align 8
  br label %33

29:                                               ; preds = %22
  %30 = load i8**, i8*** @ISO13818_1_other_descs, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %29, %25, %18, %6
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
