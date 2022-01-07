; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_newcclass.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_newcclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cstate = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [27 x i8] c"too many character classes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cstate*)* @newcclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newcclass(%struct.cstate* %0) #0 {
  %2 = alloca %struct.cstate*, align 8
  store %struct.cstate* %0, %struct.cstate** %2, align 8
  %3 = load %struct.cstate*, %struct.cstate** %2, align 8
  %4 = getelementptr inbounds %struct.cstate, %struct.cstate* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.cstate*, %struct.cstate** %2, align 8
  %7 = getelementptr inbounds %struct.cstate, %struct.cstate* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call i64 @nelem(%struct.TYPE_4__* %10)
  %12 = icmp sge i64 %5, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.cstate*, %struct.cstate** %2, align 8
  %15 = call i32 @die(%struct.cstate* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.cstate*, %struct.cstate** %2, align 8
  %18 = getelementptr inbounds %struct.cstate, %struct.cstate* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.cstate*, %struct.cstate** %2, align 8
  %23 = getelementptr inbounds %struct.cstate, %struct.cstate* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %24
  %27 = load %struct.cstate*, %struct.cstate** %2, align 8
  %28 = getelementptr inbounds %struct.cstate, %struct.cstate* %27, i32 0, i32 1
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.cstate*, %struct.cstate** %2, align 8
  %30 = getelementptr inbounds %struct.cstate, %struct.cstate* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cstate*, %struct.cstate** %2, align 8
  %35 = getelementptr inbounds %struct.cstate, %struct.cstate* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  ret void
}

declare dso_local i64 @nelem(%struct.TYPE_4__*) #1

declare dso_local i32 @die(%struct.cstate*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
