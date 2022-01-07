; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xrmoptions.c_config_parser_add_option.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xrmoptions.c_config_parser_add_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8** }

@extra_options = common dso_local global %struct.TYPE_6__* null, align 8
@num_extra_options = common dso_local global i32 0, align 4
@CONFIG_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_parser_add_option(i32 %0, i8* %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extra_options, align 8
  %10 = load i32, i32* @num_extra_options, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call %struct.TYPE_6__* @g_realloc(%struct.TYPE_6__* %9, i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** @extra_options, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extra_options, align 8
  %18 = load i32, i32* @num_extra_options, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extra_options, align 8
  %24 = load i32, i32* @num_extra_options, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i8* %22, i8** %27, align 8
  %28 = load i8**, i8*** %7, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extra_options, align 8
  %30 = load i32, i32* @num_extra_options, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i8** %28, i8*** %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extra_options, align 8
  %37 = load i32, i32* @num_extra_options, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i8* %35, i8** %40, align 8
  %41 = load i32, i32* @CONFIG_DEFAULT, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extra_options, align 8
  %43 = load i32, i32* @num_extra_options, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  store i32 %41, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %56 [
    i32 128, label %48
  ]

48:                                               ; preds = %4
  %49 = load i8**, i8*** %7, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extra_options, align 8
  %52 = load i32, i32* @num_extra_options, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  store i8* %50, i8** %55, align 8
  br label %62

56:                                               ; preds = %4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @extra_options, align 8
  %58 = load i32, i32* @num_extra_options, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i8* null, i8** %61, align 8
  br label %62

62:                                               ; preds = %56, %48
  %63 = load i32, i32* @num_extra_options, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @num_extra_options, align 4
  ret void
}

declare dso_local %struct.TYPE_6__* @g_realloc(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
