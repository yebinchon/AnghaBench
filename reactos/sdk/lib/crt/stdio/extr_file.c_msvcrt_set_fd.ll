; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_msvcrt_set_fd.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_msvcrt_set_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i32 }

@WX_OPEN = common dso_local global i32 0, align 4
@WX_DONTINHERIT = common dso_local global i32 0, align 4
@WX_APPEND = common dso_local global i32 0, align 4
@WX_TEXT = common dso_local global i32 0, align 4
@WX_PIPE = common dso_local global i32 0, align 4
@WX_TTY = common dso_local global i32 0, align 4
@EF_CRIT_INIT = common dso_local global i32 0, align 4
@__pioinfo = common dso_local global %struct.TYPE_4__** null, align 8
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @msvcrt_set_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msvcrt_set_fd(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @WX_OPEN, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @WX_DONTINHERIT, align 4
  %13 = load i32, i32* @WX_APPEND, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WX_TEXT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WX_PIPE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WX_TTY, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %11, %20
  %22 = or i32 %10, %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 10, i8* %28, align 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 10, i8* %32, align 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 10, i8* %36, align 1
  %37 = load i32, i32* @EF_CRIT_INIT, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__pioinfo, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = ptrtoint %struct.TYPE_4__* %42 to i64
  %47 = ptrtoint %struct.TYPE_4__* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 24
  switch i64 %49, label %62 [
    i64 0, label %50
    i64 1, label %54
    i64 2, label %58
  ]

50:                                               ; preds = %3
  %51 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @SetStdHandle(i32 %51, i32 %52)
  br label %62

54:                                               ; preds = %3
  %55 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @SetStdHandle(i32 %55, i32 %56)
  br label %62

58:                                               ; preds = %3
  %59 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @SetStdHandle(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %3, %58, %54, %50
  ret void
}

declare dso_local i32 @SetStdHandle(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
