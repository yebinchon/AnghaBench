; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rar.c_rar_restart_solid.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rar.c_rar_restart_solid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Restarting decompression for solid entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @rar_restart_solid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_restart_solid(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = bitcast %struct.TYPE_10__* %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = call i32 @log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @ar_parse_entry_at(%struct.TYPE_10__* %15, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @ar_parse_entry_at(%struct.TYPE_10__* %22, i64 %23)
  store i32 0, i32* %2, align 4
  br label %71

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %66, %25
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %54, %32
  %40 = load i64, i64* %6, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @smin(i64 %43, i32 1024)
  store i64 %44, i64* %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @ar_entry_uncompress(%struct.TYPE_10__* %45, i8* %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @ar_parse_entry_at(%struct.TYPE_10__* %51, i64 %52)
  store i32 0, i32* %2, align 4
  br label %71

54:                                               ; preds = %42
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %6, align 8
  br label %39

58:                                               ; preds = %39
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = call i32 @ar_parse_entry(%struct.TYPE_10__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @ar_parse_entry_at(%struct.TYPE_10__* %63, i64 %64)
  store i32 0, i32* %2, align 4
  br label %71

66:                                               ; preds = %58
  br label %26

67:                                               ; preds = %26
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %62, %50, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @log(i8*) #1

declare dso_local i32 @ar_parse_entry_at(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @smin(i64, i32) #1

declare dso_local i32 @ar_entry_uncompress(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @ar_parse_entry(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
