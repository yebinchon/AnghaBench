; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_load_keys_cb.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_load_keys_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @load_keys_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_keys_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @sqlite3_column_text(i32* %10, i32 0)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @sqlite3_column_text(i32* %13, i32 1)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %7, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @hex_to_rawdata(i8* %21, i32 %24, i32 16)
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @hex_to_rawdata(i8* %26, i32 %29, i32 16)
  br label %48

31:                                               ; preds = %2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hex_to_rawdata(i8* %37, i32 %40, i32 32)
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hex_to_rawdata(i8* %42, i32 %45, i32 16)
  br label %47

47:                                               ; preds = %36, %31
  br label %48

48:                                               ; preds = %47, %20
  %49 = load i32, i32* @FALSE, align 4
  ret i32 %49
}

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @hex_to_rawdata(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
