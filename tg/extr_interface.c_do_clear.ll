; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_clear.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.event_base* }
%struct.event_base = type { i32 }
%struct.command = type { i32 }
%struct.arg = type { i32 }
%struct.in_ev = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Do_clear\0A\00", align 1
@default_username = common dso_local global i32 0, align 4
@config_filename = common dso_local global i64 0, align 8
@auth_file_name = common dso_local global i64 0, align 8
@state_file_name = common dso_local global i64 0, align 8
@secret_chat_file_name = common dso_local global i64 0, align 8
@downloads_directory = common dso_local global i64 0, align 8
@binlog_file_name = common dso_local global i64 0, align 8
@lua_file = common dso_local global i64 0, align 8
@python_file = common dso_local global i64 0, align 8
@home_directory = common dso_local global i64 0, align 8
@term_ev = common dso_local global i32 0, align 4
@TLS = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Bytes left allocated: %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_clear(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  %9 = alloca %struct.event_base*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %10 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @default_username, align 4
  %12 = call i32 @free(i32 %11)
  %13 = load i64, i64* @config_filename, align 8
  %14 = call i32 @tfree_str(i64 %13)
  %15 = load i64, i64* @auth_file_name, align 8
  %16 = call i32 @tfree_str(i64 %15)
  %17 = load i64, i64* @state_file_name, align 8
  %18 = call i32 @tfree_str(i64 %17)
  %19 = load i64, i64* @secret_chat_file_name, align 8
  %20 = call i32 @tfree_str(i64 %19)
  %21 = load i64, i64* @downloads_directory, align 8
  %22 = call i32 @tfree_str(i64 %21)
  %23 = load i64, i64* @binlog_file_name, align 8
  %24 = call i32 @tfree_str(i64 %23)
  %25 = load i64, i64* @lua_file, align 8
  %26 = call i32 @tfree_str(i64 %25)
  %27 = load i64, i64* @python_file, align 8
  %28 = call i32 @tfree_str(i64 %27)
  %29 = load i64, i64* @home_directory, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i64, i64* @home_directory, align 8
  %33 = call i32 @tfree_str(i64 %32)
  br label %34

34:                                               ; preds = %31, %4
  %35 = call i32 (...) @clear_history()
  %36 = load i32, i32* @term_ev, align 4
  %37 = call i32 @event_free(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.event_base*, %struct.event_base** %39, align 8
  store %struct.event_base* %40, %struct.event_base** %9, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %42 = call i32 @tgl_free_all(%struct.TYPE_3__* %41)
  %43 = load %struct.event_base*, %struct.event_base** %9, align 8
  %44 = call i32 @event_base_free(%struct.event_base* %43)
  %45 = call i32 (...) @tgl_get_allocated_bytes()
  %46 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i32 @do_halt(i32 0)
  ret void
}

declare dso_local i32 @logprintf(i8*, ...) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @tfree_str(i64) #1

declare dso_local i32 @clear_history(...) #1

declare dso_local i32 @event_free(i32) #1

declare dso_local i32 @tgl_free_all(%struct.TYPE_3__*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @tgl_get_allocated_bytes(...) #1

declare dso_local i32 @do_halt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
