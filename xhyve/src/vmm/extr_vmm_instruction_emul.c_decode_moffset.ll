; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_moffset.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_moffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.anon = type { i64 }

@VIE_OP_F_MOFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid moffset bytes: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vie*)* @decode_moffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_moffset(%struct.vie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %union.anon, align 8
  store %struct.vie* %0, %struct.vie** %3, align 8
  %8 = load %struct.vie*, %struct.vie** %3, align 8
  %9 = getelementptr inbounds %struct.vie, %struct.vie* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VIE_OP_F_MOFFSET, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.vie*, %struct.vie** %3, align 8
  %18 = getelementptr inbounds %struct.vie, %struct.vie* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 8
  br label %28

28:                                               ; preds = %25, %22, %16
  %29 = phi i1 [ true, %22 ], [ true, %16 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %30, i8* %33)
  %35 = bitcast %union.anon* %7 to i64*
  store i64 0, i64* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %54, %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.vie*, %struct.vie** %3, align 8
  %42 = call i64 @vie_peek(%struct.vie* %41, i64* %6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %62

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i8
  %48 = bitcast %union.anon* %7 to [8 x i8]*
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %48, i64 0, i64 %50
  store i8 %47, i8* %51, align 1
  %52 = load %struct.vie*, %struct.vie** %3, align 8
  %53 = call i32 @vie_advance(%struct.vie* %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %36

57:                                               ; preds = %36
  %58 = bitcast %union.anon* %7 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.vie*, %struct.vie** %3, align 8
  %61 = getelementptr inbounds %struct.vie, %struct.vie* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %44, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vie_peek(%struct.vie*, i64*) #1

declare dso_local i32 @vie_advance(%struct.vie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
