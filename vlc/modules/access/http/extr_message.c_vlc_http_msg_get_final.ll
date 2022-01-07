; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_get_final.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_get_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_msg* @vlc_http_msg_get_final(%struct.vlc_http_msg* %0) #0 {
  %2 = alloca %struct.vlc_http_msg*, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %2, align 8
  br label %3

3:                                                ; preds = %13, %1
  %4 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %5 = icmp ne %struct.vlc_http_msg* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %8 = call i32 @vlc_http_msg_get_status(%struct.vlc_http_msg* %7)
  %9 = sdiv i32 %8, 100
  %10 = icmp eq i32 %9, 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i1 [ false, %3 ], [ %10, %6 ]
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  %15 = call %struct.vlc_http_msg* @vlc_http_msg_iterate(%struct.vlc_http_msg* %14)
  store %struct.vlc_http_msg* %15, %struct.vlc_http_msg** %2, align 8
  br label %3

16:                                               ; preds = %11
  %17 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  ret %struct.vlc_http_msg* %17
}

declare dso_local i32 @vlc_http_msg_get_status(%struct.vlc_http_msg*) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_msg_iterate(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
