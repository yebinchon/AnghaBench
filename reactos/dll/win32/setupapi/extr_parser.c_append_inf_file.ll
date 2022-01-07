; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_append_inf_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_append_inf_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_file = type { %struct.inf_file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inf_file*, %struct.inf_file*)* @append_inf_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_inf_file(%struct.inf_file* %0, %struct.inf_file* %1) #0 {
  %3 = alloca %struct.inf_file*, align 8
  %4 = alloca %struct.inf_file*, align 8
  %5 = alloca %struct.inf_file**, align 8
  %6 = alloca %struct.inf_file*, align 8
  store %struct.inf_file* %0, %struct.inf_file** %3, align 8
  store %struct.inf_file* %1, %struct.inf_file** %4, align 8
  %7 = load %struct.inf_file*, %struct.inf_file** %3, align 8
  %8 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %7, i32 0, i32 0
  store %struct.inf_file** %8, %struct.inf_file*** %5, align 8
  %9 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %10 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %9, i32 0, i32 0
  store %struct.inf_file* null, %struct.inf_file** %10, align 8
  br label %11

11:                                               ; preds = %19, %2
  %12 = load %struct.inf_file**, %struct.inf_file*** %5, align 8
  %13 = bitcast %struct.inf_file** %12 to i8**
  %14 = load %struct.inf_file*, %struct.inf_file** %4, align 8
  %15 = call %struct.inf_file* @InterlockedCompareExchangePointer(i8** %13, %struct.inf_file* %14, i32* null)
  store %struct.inf_file* %15, %struct.inf_file** %6, align 8
  %16 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %17 = icmp ne %struct.inf_file* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  ret void

19:                                               ; preds = %11
  %20 = load %struct.inf_file*, %struct.inf_file** %6, align 8
  %21 = getelementptr inbounds %struct.inf_file, %struct.inf_file* %20, i32 0, i32 0
  store %struct.inf_file** %21, %struct.inf_file*** %5, align 8
  br label %11
}

declare dso_local %struct.inf_file* @InterlockedCompareExchangePointer(i8**, %struct.inf_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
