; ModuleID = '/home/carl/AnghaBench/streem/src/extr_signal.c_add_sig.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_signal.c_add_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sig_list = type { i32, i8*, i32, %struct.sig_list* }

@STRM_NG = common dso_local global i32 0, align 4
@sig_list = common dso_local global %struct.sig_list* null, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @add_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sig(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sig_list*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = call %struct.sig_list* @malloc(i32 32)
  store %struct.sig_list* %9, %struct.sig_list** %8, align 8
  %10 = load %struct.sig_list*, %struct.sig_list** %8, align 8
  %11 = icmp eq %struct.sig_list* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @STRM_NG, align 4
  store i32 %13, i32* %4, align 4
  br label %29

14:                                               ; preds = %3
  %15 = load %struct.sig_list*, %struct.sig_list** @sig_list, align 8
  %16 = load %struct.sig_list*, %struct.sig_list** %8, align 8
  %17 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %16, i32 0, i32 3
  store %struct.sig_list* %15, %struct.sig_list** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.sig_list*, %struct.sig_list** %8, align 8
  %20 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.sig_list*, %struct.sig_list** %8, align 8
  %23 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.sig_list*, %struct.sig_list** %8, align 8
  %26 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.sig_list*, %struct.sig_list** %8, align 8
  store %struct.sig_list* %27, %struct.sig_list** @sig_list, align 8
  %28 = load i32, i32* @STRM_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %14, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.sig_list* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
