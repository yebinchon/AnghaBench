; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_main.c_log_distro.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_main.c_log_distro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"/etc/lsb-release\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"/etc/os-release\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"/etc/debian_version\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"/etc/redhat-release\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"/etc/gentoo-release\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SWAY_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Contents of %s:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @log_distro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_distro() #0 {
  %1 = alloca [5 x i8*], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = bitcast [5 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false)
  %5 = bitcast i8* %4 to [5 x i8*]*
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8** %6, align 16
  %7 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8** %7, align 8
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i32 0, i32 2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8** %8, align 16
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8** %9, align 8
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i32 0, i32 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8** %10, align 16
  store i64 0, i64* %2, align 8
  br label %11

11:                                               ; preds = %32, %0
  %12 = load i64, i64* %2, align 8
  %13 = icmp ult i64 %12, 5
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load i32, i32* @SWAY_INFO, align 4
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @sway_log(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @log_file(i32* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @fclose(i32* %29)
  br label %31

31:                                               ; preds = %21, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %2, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %2, align 8
  br label %11

35:                                               ; preds = %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @sway_log(i32, i8*, i8*) #2

declare dso_local i32 @log_file(i32*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
