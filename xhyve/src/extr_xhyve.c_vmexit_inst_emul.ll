; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_inst_emul.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_inst_emul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.vm_exit = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.vie }
%struct.vie = type { i32, i32* }

@stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ESRCH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unhandled memory access to 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to emulate instruction [\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02x%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"] at 0x%llx\0A\00", align 1
@VMEXIT_ABORT = common dso_local global i32 0, align 4
@VMEXIT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_exit*, i32*)* @vmexit_inst_emul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_inst_emul(%struct.vm_exit* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_exit*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vie*, align 8
  store %struct.vm_exit* %0, %struct.vm_exit** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stats, i32 0, i32 0), align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stats, i32 0, i32 0), align 4
  %11 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %12 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store %struct.vie* %14, %struct.vie** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %18 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vie*, %struct.vie** %8, align 8
  %23 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %24 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @emulate_mem(i32 %16, i32 %21, %struct.vie* %22, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ESRCH, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %37 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %34, %30
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %69, %42
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.vie*, %struct.vie** %8, align 8
  %48 = getelementptr inbounds %struct.vie, %struct.vie* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load i32, i32* @stderr, align 4
  %53 = load %struct.vie*, %struct.vie** %8, align 8
  %54 = getelementptr inbounds %struct.vie, %struct.vie* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.vie*, %struct.vie** %8, align 8
  %62 = getelementptr inbounds %struct.vie, %struct.vie* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = icmp ne i32 %60, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %59, i8* %67)
  br label %69

69:                                               ; preds = %51
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %45

72:                                               ; preds = %45
  %73 = load i32, i32* @stderr, align 4
  %74 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %75 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @VMEXIT_ABORT, align 4
  store i32 %78, i32* %3, align 4
  br label %81

79:                                               ; preds = %2
  %80 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %72
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @emulate_mem(i32, i32, %struct.vie*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
