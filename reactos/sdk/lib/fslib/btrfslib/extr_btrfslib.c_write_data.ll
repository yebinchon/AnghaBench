; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/btrfslib/extr_btrfslib.c_write_data.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/btrfslib/extr_btrfslib.c_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_8__*, i8*, i32)* @write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_data(i32 %0, i64 %1, %struct.TYPE_8__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 1
  %21 = bitcast %struct.TYPE_7__* %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %16, align 8
  store i64 0, i64* %13, align 8
  br label %22

22:                                               ; preds = %53, %5
  %23 = load i64, i64* %13, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %23, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @NtWriteFile(i32 %43, i32* null, i32* null, i32* null, i32* %14, i8* %44, i32 %45, %struct.TYPE_9__* %15, i32* null)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @NT_SUCCESS(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %58

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %13, align 8
  br label %22

56:                                               ; preds = %22
  %57 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @NtWriteFile(i32, i32*, i32*, i32*, i32*, i8*, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
