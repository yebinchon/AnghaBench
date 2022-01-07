; ModuleID = '/home/carl/AnghaBench/streem/src/extr_init.c_strm_init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_init.c_strm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @strm_number_init(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @strm_array_init(i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @strm_string_init(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @strm_latch_init(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @strm_iter_init(i32* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @strm_socket_init(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @strm_csv_init(i32* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @strm_kvs_init(i32* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @strm_time_init(i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @strm_math_init(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @strm_graph_init(i32* %23)
  ret void
}

declare dso_local i32 @strm_number_init(i32*) #1

declare dso_local i32 @strm_array_init(i32*) #1

declare dso_local i32 @strm_string_init(i32*) #1

declare dso_local i32 @strm_latch_init(i32*) #1

declare dso_local i32 @strm_iter_init(i32*) #1

declare dso_local i32 @strm_socket_init(i32*) #1

declare dso_local i32 @strm_csv_init(i32*) #1

declare dso_local i32 @strm_kvs_init(i32*) #1

declare dso_local i32 @strm_time_init(i32*) #1

declare dso_local i32 @strm_math_init(i32*) #1

declare dso_local i32 @strm_graph_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
