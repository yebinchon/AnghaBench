; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xrmoptions.c___config_parse_xresource_options_dynamic.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xrmoptions.c___config_parse_xresource_options_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"rofi\00", align 1
@num_extra_options = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@extra_options = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @__config_parse_xresource_options_dynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__config_parse_xresource_options_dynamic(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @num_extra_options, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @extra_options, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 %20)
  store i8* %21, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @xcb_xrm_resource_get_string(i32* %22, i8* %23, i32* null, i8** %8)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @extra_options, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @config_parser_set(%struct.TYPE_3__* %30, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %26, %13
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @free(i8* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @g_free(i8* %41)
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %9

46:                                               ; preds = %9
  ret void
}

declare dso_local i8* @g_strdup_printf(i8*, i8*, i32) #1

declare dso_local i64 @xcb_xrm_resource_get_string(i32*, i8*, i32*, i8**) #1

declare dso_local i32 @config_parser_set(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
