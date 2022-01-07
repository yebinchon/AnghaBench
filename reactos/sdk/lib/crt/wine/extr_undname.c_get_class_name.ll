; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_class_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_class_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parsed_symbol*)* @get_class_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_class_name(%struct.parsed_symbol* %0) #0 {
  %2 = alloca %struct.parsed_symbol*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %2, align 8
  %5 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %6 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %9 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %10 = call i64 @get_class(%struct.parsed_symbol* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @get_class_string(%struct.parsed_symbol* %13, i32 %14)
  store i8* %15, i8** %4, align 8
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.parsed_symbol*, %struct.parsed_symbol** %2, align 8
  %19 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i8*, i8** %4, align 8
  ret i8* %21
}

declare dso_local i64 @get_class(%struct.parsed_symbol*) #1

declare dso_local i8* @get_class_string(%struct.parsed_symbol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
