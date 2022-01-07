; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-win32.c_add_all_to_iocp.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-win32.c_add_all_to_iocp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Failed to add cmd_pipe to iocp, error code %lu\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Failed to add dir handle to iocp, repo %s, error code %lu\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Done: add_all_to_iocp\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @add_all_to_iocp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_all_to_iocp(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @add_handle_to_iocp(%struct.TYPE_6__* %11, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = call i32 (...) @GetLastError()
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %49

26:                                               ; preds = %1
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @g_hash_table_iter_init(i32* %5, i32 %29)
  br label %31

31:                                               ; preds = %45, %40, %26
  %32 = call i64 @g_hash_table_iter_next(i32* %5, i32** %7, i32** %6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = ptrtoint i32* %36 to i32
  %38 = call i32 @add_handle_to_iocp(%struct.TYPE_6__* %35, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** %7, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %43)
  br label %31

45:                                               ; preds = %34
  br label %31

46:                                               ; preds = %31
  %47 = call i32 @seaf_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %20
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @add_handle_to_iocp(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @g_hash_table_iter_init(i32*, i32) #1

declare dso_local i64 @g_hash_table_iter_next(i32*, i32**, i32**) #1

declare dso_local i32 @seaf_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
