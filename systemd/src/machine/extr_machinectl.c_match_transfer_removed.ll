; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_match_transfer_removed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_match_transfer_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"uos\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*)* @match_transfer_removed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_transfer_removed(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i8**
  store i8** %14, i8*** %8, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @assert(i8** %15)
  %17 = load i8**, i8*** %8, align 8
  %18 = call i32 @assert(i8** %17)
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @sd_bus_message_read(i8** %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11, i8** %9, i8** %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @bus_log_parse_error(i32 %24)
  store i32 0, i32* %4, align 4
  br label %43

26:                                               ; preds = %3
  %27 = load i8**, i8*** %8, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @streq_ptr(i8* %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %43

33:                                               ; preds = %26
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @sd_bus_message_get_bus(i8** %34)
  %36 = call i32 @sd_bus_get_event(i32 %35)
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @streq_ptr(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @sd_event_exit(i32 %36, i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %32, %23
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @sd_bus_message_read(i8**, i8*, i32*, i8**, i8**) #1

declare dso_local i32 @bus_log_parse_error(i32) #1

declare dso_local i32 @streq_ptr(i8*, i8*) #1

declare dso_local i32 @sd_event_exit(i32, i32) #1

declare dso_local i32 @sd_bus_get_event(i32) #1

declare dso_local i32 @sd_bus_message_get_bus(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
