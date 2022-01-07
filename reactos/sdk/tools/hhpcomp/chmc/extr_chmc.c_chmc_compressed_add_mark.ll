; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_compressed_add_mark.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_compressed_add_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcFile = type { %struct.chmcSection** }
%struct.chmcSection = type { i32, i32 }
%struct.chmcResetTableMark = type { i32, i32 }

@_CHMC_RSTTBL_MARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"[%d] at: %jd\0A\00", align 1
@CHMC_NOERR = common dso_local global i32 0, align 4
@CHMC_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chmc_compressed_add_mark(%struct.chmcFile* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chmcFile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.chmcSection*, align 8
  %7 = alloca %struct.chmcResetTableMark*, align 8
  store %struct.chmcFile* %0, %struct.chmcFile** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %9 = call i32 @assert(%struct.chmcFile* %8)
  %10 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %11 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %10, i32 0, i32 0
  %12 = load %struct.chmcSection**, %struct.chmcSection*** %11, align 8
  %13 = getelementptr inbounds %struct.chmcSection*, %struct.chmcSection** %12, i64 1
  %14 = load %struct.chmcSection*, %struct.chmcSection** %13, align 8
  store %struct.chmcSection* %14, %struct.chmcSection** %6, align 8
  %15 = load i32, i32* @_CHMC_RSTTBL_MARK, align 4
  %16 = call %struct.chmcResetTableMark* @malloc(i32 %15)
  store %struct.chmcResetTableMark* %16, %struct.chmcResetTableMark** %7, align 8
  %17 = load %struct.chmcResetTableMark*, %struct.chmcResetTableMark** %7, align 8
  %18 = icmp ne %struct.chmcResetTableMark* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.chmcResetTableMark*, %struct.chmcResetTableMark** %7, align 8
  %22 = getelementptr inbounds %struct.chmcResetTableMark, %struct.chmcResetTableMark* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %24 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @chmc_dump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.chmcResetTableMark*, %struct.chmcResetTableMark** %7, align 8
  %29 = getelementptr inbounds %struct.chmcResetTableMark, %struct.chmcResetTableMark* %28, i32 0, i32 0
  %30 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %31 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %30, i32 0, i32 1
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %34 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @CHMC_NOERR, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @CHMC_ENOMEM, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @assert(%struct.chmcFile*) #1

declare dso_local %struct.chmcResetTableMark* @malloc(i32) #1

declare dso_local i32 @chmc_dump(i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
