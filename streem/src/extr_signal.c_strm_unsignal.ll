; ModuleID = '/home/carl/AnghaBench/streem/src/extr_signal.c_strm_unsignal.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_signal.c_strm_unsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sig_list = type { i32, %struct.sig_list* }

@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@STRM_NG = common dso_local global i32 0, align 4
@sig_list = common dso_local global %struct.sig_list* null, align 8
@handler = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strm_unsignal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sig_list*, align 8
  %8 = alloca %struct.sig_list*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SIG_IGN, align 4
  %11 = call i64 @signal(i32 %9, i32 %10)
  store i64 %11, i64* %6, align 8
  store %struct.sig_list* null, %struct.sig_list** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @SIG_ERR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @STRM_NG, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.sig_list*, %struct.sig_list** @sig_list, align 8
  store %struct.sig_list* %18, %struct.sig_list** %7, align 8
  br label %19

19:                                               ; preds = %44, %17
  %20 = load %struct.sig_list*, %struct.sig_list** %7, align 8
  %21 = icmp ne %struct.sig_list* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load %struct.sig_list*, %struct.sig_list** %7, align 8
  %24 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.sig_list*, %struct.sig_list** %8, align 8
  %30 = icmp eq %struct.sig_list* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.sig_list*, %struct.sig_list** %7, align 8
  %33 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %32, i32 0, i32 1
  %34 = load %struct.sig_list*, %struct.sig_list** %33, align 8
  store %struct.sig_list* %34, %struct.sig_list** @sig_list, align 8
  br label %42

35:                                               ; preds = %28
  %36 = load %struct.sig_list*, %struct.sig_list** %7, align 8
  %37 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %36, i32 0, i32 1
  %38 = load %struct.sig_list*, %struct.sig_list** %37, align 8
  %39 = load %struct.sig_list*, %struct.sig_list** %8, align 8
  %40 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %39, i32 0, i32 1
  store %struct.sig_list* %38, %struct.sig_list** %40, align 8
  %41 = load %struct.sig_list*, %struct.sig_list** %7, align 8
  store %struct.sig_list* %41, %struct.sig_list** %8, align 8
  br label %42

42:                                               ; preds = %35, %31
  br label %43

43:                                               ; preds = %42, %22
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.sig_list*, %struct.sig_list** %7, align 8
  %46 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %45, i32 0, i32 1
  %47 = load %struct.sig_list*, %struct.sig_list** %46, align 8
  store %struct.sig_list* %47, %struct.sig_list** %7, align 8
  br label %19

48:                                               ; preds = %19
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @handler, align 4
  %51 = call i64 @signal(i32 %49, i32 %50)
  %52 = load i32, i32* @STRM_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
