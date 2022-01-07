; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-context.c_client_context_acquire_default.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-context.c_client_context_acquire_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.ucred = type { i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Failed to acquire our own context, ignoring: %m\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to acquire PID1's context, ignoring: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_context_acquire_default(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_5__* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ucred, %struct.ucred* %4, i32 0, i32 0
  %13 = call i32 (...) @getpid_cached()
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ucred, %struct.ucred* %4, i32 0, i32 1
  %15 = call i32 (...) @getgid()
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ucred, %struct.ucred* %4, i32 0, i32 2
  %17 = call i32 (...) @getuid()
  store i32 %17, i32* %16, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = call i32 @client_context_acquire(%struct.TYPE_5__* %18, i32 %20, %struct.ucred* %4, i32* null, i32 0, i32* null, i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @log_warning_errno(i32 %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %11
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @client_context_acquire(%struct.TYPE_5__* %36, i32 1, %struct.ucred* null, i32* null, i32 0, i32* null, i32* %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @log_warning_errno(i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45, %30
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @getpid_cached(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @client_context_acquire(%struct.TYPE_5__*, i32, %struct.ucred*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
