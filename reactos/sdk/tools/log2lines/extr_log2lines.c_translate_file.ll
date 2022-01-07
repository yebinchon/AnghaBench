; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_log2lines.c_translate_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_log2lines.c_translate_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@cache = common dso_local global i32 0, align 4
@INVALID_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"No, or invalid base address: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Not found in cache: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @translate_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_file(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @convert_path(i8* %13)
  store i8* %14, i8** %11, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load i8*, i8** %11, align 8
  %20 = call i64 @get_ImageBase(i8* %19, i64* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i8*, i8** %11, align 8
  %24 = call %struct.TYPE_3__* @entry_lookup(i32* @cache, i8* %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %9, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @INVALID_BASE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @l2l_dbg(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %38)
  store i32 2, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %27
  br label %44

41:                                               ; preds = %22
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @l2l_dbg(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 3, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %40
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @process_file(i8* %49, i64 %50, i8* %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i8* @convert_path(i8*) #1

declare dso_local i64 @get_ImageBase(i8*, i64*) #1

declare dso_local %struct.TYPE_3__* @entry_lookup(i32*, i8*) #1

declare dso_local i32 @l2l_dbg(i32, i8*, i8*) #1

declare dso_local i32 @process_file(i8*, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
