; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_seaf_set_file_time.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_seaf_set_file_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.utimbuf = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to stat %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_set_file_time(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.utimbuf, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @stat(i8* %8, %struct.stat* %6)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @g_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %14)
  store i32 -1, i32* %3, align 4
  br label %24

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @utime(i8* %22, %struct.utimbuf* %7)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @g_warning(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @utime(i8*, %struct.utimbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
