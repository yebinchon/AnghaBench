; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_inout.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.vm_exit = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@GUEST_NIO_PORT = common dso_local global i32 0, align 4
@strictio = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unhandled %s%c 0x%04x at 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@vmexit = common dso_local global %struct.TYPE_6__* null, align 8
@VMEXIT_ABORT = common dso_local global i32 0, align 4
@VMEXIT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_exit*, i32*)* @vmexit_inout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_inout(%struct.vm_exit* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_exit*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vm_exit* %0, %struct.vm_exit** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %16 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %21 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %26 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %31 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %2
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @GUEST_NIO_PORT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %49 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @vmexit_handle_notify(%struct.vm_exit* %46, i32* %47, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %87

55:                                               ; preds = %41, %2
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %58 = load i32, i32* @strictio, align 4
  %59 = call i32 @emulate_inout(i32 %56, %struct.vm_exit* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %55
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %76

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 119, i32 108
  br label %76

76:                                               ; preds = %71, %70
  %77 = phi i32 [ 98, %70 ], [ %75, %71 ]
  %78 = trunc i32 %77 to i8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vmexit, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %67, i8 signext %78, i32 %79, i32 %82)
  %84 = load i32, i32* @VMEXIT_ABORT, align 4
  store i32 %84, i32* %3, align 4
  br label %87

85:                                               ; preds = %55
  %86 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %76, %45
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @vmexit_handle_notify(%struct.vm_exit*, i32*, i32) #1

declare dso_local i32 @emulate_inout(i32, %struct.vm_exit*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
