; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_prop_get_int64.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_prop_get_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"remove_timeout\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"io_T\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"checksum_T\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fmd_prop_get_int64(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i64 15000000000, i64* %3, align 8
  br label %20

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  store i64 600000000000, i64* %3, align 8
  br label %20

19:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %19, %18, %9
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
