; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_ssl.c_ssl_write.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_ssl.c_ssl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RETRY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_write(%struct.TYPE_3__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @SSL_write(i32 %13, i8* %14, i64 %15)
  store i32 %16, i32* %10, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @SSL_get_error(i32 %21, i32 %22)
  switch i32 %23, label %28 [
    i32 129, label %24
    i32 128, label %26
  ]

24:                                               ; preds = %18
  %25 = load i32, i32* @RETRY, align 4
  store i32 %25, i32* %5, align 4
  br label %35

26:                                               ; preds = %18
  %27 = load i32, i32* @RETRY, align 4
  store i32 %27, i32* %5, align 4
  br label %35

28:                                               ; preds = %18
  %29 = load i32, i32* @ERROR, align 4
  store i32 %29, i32* %5, align 4
  br label %35

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @OK, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %28, %26, %24
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @SSL_write(i32, i8*, i64) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
