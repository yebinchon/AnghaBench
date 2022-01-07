; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_version.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32 }
%struct.in_ev = type { i32 }

@COLOR_YELLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Telegram-cli version %s (uses tgl version %s)\0A\00", align 1
@TELEGRAM_CLI_VERSION = common dso_local global i32 0, align 4
@TGL_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"uses libopenssl for encryption\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_version(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %15 = icmp ne %struct.in_ev* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %18 = call i32 @mprint_start(%struct.in_ev* %17)
  br label %19

19:                                               ; preds = %16, %4
  %20 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %21 = load i32, i32* @COLOR_YELLOW, align 4
  %22 = call i32 @mpush_color(%struct.in_ev* %20, i32 %21)
  %23 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %24 = load i32, i32* @TELEGRAM_CLI_VERSION, align 4
  %25 = load i32, i32* @TGL_VERSION, align 4
  %26 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %28 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %30 = call i32 @mpop_color(%struct.in_ev* %29)
  %31 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %32 = icmp ne %struct.in_ev* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %35 = call i32 @mprint_end(%struct.in_ev* %34)
  br label %36

36:                                               ; preds = %33, %19
  %37 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %38 = icmp ne %struct.in_ev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @fflush(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, ...) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
