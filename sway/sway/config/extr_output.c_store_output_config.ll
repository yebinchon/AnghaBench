; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_output.c_store_output_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_output.c_store_output_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.output_config** }
%struct.output_config = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@config = common dso_local global %struct.TYPE_5__* null, align 8
@output_name_cmp = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Merging on top of existing output config\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Adding non-wildcard output config\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Merging on top of output * config\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Adding output * config\00", align 1
@.str.5 = private unnamed_addr constant [125 x i8] c"Config stored for output %s (enabled: %d) (%dx%d@%fHz position %d,%d scale %f subpixel %s transform %d) (bg %s %s) (dpms %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.output_config* @store_output_config(%struct.output_config* %0) #0 {
  %2 = alloca %struct.output_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.output_config*, align 8
  %6 = alloca %struct.output_config*, align 8
  store %struct.output_config* %0, %struct.output_config** %2, align 8
  %7 = load %struct.output_config*, %struct.output_config** %2, align 8
  %8 = getelementptr inbounds %struct.output_config, %struct.output_config* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.output_config*, %struct.output_config** %2, align 8
  %17 = call i32 @merge_wildcard_on_all(%struct.output_config* %16)
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.output_config*, %struct.output_config** %2, align 8
  %20 = call i32 @merge_id_on_name(%struct.output_config* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* @output_name_cmp, align 4
  %26 = load %struct.output_config*, %struct.output_config** %2, align 8
  %27 = getelementptr inbounds %struct.output_config, %struct.output_config* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @list_seq_find(%struct.TYPE_4__* %24, i32 %25, i8* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %21
  %33 = load i32, i32* @SWAY_DEBUG, align 4
  %34 = call i32 (i32, i8*, ...) @sway_log(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.output_config**, %struct.output_config*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.output_config*, %struct.output_config** %39, i64 %41
  %43 = load %struct.output_config*, %struct.output_config** %42, align 8
  store %struct.output_config* %43, %struct.output_config** %5, align 8
  %44 = load %struct.output_config*, %struct.output_config** %5, align 8
  %45 = load %struct.output_config*, %struct.output_config** %2, align 8
  %46 = call i32 @merge_output_config(%struct.output_config* %44, %struct.output_config* %45)
  %47 = load %struct.output_config*, %struct.output_config** %2, align 8
  %48 = call i32 @free_output_config(%struct.output_config* %47)
  %49 = load %struct.output_config*, %struct.output_config** %5, align 8
  store %struct.output_config* %49, %struct.output_config** %2, align 8
  br label %102

50:                                               ; preds = %21
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @SWAY_DEBUG, align 4
  %55 = call i32 (i32, i8*, ...) @sway_log(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* @output_name_cmp, align 4
  %60 = call i32 @list_seq_find(%struct.TYPE_4__* %58, i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %53
  %64 = load i32, i32* @SWAY_DEBUG, align 4
  %65 = call i32 (i32, i8*, ...) @sway_log(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.output_config*, %struct.output_config** %2, align 8
  %67 = getelementptr inbounds %struct.output_config, %struct.output_config* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call %struct.output_config* @new_output_config(i8* %68)
  store %struct.output_config* %69, %struct.output_config** %6, align 8
  %70 = load %struct.output_config*, %struct.output_config** %6, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.output_config**, %struct.output_config*** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.output_config*, %struct.output_config** %75, i64 %77
  %79 = load %struct.output_config*, %struct.output_config** %78, align 8
  %80 = call i32 @merge_output_config(%struct.output_config* %70, %struct.output_config* %79)
  %81 = load %struct.output_config*, %struct.output_config** %6, align 8
  %82 = load %struct.output_config*, %struct.output_config** %2, align 8
  %83 = call i32 @merge_output_config(%struct.output_config* %81, %struct.output_config* %82)
  %84 = load %struct.output_config*, %struct.output_config** %2, align 8
  %85 = call i32 @free_output_config(%struct.output_config* %84)
  %86 = load %struct.output_config*, %struct.output_config** %6, align 8
  store %struct.output_config* %86, %struct.output_config** %2, align 8
  br label %87

87:                                               ; preds = %63, %53
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.output_config*, %struct.output_config** %2, align 8
  %92 = call i32 @list_add(%struct.TYPE_4__* %90, %struct.output_config* %91)
  br label %101

93:                                               ; preds = %50
  %94 = load i32, i32* @SWAY_DEBUG, align 4
  %95 = call i32 (i32, i8*, ...) @sway_log(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load %struct.output_config*, %struct.output_config** %2, align 8
  %100 = call i32 @list_add(%struct.TYPE_4__* %98, %struct.output_config* %99)
  br label %101

101:                                              ; preds = %93, %87
  br label %102

102:                                              ; preds = %101, %32
  %103 = load i32, i32* @SWAY_DEBUG, align 4
  %104 = load %struct.output_config*, %struct.output_config** %2, align 8
  %105 = getelementptr inbounds %struct.output_config, %struct.output_config* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.output_config*, %struct.output_config** %2, align 8
  %108 = getelementptr inbounds %struct.output_config, %struct.output_config* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.output_config*, %struct.output_config** %2, align 8
  %111 = getelementptr inbounds %struct.output_config, %struct.output_config* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.output_config*, %struct.output_config** %2, align 8
  %114 = getelementptr inbounds %struct.output_config, %struct.output_config* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.output_config*, %struct.output_config** %2, align 8
  %117 = getelementptr inbounds %struct.output_config, %struct.output_config* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.output_config*, %struct.output_config** %2, align 8
  %120 = getelementptr inbounds %struct.output_config, %struct.output_config* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.output_config*, %struct.output_config** %2, align 8
  %123 = getelementptr inbounds %struct.output_config, %struct.output_config* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.output_config*, %struct.output_config** %2, align 8
  %126 = getelementptr inbounds %struct.output_config, %struct.output_config* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.output_config*, %struct.output_config** %2, align 8
  %129 = getelementptr inbounds %struct.output_config, %struct.output_config* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sway_wl_output_subpixel_to_string(i32 %130)
  %132 = load %struct.output_config*, %struct.output_config** %2, align 8
  %133 = getelementptr inbounds %struct.output_config, %struct.output_config* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.output_config*, %struct.output_config** %2, align 8
  %136 = getelementptr inbounds %struct.output_config, %struct.output_config* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.output_config*, %struct.output_config** %2, align 8
  %139 = getelementptr inbounds %struct.output_config, %struct.output_config* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.output_config*, %struct.output_config** %2, align 8
  %142 = getelementptr inbounds %struct.output_config, %struct.output_config* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @sway_log(i32 %103, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.5, i64 0, i64 0), i8* %106, i32 %109, i32 %112, i32 %115, i32 %118, i32 %121, i32 %124, i32 %127, i32 %131, i32 %134, i32 %137, i32 %140, i32 %143)
  %145 = load %struct.output_config*, %struct.output_config** %2, align 8
  ret %struct.output_config* %145
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @merge_wildcard_on_all(%struct.output_config*) #1

declare dso_local i32 @merge_id_on_name(%struct.output_config*) #1

declare dso_local i32 @list_seq_find(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @merge_output_config(%struct.output_config*, %struct.output_config*) #1

declare dso_local i32 @free_output_config(%struct.output_config*) #1

declare dso_local %struct.output_config* @new_output_config(i8*) #1

declare dso_local i32 @list_add(%struct.TYPE_4__*, %struct.output_config*) #1

declare dso_local i32 @sway_wl_output_subpixel_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
