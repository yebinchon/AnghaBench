; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_messages.c_vlc_LogHeaderCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_messages.c_vlc_LogHeaderCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_logger = type { i32* }
%struct.vlc_logger_header = type { %struct.vlc_logger, i32, %struct.vlc_logger* }

@header_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_logger* @vlc_LogHeaderCreate(%struct.vlc_logger* %0, i8* %1) #0 {
  %3 = alloca %struct.vlc_logger*, align 8
  %4 = alloca %struct.vlc_logger*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vlc_logger_header*, align 8
  store %struct.vlc_logger* %0, %struct.vlc_logger** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add i64 24, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.vlc_logger_header* @malloc(i32 %14)
  store %struct.vlc_logger_header* %15, %struct.vlc_logger_header** %7, align 8
  %16 = load %struct.vlc_logger_header*, %struct.vlc_logger_header** %7, align 8
  %17 = icmp eq %struct.vlc_logger_header* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.vlc_logger* null, %struct.vlc_logger** %3, align 8
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.vlc_logger_header*, %struct.vlc_logger_header** %7, align 8
  %24 = getelementptr inbounds %struct.vlc_logger_header, %struct.vlc_logger_header* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.vlc_logger, %struct.vlc_logger* %24, i32 0, i32 0
  store i32* @header_ops, i32** %25, align 8
  %26 = load %struct.vlc_logger*, %struct.vlc_logger** %4, align 8
  %27 = load %struct.vlc_logger_header*, %struct.vlc_logger_header** %7, align 8
  %28 = getelementptr inbounds %struct.vlc_logger_header, %struct.vlc_logger_header* %27, i32 0, i32 2
  store %struct.vlc_logger* %26, %struct.vlc_logger** %28, align 8
  %29 = load %struct.vlc_logger_header*, %struct.vlc_logger_header** %7, align 8
  %30 = getelementptr inbounds %struct.vlc_logger_header, %struct.vlc_logger_header* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @memcpy(i32 %31, i8* %32, i64 %33)
  %35 = load %struct.vlc_logger_header*, %struct.vlc_logger_header** %7, align 8
  %36 = getelementptr inbounds %struct.vlc_logger_header, %struct.vlc_logger_header* %35, i32 0, i32 0
  store %struct.vlc_logger* %36, %struct.vlc_logger** %3, align 8
  br label %37

37:                                               ; preds = %22, %21
  %38 = load %struct.vlc_logger*, %struct.vlc_logger** %3, align 8
  ret %struct.vlc_logger* %38
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.vlc_logger_header* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
