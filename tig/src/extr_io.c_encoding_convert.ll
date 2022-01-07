; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_encoding_convert.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_encoding_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoding = type { i32 }
%struct.buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encoding_convert(%struct.encoding* %0, %struct.buffer* %1) #0 {
  %3 = alloca %struct.encoding*, align 8
  %4 = alloca %struct.buffer*, align 8
  store %struct.encoding* %0, %struct.encoding** %3, align 8
  store %struct.buffer* %1, %struct.buffer** %4, align 8
  %5 = load %struct.encoding*, %struct.encoding** %3, align 8
  %6 = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.buffer*, %struct.buffer** %4, align 8
  %9 = call i32 @encoding_convert_string(i32 %7, %struct.buffer* %8)
  ret i32 %9
}

declare dso_local i32 @encoding_convert_string(i32, %struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
