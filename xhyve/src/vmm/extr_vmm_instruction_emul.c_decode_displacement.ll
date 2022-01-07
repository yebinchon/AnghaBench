; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_displacement.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_displacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i32 }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"decode_displacement: invalid disp_bytes %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vie*)* @decode_displacement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_displacement(%struct.vie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %union.anon, align 4
  store %struct.vie* %0, %struct.vie** %3, align 8
  %8 = load %struct.vie*, %struct.vie** %3, align 8
  %9 = getelementptr inbounds %struct.vie, %struct.vie* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @xhyve_abort(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %16, %13
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.vie*, %struct.vie** %3, align 8
  %29 = call i64 @vie_peek(%struct.vie* %28, i64* %6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %58

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i8
  %35 = bitcast %union.anon* %7 to [4 x i8]*
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %35, i64 0, i64 %37
  store i8 %34, i8* %38, align 1
  %39 = load %struct.vie*, %struct.vie** %3, align 8
  %40 = call i32 @vie_advance(%struct.vie* %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = bitcast %union.anon* %7 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vie*, %struct.vie** %3, align 8
  %51 = getelementptr inbounds %struct.vie, %struct.vie* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %57

52:                                               ; preds = %44
  %53 = bitcast %union.anon* %7 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vie*, %struct.vie** %3, align 8
  %56 = getelementptr inbounds %struct.vie, %struct.vie* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %47
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %31, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @xhyve_abort(i8*, i32) #1

declare dso_local i64 @vie_peek(%struct.vie*, i64*) #1

declare dso_local i32 @vie_advance(%struct.vie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
