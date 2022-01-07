; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/lib/vfdlib/extr_vfdfat.c_SelectDosBpb.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/lib/vfdlib/extr_vfdfat.c_SelectDosBpb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

@SelectDosBpb.bpb_tbl = internal constant [12 x %struct.TYPE_3__] [%struct.TYPE_3__ { i32 128, i32 2, i32 1, i32 2, i32 112, i32 320, i32 254, i32 1, i32 8, i64 1, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 2, i32 1, i32 2, i32 112, i32 360, i32 252, i32 1, i32 9, i64 1, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 2, i32 1, i32 2, i32 112, i32 640, i32 255, i32 1, i32 8, i64 2, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 2, i32 1, i32 2, i32 112, i32 720, i32 253, i32 2, i32 9, i64 2, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 2, i32 1, i32 2, i32 112, i32 1280, i32 251, i32 2, i32 8, i64 2, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 2, i32 1, i32 2, i32 112, i32 1440, i32 249, i32 3, i32 9, i64 2, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 2, i32 1, i32 2, i32 112, i32 1640, i32 249, i32 3, i32 10, i64 2, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 1, i32 1, i32 2, i32 224, i32 2400, i32 249, i32 7, i32 15, i64 2, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 1, i32 1, i32 2, i32 224, i32 2880, i32 240, i32 9, i32 18, i64 2, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 1, i32 1, i32 2, i32 224, i32 3360, i32 240, i32 10, i32 21, i64 2, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 1, i32 1, i32 2, i32 224, i32 3444, i32 240, i32 10, i32 21, i64 2, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 128, i32 2, i32 1, i32 2, i32 240, i32 5760, i32 240, i32 9, i32 36, i64 2, i32 0, i32 0, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i64)* @SelectDosBpb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @SelectDosBpb(i64 %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 12
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [12 x %struct.TYPE_3__], [12 x %struct.TYPE_3__]* @SelectDosBpb.bpb_tbl, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %10, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [12 x %struct.TYPE_3__], [12 x %struct.TYPE_3__]* @SelectDosBpb.bpb_tbl, i64 0, i64 %19
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %2, align 8
  br label %26

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %5

25:                                               ; preds = %5
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
