; ModuleID = '/home/carl/AnghaBench/streem/src/extr_io.c_write_cb.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_io.c_write_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.write_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iovec = type { i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@STRM_IO_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @write_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_cb(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.write_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.iovec], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.write_data*
  store %struct.write_data* %12, %struct.write_data** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @strm_to_str(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @strm_str_ptr(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @strm_str_len(i32 %20)
  %22 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 16
  %24 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 1
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 1
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 0
  store i32 1, i32* %27, align 16
  %28 = load %struct.write_data*, %struct.write_data** %6, align 8
  %29 = getelementptr inbounds %struct.write_data, %struct.write_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @fileno(i32 %30)
  %32 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %8, i64 0, i64 0
  %33 = call i64 @writev(i32 %31, %struct.iovec* %32, i32 2)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @STRM_NG, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @STRM_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @strm_to_str(i32) #1

declare dso_local i64 @strm_str_ptr(i32) #1

declare dso_local i32 @strm_str_len(i32) #1

declare dso_local i64 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @fileno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
