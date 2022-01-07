; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_ssh.c_exec_ssh.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_ssh.c_exec_ssh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@cache_dir = common dso_local global i32 0, align 4
@SSH_CACHE_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s\1F%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @exec_ssh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_ssh(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %1
  br label %52

17:                                               ; preds = %9
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = call i32 @execshssh(%struct.TYPE_4__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %52

22:                                               ; preds = %17
  %23 = load i32, i32* @cache_dir, align 4
  %24 = load i32, i32* @SSH_CACHE_FILE, align 4
  %25 = call i8* @g_build_filename(i32 %23, i32 %24, i32* null)
  store i8* %25, i8** %3, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %33, i64 %36)
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @history_set(i8* %38, i8* %39)
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @g_free(i8* %41)
  br label %49

43:                                               ; preds = %22
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @history_set(i8* %44, i8* %47)
  br label %49

49:                                               ; preds = %43, %30
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @g_free(i8* %50)
  br label %52

52:                                               ; preds = %49, %21, %16
  ret void
}

declare dso_local i32 @execshssh(%struct.TYPE_4__*) #1

declare dso_local i8* @g_build_filename(i32, i32, i32*) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i64) #1

declare dso_local i32 @history_set(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
