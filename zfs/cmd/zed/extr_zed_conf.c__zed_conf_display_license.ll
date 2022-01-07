; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c__zed_conf_display_license.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c__zed_conf_display_license.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"The ZFS Event Daemon (ZED) is distributed under the terms of the\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"  Common Development and Distribution License (CDDL-1.0)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"  <http://opensource.org/licenses/CDDL-1.0>.\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"Developed at Lawrence Livermore National Laboratory (LLNL-CODE-403049).\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_zed_conf_display_license to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_zed_conf_display_license() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca [7 x i8*], align 16
  %3 = bitcast [7 x i8*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 56, i1 false)
  %4 = bitcast i8* %3 to [7 x i8*]*
  %5 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i8** %5, align 16
  %6 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8** %6, align 8
  %7 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i32 0, i32 2
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i8** %7, align 16
  %8 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %8, align 8
  %9 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i32 0, i32 4
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i32 0, i32 5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 0
  store i8** %11, i8*** %1, align 8
  br label %12

12:                                               ; preds = %20, %0
  %13 = load i8**, i8*** %1, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i8**, i8*** %1, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i8**, i8*** %1, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %1, align 8
  br label %12

23:                                               ; preds = %12
  %24 = load i32, i32* @EXIT_SUCCESS, align 4
  %25 = call i32 @exit(i32 %24) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
