; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_write_tables.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_write_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_data = type { i64, i32, i32 }

@STGM_WRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to create stream 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to write stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.table_data*, i64)* @write_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tables(i32* %0, %struct.table_data* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.table_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.table_data* %1, %struct.table_data** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %61, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.table_data*, %struct.table_data** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.table_data, %struct.table_data* %17, i64 %18
  %20 = getelementptr inbounds %struct.table_data, %struct.table_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STGM_WRITE, align 4
  %23 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @IStorage_CreateStream(i32* %16, i32 %21, i32 %24, i32 0, i32 0, i32** %7)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %61

32:                                               ; preds = %15
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.table_data*, %struct.table_data** %5, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.table_data, %struct.table_data* %34, i64 %35
  %37 = getelementptr inbounds %struct.table_data, %struct.table_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.table_data*, %struct.table_data** %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.table_data, %struct.table_data* %39, i64 %40
  %42 = getelementptr inbounds %struct.table_data, %struct.table_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @IStream_Write(i32* %33, i32 %38, i64 %43, i64* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %32
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.table_data*, %struct.table_data** %5, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.table_data, %struct.table_data* %50, i64 %51
  %53 = getelementptr inbounds %struct.table_data, %struct.table_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %49, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48, %32
  %57 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %48
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @IStream_Release(i32* %59)
  br label %61

61:                                               ; preds = %58, %29
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %11

64:                                               ; preds = %11
  ret void
}

declare dso_local i32 @IStorage_CreateStream(i32*, i32, i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IStream_Write(i32*, i32, i64, i64*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
