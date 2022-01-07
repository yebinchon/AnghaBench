; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_TruncBatchLog.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_TruncBatchLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@gOurDirectoryPath = common dso_local global i8* null, align 8
@kSpoolLog = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TruncBatchLog() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca %struct.stat, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @gOurDirectoryPath, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %0
  %11 = call i32 @time(i64* %3)
  %12 = load i64, i64* %3, align 8
  %13 = sub nsw i64 %12, 86400
  store i64 %13, i64* %3, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %15 = load i32, i32* @kSpoolLog, align 4
  %16 = call i32 @OurDirectoryPath(i8* %14, i32 256, i32 %15)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %18 = call i64 @stat(i8* %17, %struct.stat* %2)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %27 = load i32, i32* @O_WRONLY, align 4
  %28 = load i32, i32* @O_TRUNC, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @open(i8* %26, i32 %29, i32 384)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @close(i32 %34)
  br label %36

36:                                               ; preds = %33, %25
  br label %37

37:                                               ; preds = %36, %20, %10
  br label %38

38:                                               ; preds = %37, %0
  ret void
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @OurDirectoryPath(i8*, i32, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
