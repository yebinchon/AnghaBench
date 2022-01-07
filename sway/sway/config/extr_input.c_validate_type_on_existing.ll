; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_input.c_validate_type_on_existing.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_input.c_validate_type_on_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.input_config** }
%struct.input_config = type { i64, i32* }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Validating merge of %s on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_config*, i8**)* @validate_type_on_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_type_on_existing(%struct.input_config* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_config*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_config*, align 8
  store %struct.input_config* %0, %struct.input_config** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.input_config**, %struct.input_config*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.input_config*, %struct.input_config** %21, i64 %23
  %25 = load %struct.input_config*, %struct.input_config** %24, align 8
  store %struct.input_config* %25, %struct.input_config** %7, align 8
  %26 = load %struct.input_config*, %struct.input_config** %7, align 8
  %27 = getelementptr inbounds %struct.input_config, %struct.input_config* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %58

31:                                               ; preds = %16
  %32 = load %struct.input_config*, %struct.input_config** %7, align 8
  %33 = getelementptr inbounds %struct.input_config, %struct.input_config* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.input_config*, %struct.input_config** %4, align 8
  %36 = getelementptr inbounds %struct.input_config, %struct.input_config* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 5
  %39 = call i64 @strcmp(i32* %34, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %31
  %42 = load i32, i32* @SWAY_DEBUG, align 4
  %43 = load %struct.input_config*, %struct.input_config** %4, align 8
  %44 = getelementptr inbounds %struct.input_config, %struct.input_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.input_config*, %struct.input_config** %7, align 8
  %47 = getelementptr inbounds %struct.input_config, %struct.input_config* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @sway_log(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %48)
  %50 = load %struct.input_config*, %struct.input_config** %7, align 8
  %51 = load %struct.input_config*, %struct.input_config** %4, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = call i32 @validate_xkb_merge(%struct.input_config* %50, %struct.input_config* %51, i8** %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %62

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %31
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %8

61:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @strcmp(i32*, i64) #1

declare dso_local i32 @sway_log(i32, i8*, i64, i64) #1

declare dso_local i32 @validate_xkb_merge(%struct.input_config*, %struct.input_config*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
