; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_index_Compare.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_index_Compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_entry_s = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @index_Compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_Compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.index_entry_s*, align 8
  %7 = alloca %struct.index_entry_s*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.index_entry_s*
  store %struct.index_entry_s* %9, %struct.index_entry_s** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.index_entry_s*
  store %struct.index_entry_s* %11, %struct.index_entry_s** %7, align 8
  %12 = load %struct.index_entry_s*, %struct.index_entry_s** %6, align 8
  %13 = getelementptr inbounds %struct.index_entry_s, %struct.index_entry_s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.index_entry_s*, %struct.index_entry_s** %7, align 8
  %16 = getelementptr inbounds %struct.index_entry_s, %struct.index_entry_s* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load %struct.index_entry_s*, %struct.index_entry_s** %6, align 8
  %21 = getelementptr inbounds %struct.index_entry_s, %struct.index_entry_s* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.index_entry_s*, %struct.index_entry_s** %7, align 8
  %24 = getelementptr inbounds %struct.index_entry_s, %struct.index_entry_s* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %47

28:                                               ; preds = %19
  %29 = load %struct.index_entry_s*, %struct.index_entry_s** %7, align 8
  %30 = getelementptr inbounds %struct.index_entry_s, %struct.index_entry_s* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.index_entry_s*, %struct.index_entry_s** %6, align 8
  %33 = getelementptr inbounds %struct.index_entry_s, %struct.index_entry_s* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %2
  %38 = load %struct.index_entry_s*, %struct.index_entry_s** %6, align 8
  %39 = getelementptr inbounds %struct.index_entry_s, %struct.index_entry_s* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.index_entry_s*, %struct.index_entry_s** %7, align 8
  %42 = getelementptr inbounds %struct.index_entry_s, %struct.index_entry_s* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 -1, i32 1
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %28, %27
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
