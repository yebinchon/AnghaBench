; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_seat.c_store_seat_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_seat.c_store_seat_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.seat_config** }
%struct.seat_config = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@config = common dso_local global %struct.TYPE_5__* null, align 8
@seat_name_cmp = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Merging on top of existing seat config\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Adding non-wildcard seat config\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Merging on top of seat * config\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Adding seat * config\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Config stored for seat %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.seat_config* @store_seat_config(%struct.seat_config* %0) #0 {
  %2 = alloca %struct.seat_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.seat_config*, align 8
  %6 = alloca %struct.seat_config*, align 8
  store %struct.seat_config* %0, %struct.seat_config** %2, align 8
  %7 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %8 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %17 = call i32 @merge_wildcard_on_all(%struct.seat_config* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* @seat_name_cmp, align 4
  %23 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %24 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @list_seq_find(%struct.TYPE_4__* %21, i32 %22, i8* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %18
  %30 = load i32, i32* @SWAY_DEBUG, align 4
  %31 = call i32 (i32, i8*, ...) @sway_log(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.seat_config**, %struct.seat_config*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.seat_config*, %struct.seat_config** %36, i64 %38
  %40 = load %struct.seat_config*, %struct.seat_config** %39, align 8
  store %struct.seat_config* %40, %struct.seat_config** %5, align 8
  %41 = load %struct.seat_config*, %struct.seat_config** %5, align 8
  %42 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %43 = call i32 @merge_seat_config(%struct.seat_config* %41, %struct.seat_config* %42)
  %44 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %45 = call i32 @free_seat_config(%struct.seat_config* %44)
  %46 = load %struct.seat_config*, %struct.seat_config** %5, align 8
  store %struct.seat_config* %46, %struct.seat_config** %2, align 8
  br label %99

47:                                               ; preds = %18
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %90, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @SWAY_DEBUG, align 4
  %52 = call i32 (i32, i8*, ...) @sway_log(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* @seat_name_cmp, align 4
  %57 = call i32 @list_seq_find(%struct.TYPE_4__* %55, i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %50
  %61 = load i32, i32* @SWAY_DEBUG, align 4
  %62 = call i32 (i32, i8*, ...) @sway_log(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %64 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call %struct.seat_config* @new_seat_config(i8* %65)
  store %struct.seat_config* %66, %struct.seat_config** %6, align 8
  %67 = load %struct.seat_config*, %struct.seat_config** %6, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.seat_config**, %struct.seat_config*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.seat_config*, %struct.seat_config** %72, i64 %74
  %76 = load %struct.seat_config*, %struct.seat_config** %75, align 8
  %77 = call i32 @merge_seat_config(%struct.seat_config* %67, %struct.seat_config* %76)
  %78 = load %struct.seat_config*, %struct.seat_config** %6, align 8
  %79 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %80 = call i32 @merge_seat_config(%struct.seat_config* %78, %struct.seat_config* %79)
  %81 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %82 = call i32 @free_seat_config(%struct.seat_config* %81)
  %83 = load %struct.seat_config*, %struct.seat_config** %6, align 8
  store %struct.seat_config* %83, %struct.seat_config** %2, align 8
  br label %84

84:                                               ; preds = %60, %50
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %89 = call i32 @list_add(%struct.TYPE_4__* %87, %struct.seat_config* %88)
  br label %98

90:                                               ; preds = %47
  %91 = load i32, i32* @SWAY_DEBUG, align 4
  %92 = call i32 (i32, i8*, ...) @sway_log(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %97 = call i32 @list_add(%struct.TYPE_4__* %95, %struct.seat_config* %96)
  br label %98

98:                                               ; preds = %90, %84
  br label %99

99:                                               ; preds = %98, %29
  %100 = load i32, i32* @SWAY_DEBUG, align 4
  %101 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %102 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32, i8*, ...) @sway_log(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %103)
  %105 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  ret %struct.seat_config* %105
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @merge_wildcard_on_all(%struct.seat_config*) #1

declare dso_local i32 @list_seq_find(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @merge_seat_config(%struct.seat_config*, %struct.seat_config*) #1

declare dso_local i32 @free_seat_config(%struct.seat_config*) #1

declare dso_local %struct.seat_config* @new_seat_config(i8*) #1

declare dso_local i32 @list_add(%struct.TYPE_4__*, %struct.seat_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
