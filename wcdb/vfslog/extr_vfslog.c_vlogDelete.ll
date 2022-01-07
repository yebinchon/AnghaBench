; ModuleID = '/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogDelete.c'
source_filename = "/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i8*, i32)* }

@VLOG_OP_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @vlogDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlogDelete(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i64 (...) @vlog_time()
  store i64 %11, i64* %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_3__* @REALVFS(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_3__*, i8*, i32)*, i32 (%struct.TYPE_3__*, i8*, i32)** %14, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_3__* @REALVFS(i32* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 %15(%struct.TYPE_3__* %17, i8* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = call i64 (...) @vlog_time()
  %22 = load i64, i64* %8, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @vlogLogOpen(i8* %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* @VLOG_OP_DELETE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @vlogLogPrint(i32* %26, i64 %27, i64 %28, i32 %29, i32 %30, i32 -1, i32 0, i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @vlogLogClose(i32* %33)
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i64 @vlog_time(...) #1

declare dso_local %struct.TYPE_3__* @REALVFS(i32*) #1

declare dso_local i32* @vlogLogOpen(i8*) #1

declare dso_local i32 @vlogLogPrint(i32*, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vlogLogClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
