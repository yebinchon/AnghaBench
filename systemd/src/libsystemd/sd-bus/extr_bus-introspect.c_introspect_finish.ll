; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-introspect.c_introspect_finish.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-introspect.c_introspect_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.introspect = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"</node>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @introspect_finish(%struct.introspect* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.introspect*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.introspect* %0, %struct.introspect** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.introspect*, %struct.introspect** %4, align 8
  %8 = call i32 @assert(%struct.introspect* %7)
  %9 = load %struct.introspect*, %struct.introspect** %4, align 8
  %10 = getelementptr inbounds %struct.introspect, %struct.introspect* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.introspect*, %struct.introspect** %4, align 8
  %14 = getelementptr inbounds %struct.introspect, %struct.introspect* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fflush_and_check(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.introspect*, %struct.introspect** %4, align 8
  %23 = getelementptr inbounds %struct.introspect, %struct.introspect* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @safe_fclose(i32 %24)
  %26 = load %struct.introspect*, %struct.introspect** %4, align 8
  %27 = getelementptr inbounds %struct.introspect, %struct.introspect* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.introspect*, %struct.introspect** %4, align 8
  %29 = getelementptr inbounds %struct.introspect, %struct.introspect* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @TAKE_PTR(i32 %30)
  %32 = load i8**, i8*** %5, align 8
  store i8* %31, i8** %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %21, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @assert(%struct.introspect*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fflush_and_check(i32) #1

declare dso_local i32 @safe_fclose(i32) #1

declare dso_local i8* @TAKE_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
