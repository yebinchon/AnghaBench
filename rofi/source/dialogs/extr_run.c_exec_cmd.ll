; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_run.c_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_run.c_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [49 x i8] c"Failed to convert command to locale encoding: %s\00", align 1
@cache_dir = common dso_local global i32 0, align 4
@RUN_CACHE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @exec_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_cmd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %58

18:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @g_locale_from_utf8(i8* %19, i32 -1, i32* null, i32* %6, %struct.TYPE_7__** %5)
  store i8* %20, i8** %7, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @g_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = call i32 @g_error_free(%struct.TYPE_7__* %28)
  br label %58

30:                                               ; preds = %18
  %31 = load i32, i32* @cache_dir, align 4
  %32 = load i32, i32* @RUN_CACHE_FILE, align 4
  %33 = call i8* @g_build_filename(i32 %31, i32 %32, i32* null)
  store i8* %33, i8** %8, align 8
  %34 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 8, i1 false)
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %39
  %42 = phi %struct.TYPE_6__* [ %9, %39 ], [ null, %40 ]
  %43 = call i64 @helper_execute_command(i32* null, i8* %35, i32 %36, %struct.TYPE_6__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @history_set(i8* %46, i8* %47)
  br label %53

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @history_remove(i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @g_free(i8* %54)
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @g_free(i8* %56)
  br label %58

58:                                               ; preds = %53, %23, %17
  ret void
}

declare dso_local i8* @g_locale_from_utf8(i8*, i32, i32*, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @g_warning(i8*, i32) #1

declare dso_local i32 @g_error_free(%struct.TYPE_7__*) #1

declare dso_local i8* @g_build_filename(i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @helper_execute_command(i32*, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @history_set(i8*, i8*) #1

declare dso_local i32 @history_remove(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
