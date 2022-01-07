; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_deserialize_and_dump_unit_file_changes.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_deserialize_and_dump_unit_file_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_BUS_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"(sss)\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Manager reported unknown change type \22%s\22 for path \22%s\22, ignoring.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_deserialize_and_dump_unit_file_changes(i32* %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i32**, i32*** %8, align 8
  %16 = bitcast i32** %15 to i64*
  %17 = call i32 @assert(i64* %16)
  %18 = load i64*, i64** %9, align 8
  %19 = call i32 @assert(i64* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @SD_BUS_TYPE_ARRAY, align 4
  %22 = call i32 @sd_bus_message_enter_container(i32* %20, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @bus_log_parse_error(i32 %26)
  store i32 %27, i32* %5, align 4
  br label %75

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %53, %38, %28
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @sd_bus_message_read(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %10, i8** %11, i8** %12)
  store i32 %31, i32* %13, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @unit_file_change_type_from_string(i8* %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @log_notice(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40)
  br label %29

42:                                               ; preds = %33
  %43 = load i32**, i32*** %8, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @unit_file_changes_add(i32** %43, i64* %44, i64 %45, i8* %46, i8* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %5, align 4
  br label %75

53:                                               ; preds = %42
  br label %29

54:                                               ; preds = %29
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @bus_log_parse_error(i32 %58)
  store i32 %59, i32* %5, align 4
  br label %75

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @sd_bus_message_exit_container(i32* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @bus_log_parse_error(i32 %66)
  store i32 %67, i32* %5, align 4
  br label %75

68:                                               ; preds = %60
  %69 = load i32**, i32*** %8, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @unit_file_dump_changes(i32 0, i32* null, i32* %70, i64 %72, i32 %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %68, %65, %57, %51, %25
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i32 @sd_bus_message_enter_container(i32*, i32, i8*) #1

declare dso_local i32 @bus_log_parse_error(i32) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**, i8**, i8**) #1

declare dso_local i64 @unit_file_change_type_from_string(i8*) #1

declare dso_local i32 @log_notice(i8*, i8*, i8*) #1

declare dso_local i32 @unit_file_changes_add(i32**, i64*, i64, i8*, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

declare dso_local i32 @unit_file_dump_changes(i32, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
