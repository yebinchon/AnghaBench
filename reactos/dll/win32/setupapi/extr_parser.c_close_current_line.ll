; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_close_current_line.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_close_current_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { %struct.line* }
%struct.line = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parser*)* @close_current_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_current_line(%struct.parser* %0) #0 {
  %2 = alloca %struct.parser*, align 8
  %3 = alloca %struct.line*, align 8
  store %struct.parser* %0, %struct.parser** %2, align 8
  %4 = load %struct.parser*, %struct.parser** %2, align 8
  %5 = getelementptr inbounds %struct.parser, %struct.parser* %4, i32 0, i32 0
  %6 = load %struct.line*, %struct.line** %5, align 8
  store %struct.line* %6, %struct.line** %3, align 8
  %7 = load %struct.line*, %struct.line** %3, align 8
  %8 = icmp ne %struct.line* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.line*, %struct.line** %3, align 8
  %11 = getelementptr inbounds %struct.line, %struct.line* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.line*, %struct.line** %3, align 8
  %16 = getelementptr inbounds %struct.line, %struct.line* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.line*, %struct.line** %3, align 8
  %21 = getelementptr inbounds %struct.line, %struct.line* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.line*, %struct.line** %3, align 8
  %24 = getelementptr inbounds %struct.line, %struct.line* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %14, %9
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.parser*, %struct.parser** %2, align 8
  %28 = getelementptr inbounds %struct.parser, %struct.parser* %27, i32 0, i32 0
  store %struct.line* null, %struct.line** %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
