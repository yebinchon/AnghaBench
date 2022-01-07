; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_zio_handle_decrypt_injection.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_zio_handle_decrypt_injection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i64 }

@inject_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@inject_handlers = common dso_local global i32 0, align 4
@ZINJECT_DECRYPT_FAULT = common dso_local global i64 0, align 8
@ZI_NO_DVA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_handle_decrypt_injection(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @RW_READER, align 4
  %12 = call i32 @rw_enter(i32* @inject_lock, i32 %11)
  %13 = call %struct.TYPE_6__* @list_head(i32* @inject_handlers)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  br label %14

14:                                               ; preds = %43, %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %18, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ZINJECT_DECRYPT_FAULT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %17
  br label %43

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ZI_NO_DVA, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @zio_match_handler(i32* %32, i32 %33, i32 %34, %struct.TYPE_7__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %9, align 4
  br label %46

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = call %struct.TYPE_6__* @list_next(i32* @inject_handlers, %struct.TYPE_6__* %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %10, align 8
  br label %14

46:                                               ; preds = %40, %14
  %47 = call i32 @rw_exit(i32* @inject_lock)
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @list_head(i32*) #1

declare dso_local i64 @zio_match_handler(i32*, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_6__* @list_next(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
