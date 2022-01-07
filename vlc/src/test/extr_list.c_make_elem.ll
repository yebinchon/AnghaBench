; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_list.c_make_elem.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_list.c_make_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_list = type { i32 }
%struct.test_elem = type { i32, %struct.vlc_list }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_list* (i32)* @make_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_list* @make_elem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test_elem*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.test_elem* @malloc(i32 8)
  store %struct.test_elem* %4, %struct.test_elem** %3, align 8
  %5 = load %struct.test_elem*, %struct.test_elem** %3, align 8
  %6 = icmp eq %struct.test_elem* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @abort() #3
  unreachable

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.test_elem*, %struct.test_elem** %3, align 8
  %12 = getelementptr inbounds %struct.test_elem, %struct.test_elem* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.test_elem*, %struct.test_elem** %3, align 8
  %14 = getelementptr inbounds %struct.test_elem, %struct.test_elem* %13, i32 0, i32 1
  ret %struct.vlc_list* %14
}

declare dso_local %struct.test_elem* @malloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
