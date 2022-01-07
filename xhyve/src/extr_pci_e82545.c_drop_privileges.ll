; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_drop_privileges.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_drop_privileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @drop_privileges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_privileges() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @geteuid()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i64 (...) @getegid()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 0, i32* %1, align 4
  br label %19

8:                                                ; preds = %4, %0
  %9 = call i32 (...) @getgid()
  %10 = call i32 @setgid(i32 %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 -1, i32* %1, align 4
  br label %19

13:                                               ; preds = %8
  %14 = call i32 (...) @getuid()
  %15 = call i32 @setuid(i32 %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %1, align 4
  br label %19

18:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %17, %12, %7
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @getegid(...) #1

declare dso_local i32 @setgid(i32) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @getuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
