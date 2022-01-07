; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Action_add.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Action_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action = type { i32, %struct.TYPE_2__, i64, %struct.symbol*, %struct.action* }
%struct.TYPE_2__ = type { %struct.rule*, %struct.state* }
%struct.rule = type { i32 }
%struct.state = type { i32 }
%struct.symbol = type { i32 }

@SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Action_add(%struct.action** %0, i32 %1, %struct.symbol* %2, i8* %3) #0 {
  %5 = alloca %struct.action**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.action*, align 8
  store %struct.action** %0, %struct.action*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.symbol* %2, %struct.symbol** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call %struct.action* (...) @Action_new()
  store %struct.action* %10, %struct.action** %9, align 8
  %11 = load %struct.action**, %struct.action*** %5, align 8
  %12 = load %struct.action*, %struct.action** %11, align 8
  %13 = load %struct.action*, %struct.action** %9, align 8
  %14 = getelementptr inbounds %struct.action, %struct.action* %13, i32 0, i32 4
  store %struct.action* %12, %struct.action** %14, align 8
  %15 = load %struct.action*, %struct.action** %9, align 8
  %16 = load %struct.action**, %struct.action*** %5, align 8
  store %struct.action* %15, %struct.action** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.action*, %struct.action** %9, align 8
  %19 = getelementptr inbounds %struct.action, %struct.action* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.symbol*, %struct.symbol** %7, align 8
  %21 = load %struct.action*, %struct.action** %9, align 8
  %22 = getelementptr inbounds %struct.action, %struct.action* %21, i32 0, i32 3
  store %struct.symbol* %20, %struct.symbol** %22, align 8
  %23 = load %struct.action*, %struct.action** %9, align 8
  %24 = getelementptr inbounds %struct.action, %struct.action* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SHIFT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to %struct.state*
  %31 = load %struct.action*, %struct.action** %9, align 8
  %32 = getelementptr inbounds %struct.action, %struct.action* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store %struct.state* %30, %struct.state** %33, align 8
  br label %40

34:                                               ; preds = %4
  %35 = load i8*, i8** %8, align 8
  %36 = bitcast i8* %35 to %struct.rule*
  %37 = load %struct.action*, %struct.action** %9, align 8
  %38 = getelementptr inbounds %struct.action, %struct.action* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.rule* %36, %struct.rule** %39, align 8
  br label %40

40:                                               ; preds = %34, %28
  ret void
}

declare dso_local %struct.action* @Action_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
