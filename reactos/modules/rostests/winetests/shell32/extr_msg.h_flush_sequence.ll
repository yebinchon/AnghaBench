; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_msg.h_flush_sequence.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_msg.h_flush_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_sequence = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msg_sequence**, i32)* @flush_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_sequence(%struct.msg_sequence** %0, i32 %1) #0 {
  %3 = alloca %struct.msg_sequence**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msg_sequence*, align 8
  store %struct.msg_sequence** %0, %struct.msg_sequence*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.msg_sequence**, %struct.msg_sequence*** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.msg_sequence*, %struct.msg_sequence** %6, i64 %8
  %10 = load %struct.msg_sequence*, %struct.msg_sequence** %9, align 8
  store %struct.msg_sequence* %10, %struct.msg_sequence** %5, align 8
  %11 = load %struct.msg_sequence*, %struct.msg_sequence** %5, align 8
  %12 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @heap_free(i32* %13)
  %15 = load %struct.msg_sequence*, %struct.msg_sequence** %5, align 8
  %16 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.msg_sequence*, %struct.msg_sequence** %5, align 8
  %18 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.msg_sequence*, %struct.msg_sequence** %5, align 8
  %20 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  ret void
}

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
