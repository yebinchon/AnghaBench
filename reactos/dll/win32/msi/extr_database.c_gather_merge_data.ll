; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_gather_merge_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_gather_merge_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.list*, i32*, i32* }

@gather_merge_data.query = internal constant [24 x i8] c"SELECT * FROM `_Tables`\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@merge_diff_tables = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.list*)* @gather_merge_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gather_merge_data(i32* %0, i32* %1, %struct.list* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.list*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.list* %2, %struct.list** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @MSI_DatabaseOpenViewW(i32* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @gather_merge_data.query, i64 0, i64 0), %struct.TYPE_6__** %8)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %4, align 8
  br label %32

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i32* %19, i32** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32* %21, i32** %22, align 8
  %23 = load %struct.list*, %struct.list** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.list* %23, %struct.list** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = load i32, i32* @merge_diff_tables, align 4
  %27 = call i64 @MSI_IterateRecords(%struct.TYPE_6__* %25, i32* null, i32 %26, %struct.TYPE_7__* %9)
  store i64 %27, i64* %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @msiobj_release(i32* %29)
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %18, %16
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i64 @MSI_DatabaseOpenViewW(i32*, i8*, %struct.TYPE_6__**) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_6__*, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
