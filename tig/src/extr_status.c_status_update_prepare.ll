; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_update_prepare.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_update_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.io = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"update-index\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"--index-info\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"--add\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"--remove\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@IO_WR = common dso_local global i32 0, align 4
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"line type %d not handled in switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io*, i32)* @status_update_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_update_prepare(%struct.io* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i8*], align 16
  %7 = alloca [7 x i8*], align 16
  store %struct.io* %0, %struct.io** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [5 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false)
  %9 = bitcast i8* %8 to [5 x i8*]*
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %10, align 16
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8** %11, align 8
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8** %13, align 8
  %14 = bitcast [7 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 56, i1 false)
  %15 = bitcast i8* %14 to [7 x i8*]*
  %16 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8** %21, align 8
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %35 [
    i32 130, label %23
    i32 129, label %29
    i32 128, label %29
  ]

23:                                               ; preds = %2
  %24 = load %struct.io*, %struct.io** %4, align 8
  %25 = load i32, i32* @IO_WR, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 4
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %28 = call i32 @io_run(%struct.io* %24, i32 %25, i32 %26, i32* null, i8** %27)
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %2, %2
  %30 = load %struct.io*, %struct.io** %4, align 8
  %31 = load i32, i32* @IO_WR, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 4
  %33 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 0
  %34 = call i32 @io_run(%struct.io* %30, i32 %31, i32 %32, i32* null, i8** %33)
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %29, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @io_run(%struct.io*, i32, i32, i32*, i8**) #2

declare dso_local i32 @die(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
