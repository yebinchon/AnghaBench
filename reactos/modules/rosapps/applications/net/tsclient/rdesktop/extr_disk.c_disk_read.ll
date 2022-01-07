; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_read.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@FILE_DIRECTORY_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32*, i32, i32, i32*)* @disk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_read(%struct.TYPE_5__* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @SEEK_SET, align 4
  %18 = call i32 @lseek(i64 %15, i32 %16, i32 %17)
  %19 = load i64, i64* %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @read(i64 %19, i32* %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %6
  %26 = load i32*, i32** %13, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @errno, align 4
  switch i32 %27, label %30 [
    i32 128, label %28
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %29, i32* %7, align 4
  br label %37

30:                                               ; preds = %25
  %31 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %32, i32* %7, align 4
  br label %37

33:                                               ; preds = %6
  %34 = load i32, i32* %14, align 4
  %35 = load i32*, i32** %13, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %30, %28
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @lseek(i64, i32, i32) #1

declare dso_local i32 @read(i64, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
