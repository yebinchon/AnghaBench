; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_join.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8* }

@SEM_INDEFINITE_WAIT = common dso_local global i32 0, align 4
@ERROR_INTERRUPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_join(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %13, %2
  %7 = call i32 (...) @vlc_testcancel()
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SEM_INDEFINITE_WAIT, align 4
  %12 = call i64 @vlc_WaitForSingleObject(i32 %10, i32 %11)
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %6
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ERROR_INTERRUPT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %6, label %17

17:                                               ; preds = %13
  %18 = load i8**, i8*** %4, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %4, align 8
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @DosCloseEventSem(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DosCloseEventSem(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @soclose(i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = call i32 @free(%struct.TYPE_4__* %38)
  ret void
}

declare dso_local i32 @vlc_testcancel(...) #1

declare dso_local i64 @vlc_WaitForSingleObject(i32, i32) #1

declare dso_local i32 @DosCloseEventSem(i32) #1

declare dso_local i32 @soclose(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
