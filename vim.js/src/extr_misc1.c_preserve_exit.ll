; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_misc1.c_preserve_exit.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_misc1.c_preserve_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@TRUE = common dso_local global i32 0, align 4
@really_exiting = common dso_local global i32 0, align 4
@IObuff = common dso_local global i32 0, align 4
@firstbuf = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Vim: preserving files...\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Vim: Finished.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preserve_exit() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = call i32 (...) @prepare_to_exit()
  %3 = load i32, i32* @TRUE, align 4
  store i32 %3, i32* @really_exiting, align 4
  %4 = load i32, i32* @IObuff, align 4
  %5 = call i32 @out_str(i32 %4)
  %6 = call i32 (...) @screen_start()
  %7 = call i32 (...) @out_flush()
  %8 = call i32 (...) @ml_close_notmod()
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @firstbuf, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %1, align 8
  br label %10

10:                                               ; preds = %35, %0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = call i32 @OUT_STR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (...) @screen_start()
  %30 = call i32 (...) @out_flush()
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @ml_sync_all(i32 %31, i32 %32)
  br label %39

34:                                               ; preds = %19, %13
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %1, align 8
  br label %10

39:                                               ; preds = %27, %10
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @ml_close_all(i32 %40)
  %42 = call i32 @OUT_STR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @getout(i32 1)
  ret void
}

declare dso_local i32 @prepare_to_exit(...) #1

declare dso_local i32 @out_str(i32) #1

declare dso_local i32 @screen_start(...) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @ml_close_notmod(...) #1

declare dso_local i32 @OUT_STR(i8*) #1

declare dso_local i32 @ml_sync_all(i32, i32) #1

declare dso_local i32 @ml_close_all(i32) #1

declare dso_local i32 @getout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
