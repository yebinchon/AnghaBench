; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vioapic.c_vioapic_set_pinstate.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vioapic.c_vioapic_set_pinstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vioapic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REDIR_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"vioapic_set_pinstate: invalid pin number %d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ioapic pin%d: bad acnt %d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ioapic pin%d: asserted\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ioapic pin%d: deasserted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vioapic*, i32, i32)* @vioapic_set_pinstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vioapic_set_pinstate(%struct.vioapic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vioapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vioapic* %0, %struct.vioapic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @REDIR_ENTRIES, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ false, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %24 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %16
  %34 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %35 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %53

43:                                               ; preds = %16
  %44 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %45 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %43, %33
  %54 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %55 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @VIOAPIC_CTR2(%struct.vioapic* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %53
  store i32 0, i32* %9, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  store i32 1, i32* %9, align 4
  %76 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @VIOAPIC_CTR1(%struct.vioapic* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %91

79:                                               ; preds = %72, %69
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @VIOAPIC_CTR1(%struct.vioapic* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %90

89:                                               ; preds = %82, %79
  br label %90

90:                                               ; preds = %89, %85
  br label %91

91:                                               ; preds = %90, %75
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.vioapic*, %struct.vioapic** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @vioapic_send_intr(%struct.vioapic* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %91
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VIOAPIC_CTR2(%struct.vioapic*, i8*, i32, i32) #1

declare dso_local i32 @VIOAPIC_CTR1(%struct.vioapic*, i8*, i32) #1

declare dso_local i32 @vioapic_send_intr(%struct.vioapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
