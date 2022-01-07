; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_automount_property.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_automount_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Where\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"DirectoryMode\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"TimeoutIdleSec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @bus_append_automount_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_append_automount_property(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i64 @streq(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @bus_append_string(i32* %12, i8* %13, i8* %14)
  store i32 %15, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @streq(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @bus_append_parse_mode(i32* %21, i8* %22, i8* %23)
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @streq(i8* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @bus_append_parse_sec_rename(i32* %30, i8* %31, i8* %32)
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %29, %20, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @bus_append_string(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_parse_mode(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_parse_sec_rename(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
