; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_status_printf.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_status_printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ANSI_HIGHLIGHT = common dso_local global i32 0, align 4
@ANSI_NORMAL = common dso_local global i32 0, align 4
@DISABLE_WARNING_FORMAT_NONLITERAL = common dso_local global i32 0, align 4
@STATUS_TYPE_NORMAL = common dso_local global i32 0, align 4
@REENABLE_WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unit_status_printf(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = call i8* @unit_status_string(%struct.TYPE_4__* %8)
  store i8* %9, i8** %7, align 8
  %10 = call i64 (...) @log_get_show_color()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* @ANSI_HIGHLIGHT, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @ANSI_NORMAL, align 4
  %16 = call i8* @strjoina(i32 %13, i8* %14, i32 %15)
  store i8* %16, i8** %7, align 8
  br label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @DISABLE_WARNING_FORMAT_NONLITERAL, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STATUS_TYPE_NORMAL, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @manager_status_printf(i32 %21, i32 %22, i8* %23, i8* %24, i8* %25)
  %27 = load i32, i32* @REENABLE_WARNING, align 4
  ret void
}

declare dso_local i8* @unit_status_string(%struct.TYPE_4__*) #1

declare dso_local i64 @log_get_show_color(...) #1

declare dso_local i8* @strjoina(i32, i8*, i32) #1

declare dso_local i32 @manager_status_printf(i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
