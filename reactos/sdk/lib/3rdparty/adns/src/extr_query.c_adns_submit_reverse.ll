; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_query.c_adns_submit_reverse.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_query.c_adns_submit_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@adns_r_ptr = common dso_local global i64 0, align 8
@adns_r_ptr_raw = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"in-addr.arpa\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adns_submit_reverse(i32 %0, %struct.sockaddr* %1, i64 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @adns_r_ptr, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @adns_r_ptr_raw, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %7, align 4
  br label %31

23:                                               ; preds = %17, %6
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @adns_submit_reverse_any(i32 %24, %struct.sockaddr* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %27, i8* %28, i32* %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %23, %21
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @adns_submit_reverse_any(i32, %struct.sockaddr*, i8*, i64, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
