; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_path_property.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_path_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"MakeDirectory\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"DirectoryMode\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PathExists\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PathExistsGlob\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"PathChanged\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"PathModified\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"DirectoryNotEmpty\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Paths\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"a(ss)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @bus_append_path_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_append_path_property(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @streq(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @bus_append_parse_boolean(i32* %13, i8* %14, i8* %15)
  store i32 %16, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @streq(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @bus_append_parse_mode(i32* %22, i8* %23, i8* %24)
  store i32 %25, i32* %4, align 4
  br label %50

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @STR_IN_SET(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @isempty(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 0)
  store i32 %36, i32* %8, align 4
  br label %42

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 1, i8* %39, i8* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @bus_log_create_error(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %50

49:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %45, %21, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @bus_append_parse_boolean(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_parse_mode(i32*, i8*, i8*) #1

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*, i8*, i32, ...) #1

declare dso_local i32 @bus_log_create_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
