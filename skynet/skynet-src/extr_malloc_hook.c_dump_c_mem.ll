; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_malloc_hook.c_dump_c_mem.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_malloc_hook.c_dump_c_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_data = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"dump all service mem:\00", align 1
@SLOT_SIZE = common dso_local global i32 0, align 4
@mem_stats = common dso_local global %struct.mem_data* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c":%08x -> %zdkb %db\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"+total: %zdkb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_c_mem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.mem_data*, align 8
  store i64 0, i64* %2, align 8
  %4 = call i32 (i32*, i8*, ...) @skynet_error(i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %43, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @SLOT_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %5
  %10 = load %struct.mem_data*, %struct.mem_data** @mem_stats, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %10, i64 %12
  store %struct.mem_data* %13, %struct.mem_data** %3, align 8
  %14 = load %struct.mem_data*, %struct.mem_data** %3, align 8
  %15 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %9
  %19 = load %struct.mem_data*, %struct.mem_data** %3, align 8
  %20 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.mem_data*, %struct.mem_data** %3, align 8
  %25 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %2, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %2, align 8
  %29 = load %struct.mem_data*, %struct.mem_data** %3, align 8
  %30 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mem_data*, %struct.mem_data** %3, align 8
  %33 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = lshr i64 %34, 10
  %36 = load %struct.mem_data*, %struct.mem_data** %3, align 8
  %37 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = urem i64 %38, 1024
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i32*, i8*, ...) @skynet_error(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %31, i64 %35, i32 %40)
  br label %42

42:                                               ; preds = %23, %18, %9
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %5

46:                                               ; preds = %5
  %47 = load i64, i64* %2, align 8
  %48 = lshr i64 %47, 10
  %49 = call i32 (i32*, i8*, ...) @skynet_error(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  ret void
}

declare dso_local i32 @skynet_error(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
