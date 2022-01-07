; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_subclass.c_ok_sequence.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_subclass.c_ok_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i64, i64, i32, i32 }

@ok_sequence.end_of_sequence = internal constant %struct.message zeroinitializer, align 8
@sequence = common dso_local global %struct.message* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"%s: the procnum %d was expected, but got procnum %d instead\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: in procnum %d expecting wParam 0x%lx got 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Received fewer messages than expected\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Received more messages than expected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.message*, i8*)* @ok_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ok_sequence(%struct.message* %0, i8* %1) #0 {
  %3 = alloca %struct.message*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.message*, align 8
  store %struct.message* %0, %struct.message** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @add_message(%struct.message* @ok_sequence.end_of_sequence)
  %7 = load %struct.message*, %struct.message** @sequence, align 8
  store %struct.message* %7, %struct.message** %5, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load %struct.message*, %struct.message** %3, align 8
  %10 = getelementptr inbounds %struct.message, %struct.message* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.message*, %struct.message** %5, align 8
  %15 = getelementptr inbounds %struct.message, %struct.message* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %60

20:                                               ; preds = %18
  %21 = load %struct.message*, %struct.message** %3, align 8
  %22 = getelementptr inbounds %struct.message, %struct.message* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.message*, %struct.message** %5, align 8
  %25 = getelementptr inbounds %struct.message, %struct.message* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  %28 = zext i1 %27 to i32
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.message*, %struct.message** %3, align 8
  %31 = getelementptr inbounds %struct.message, %struct.message* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.message*, %struct.message** %5, align 8
  %34 = getelementptr inbounds %struct.message, %struct.message* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %29, i64 %32, i64 %35)
  %37 = load %struct.message*, %struct.message** %3, align 8
  %38 = getelementptr inbounds %struct.message, %struct.message* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.message*, %struct.message** %5, align 8
  %41 = getelementptr inbounds %struct.message, %struct.message* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.message*, %struct.message** %3, align 8
  %47 = getelementptr inbounds %struct.message, %struct.message* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.message*, %struct.message** %3, align 8
  %50 = getelementptr inbounds %struct.message, %struct.message* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.message*, %struct.message** %5, align 8
  %53 = getelementptr inbounds %struct.message, %struct.message* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %45, i64 %48, i64 %51, i64 %54)
  %56 = load %struct.message*, %struct.message** %3, align 8
  %57 = getelementptr inbounds %struct.message, %struct.message* %56, i32 1
  store %struct.message* %57, %struct.message** %3, align 8
  %58 = load %struct.message*, %struct.message** %5, align 8
  %59 = getelementptr inbounds %struct.message, %struct.message* %58, i32 1
  store %struct.message* %59, %struct.message** %5, align 8
  br label %8

60:                                               ; preds = %18
  %61 = load %struct.message*, %struct.message** %3, align 8
  %62 = getelementptr inbounds %struct.message, %struct.message* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.message*, %struct.message** %5, align 8
  %69 = getelementptr inbounds %struct.message, %struct.message* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32 (...) @flush_sequence()
  ret void
}

declare dso_local i32 @add_message(%struct.message*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @flush_sequence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
