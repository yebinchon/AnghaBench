; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_property_get_inhibited.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_property_get_inhibited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"BlockInhibited\00", align 1
@INHIBIT_BLOCK = common dso_local global i32 0, align 4
@INHIBIT_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @property_get_inhibited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_inhibited(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %15, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @assert(i32* %19)
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @assert(i32* %21)
  %23 = load i32*, i32** %15, align 8
  %24 = call i32 @assert(i32* %23)
  %25 = load i32*, i32** %15, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i64 @streq(i8* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @INHIBIT_BLOCK, align 4
  br label %33

31:                                               ; preds = %7
  %32 = load i32, i32* @INHIBIT_DELAY, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32 @manager_inhibit_what(i32* %25, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @inhibit_what_to_string(i32 %37)
  %39 = call i32 @sd_bus_message_append(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  ret i32 %39
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @manager_inhibit_what(i32*, i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i32) #1

declare dso_local i32 @inhibit_what_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
