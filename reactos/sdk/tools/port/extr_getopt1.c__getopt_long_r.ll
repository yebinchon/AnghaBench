; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/port/extr_getopt1.c__getopt_long_r.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/port/extr_getopt1.c__getopt_long_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }
%struct._getopt_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_getopt_long_r(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, %struct._getopt_data* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct._getopt_data*, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.option* %3, %struct.option** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct._getopt_data* %5, %struct._getopt_data** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.option*, %struct.option** %10, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load %struct._getopt_data*, %struct._getopt_data** %12, align 8
  %19 = call i32 @_getopt_internal_r(i32 %13, i8** %14, i8* %15, %struct.option* %16, i32* %17, i32 0, %struct._getopt_data* %18, i32 0)
  ret i32 %19
}

declare dso_local i32 @_getopt_internal_r(i32, i8**, i8*, %struct.option*, i32*, i32, %struct._getopt_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
