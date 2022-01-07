; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_update_file.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_update_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.status = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.io = type { i32 }

@LINE_STAT_UNTRACKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@repo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_update_file(%struct.status* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.io, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8*], align 16
  store %struct.status* %0, %struct.status** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.status*, %struct.status** %4, align 8
  %11 = getelementptr inbounds %struct.status, %struct.status* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @LINE_STAT_UNTRACKED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i32 @suffixcmp(i8* %18, i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* null, i8** %29, align 8
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @repo, i32 0, i32 0), align 4
  %32 = call i32 @io_run_bg(i8** %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %50

33:                                               ; preds = %17, %2
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @status_update_prepare(%struct.io* %7, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %50

38:                                               ; preds = %33
  %39 = load %struct.status*, %struct.status** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @status_update_write(%struct.io* %7, %struct.status* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = call i64 @io_done(%struct.io* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i1 [ false, %38 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %37, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @suffixcmp(i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @io_run_bg(i8**, i32) #1

declare dso_local i32 @status_update_prepare(%struct.io*, i32) #1

declare dso_local i32 @status_update_write(%struct.io*, %struct.status*, i32) #1

declare dso_local i64 @io_done(%struct.io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
