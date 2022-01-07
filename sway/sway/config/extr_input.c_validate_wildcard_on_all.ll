; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_input.c_validate_wildcard_on_all.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_input.c_validate_wildcard_on_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.input_config** }
%struct.input_config = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.input_config** }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Validating xkb merge of * on %s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Validating xkb merge of * config on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_config*, i8**)* @validate_wildcard_on_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_wildcard_on_all(%struct.input_config* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_config*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_config*, align 8
  store %struct.input_config* %0, %struct.input_config** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %50, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %10
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.input_config**, %struct.input_config*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.input_config*, %struct.input_config** %23, i64 %25
  %27 = load %struct.input_config*, %struct.input_config** %26, align 8
  store %struct.input_config* %27, %struct.input_config** %7, align 8
  %28 = load %struct.input_config*, %struct.input_config** %4, align 8
  %29 = getelementptr inbounds %struct.input_config, %struct.input_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.input_config*, %struct.input_config** %7, align 8
  %32 = getelementptr inbounds %struct.input_config, %struct.input_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strcmp(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %18
  %37 = load i32, i32* @SWAY_DEBUG, align 4
  %38 = load %struct.input_config*, %struct.input_config** %7, align 8
  %39 = getelementptr inbounds %struct.input_config, %struct.input_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sway_log(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.input_config*, %struct.input_config** %7, align 8
  %43 = load %struct.input_config*, %struct.input_config** %4, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = call i32 @validate_xkb_merge(%struct.input_config* %42, %struct.input_config* %43, i8** %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %88

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %18
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %10

53:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %84, %53
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %55, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.input_config**, %struct.input_config*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.input_config*, %struct.input_config** %67, i64 %69
  %71 = load %struct.input_config*, %struct.input_config** %70, align 8
  store %struct.input_config* %71, %struct.input_config** %9, align 8
  %72 = load i32, i32* @SWAY_DEBUG, align 4
  %73 = load %struct.input_config*, %struct.input_config** %9, align 8
  %74 = getelementptr inbounds %struct.input_config, %struct.input_config* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sway_log(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.input_config*, %struct.input_config** %9, align 8
  %78 = load %struct.input_config*, %struct.input_config** %4, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = call i32 @validate_xkb_merge(%struct.input_config* %77, %struct.input_config* %78, i8** %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %88

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %54

87:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %82, %47
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @validate_xkb_merge(%struct.input_config*, %struct.input_config*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
