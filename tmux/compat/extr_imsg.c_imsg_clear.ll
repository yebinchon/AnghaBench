; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_imsg.c_imsg_clear.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_imsg.c_imsg_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imsgbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imsg_clear(%struct.imsgbuf* %0) #0 {
  %2 = alloca %struct.imsgbuf*, align 8
  %3 = alloca i32, align 4
  store %struct.imsgbuf* %0, %struct.imsgbuf** %2, align 8
  %4 = load %struct.imsgbuf*, %struct.imsgbuf** %2, align 8
  %5 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %4, i32 0, i32 0
  %6 = call i32 @msgbuf_clear(i32* %5)
  br label %7

7:                                                ; preds = %11, %1
  %8 = load %struct.imsgbuf*, %struct.imsgbuf** %2, align 8
  %9 = call i32 @imsg_get_fd(%struct.imsgbuf* %8)
  store i32 %9, i32* %3, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @close(i32 %12)
  br label %7

14:                                               ; preds = %7
  ret void
}

declare dso_local i32 @msgbuf_clear(i32*) #1

declare dso_local i32 @imsg_get_fd(%struct.imsgbuf*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
