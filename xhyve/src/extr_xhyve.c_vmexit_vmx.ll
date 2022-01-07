; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_vmx.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_exit = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vm exit[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09reason\09\09VMX\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\09rip\09\090x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09inst_length\09%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\09status\09\09%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\09exit_reason\09%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\09qualification\090x%016llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\09inst_type\09\09%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\09inst_error\09\09%d\0A\00", align 1
@VMEXIT_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_exit*, i32*)* @vmexit_vmx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_vmx(%struct.vm_exit* %0, i32* %1) #0 {
  %3 = alloca %struct.vm_exit*, align 8
  %4 = alloca i32*, align 8
  store %struct.vm_exit* %0, %struct.vm_exit** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.vm_exit*, %struct.vm_exit** %3, align 8
  %13 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @stderr, align 4
  %17 = load %struct.vm_exit*, %struct.vm_exit** %3, align 8
  %18 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.vm_exit*, %struct.vm_exit** %3, align 8
  %23 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.vm_exit*, %struct.vm_exit** %3, align 8
  %30 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @stderr, align 4
  %36 = load %struct.vm_exit*, %struct.vm_exit** %3, align 8
  %37 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = load %struct.vm_exit*, %struct.vm_exit** %3, align 8
  %44 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @stderr, align 4
  %50 = load %struct.vm_exit*, %struct.vm_exit** %3, align 8
  %51 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @VMEXIT_ABORT, align 4
  ret i32 %56
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
