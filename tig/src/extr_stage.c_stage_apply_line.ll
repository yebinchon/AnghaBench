; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_apply_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_apply_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i32 }
%struct.line = type { i64 }
%struct.chunk_header = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@stage_line_type = common dso_local global i64 0, align 8
@LINE_STAT_STAGED = common dso_local global i64 0, align 8
@LINE_DIFF_DEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"@@ -%lu,%lu +%lu,%lu @@\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io*, %struct.line*, %struct.line*, %struct.line*, %struct.line*)* @stage_apply_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stage_apply_line(%struct.io* %0, %struct.line* %1, %struct.line* %2, %struct.line* %3, %struct.line* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.io*, align 8
  %8 = alloca %struct.line*, align 8
  %9 = alloca %struct.line*, align 8
  %10 = alloca %struct.line*, align 8
  %11 = alloca %struct.line*, align 8
  %12 = alloca %struct.chunk_header, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.io* %0, %struct.io** %7, align 8
  store %struct.line* %1, %struct.line** %8, align 8
  store %struct.line* %2, %struct.line** %9, align 8
  store %struct.line* %3, %struct.line** %10, align 8
  store %struct.line* %4, %struct.line** %11, align 8
  %15 = load i64, i64* @stage_line_type, align 8
  %16 = load i64, i64* @LINE_STAT_STAGED, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %13, align 4
  %19 = load %struct.line*, %struct.line** %10, align 8
  %20 = getelementptr inbounds %struct.line, %struct.line* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LINE_DIFF_DEL, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 -1, i32 1
  store i32 %25, i32* %14, align 4
  %26 = load %struct.line*, %struct.line** %9, align 8
  %27 = call i32 @box_text(%struct.line* %26)
  %28 = call i32 @parse_chunk_header(%struct.chunk_header* %12, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %86

31:                                               ; preds = %5
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %12, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %37, %39
  %41 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %12, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %52

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %12, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %12, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %43, %34
  %53 = load %struct.io*, %struct.io** %7, align 8
  %54 = load %struct.line*, %struct.line** %8, align 8
  %55 = load %struct.line*, %struct.line** %9, align 8
  %56 = call i64 @stage_diff_write(%struct.io* %53, %struct.line* %54, %struct.line* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %52
  %59 = load %struct.io*, %struct.io** %7, align 8
  %60 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %12, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %12, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %12, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %12, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @io_printf(%struct.io* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %62, i64 %65, i32 %68, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %58
  %75 = load %struct.io*, %struct.io** %7, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.line*, %struct.line** %9, align 8
  %78 = getelementptr inbounds %struct.line, %struct.line* %77, i64 1
  %79 = load %struct.line*, %struct.line** %10, align 8
  %80 = load %struct.line*, %struct.line** %11, align 8
  %81 = call i64 @stage_diff_single_write(%struct.io* %75, i32 %76, %struct.line* %78, %struct.line* %79, %struct.line* %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %74, %58, %52
  %84 = phi i1 [ false, %58 ], [ false, %52 ], [ %82, %74 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %83, %30
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @parse_chunk_header(%struct.chunk_header*, i32) #1

declare dso_local i32 @box_text(%struct.line*) #1

declare dso_local i64 @stage_diff_write(%struct.io*, %struct.line*, %struct.line*) #1

declare dso_local i64 @io_printf(%struct.io*, i8*, i32, i64, i32, i64) #1

declare dso_local i64 @stage_diff_single_write(%struct.io*, i32, %struct.line*, %struct.line*, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
